package online.yangcloud.service.impl;

import online.yangcloud.entity.Resource;
import online.yangcloud.mapper.ResourceMapper;
import online.yangcloud.service.ResourceService;
import online.yangcloud.tools.GlobalConstant;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.*;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:48
 */

@Service
public class ResourceServiceImpl implements ResourceService {

    private final ResourceMapper resourceMapper;

    public ResourceServiceImpl(ResourceMapper resourceMapper) {
        this.resourceMapper = resourceMapper;
    }

    @Override
    public Resource addResource(Resource resource) {
        resource.setCtime(new Date());
        resource.setUtime(new Date());
        resource.setChildren(resourceMapper.findMaxChildrenNumber() + 1);
        System.out.println(resource);
        int result = resourceMapper.addResource(resource);
        if (result > 0) {
            return resourceMapper.findByLastTime();
        }
        return null;
    }

    @Override
    public int delResource(int id, String type) {
        if (!GlobalConstant.FOLDER.equalsIgnoreCase(type)) {
            return resourceMapper.delResourceById(id);
        }
        delFile(resourceMapper.findResourceById(id));
        return GlobalConstant.SUCCESS;
    }

    private void delFile(Resource resource) {
        if (GlobalConstant.FOLDER.equalsIgnoreCase(resource.getType())) {
            if (!StringUtils.isEmpty(resource.getChildren())) {
                List<Resource> resources = resourceMapper.findAllByFather(resource.getChildren());
                for (Resource item : resources) {
                    delFile(item);
                }
            }
        }
        resourceMapper.delResourceById(resource.getId());
    }

    @Override
    public int updateResource(Resource resource) {
        resource.setUtime(new Date());
        return resourceMapper.updateResource(resource);
    }

    @Override
    public Map<String, Object> findAll(Integer fatherId) {
        Map<String, Object> map = new HashMap<>(2);
        if (fatherId == 0) {
            map.put("path", "当前定位：/");
            map.put("resource", resourceMapper.findAllByFather(fatherId));
        } else {
            Resource resource = resourceMapper.findByChildren(fatherId);
            String path = resource.getName() + "/";
            int father = resource.getFather();
            while (father != 0) {
                Resource newResource = resourceMapper.findByChildren(father);
                path = newResource.getName() + "/" + path;
                father = newResource.getFather();
            }
            map.put("path", "当前定位：/" + path);
            map.put("resource", resourceMapper.findAllByFather(resource.getChildren()));
        }
        return map;
    }

    @Override
    public Resource findById(int id) {
        return resourceMapper.findResourceById(id);
    }

    @Override
    public Resource findByChildren(int children) {
        return resourceMapper.findByChildren(children);
    }

    @Override
    public List<Map<String, Object>> getTreeStructure() {
        return getTreeChildren(0);
    }

    private List<Map<String, Object>> getTreeChildren(int father) {
        List<Map<String, Object>> resultMap = new ArrayList<>();
        if (father == 0) {
            Map<String, Object> resourcesMap = new HashMap<>();
            resourcesMap.put("id", father);
            resourcesMap.put("title", "/");
            resourcesMap.put("children", new ArrayList<>());
            resultMap.add(resourcesMap);
        }
        List<Resource> resources = resourceMapper.findAllByFather(father);
        for (Resource resource : resources) {
            if (GlobalConstant.FOLDER.equals(resource.getType())) {
                Map<String, Object> resourcesMap = new HashMap<>();
                resourcesMap.put("id", resource.getChildren());
                resourcesMap.put("title", resource.getName());
                if (!StringUtils.isEmpty(resource.getChildren()))
                    resourcesMap.put("children", getTreeChildren(resource.getChildren()));
                resultMap.add(resourcesMap);
            }
        }
        return resultMap;
    }
}
