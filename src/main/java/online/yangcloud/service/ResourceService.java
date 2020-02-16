package online.yangcloud.service;

import online.yangcloud.entity.Resource;

import java.util.List;
import java.util.Map;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:48
 */

public interface ResourceService {

    Resource addResource(Resource resource);

    int delResource(int id, String type);

    int updateResource(Resource resource);

    Map<String, Object> findAll(Integer id);

    Resource findById(int id);

    Resource findByChildren(int children);

    List<Map<String, Object>> getTreeStructure();

    int rankResources(int father, int oldIndex, int newIndex);

    void updateCount(int id);

}
