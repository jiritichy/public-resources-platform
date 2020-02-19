package online.yangcloud.controller;

import online.yangcloud.entity.Resource;
import online.yangcloud.service.ResourceService;
import online.yangcloud.tools.GlobalConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:50
 */

@RestController
@RequestMapping(value = "/resources")
public class ResourceController {

    private Logger logger = LoggerFactory.getLogger(ResourceController.class);

    private final ResourceService resourceServiceImpl;

    public ResourceController(ResourceService resourceServiceImpl) {
        this.resourceServiceImpl = resourceServiceImpl;
    }

    @PostMapping(value = "/addResource")
    public int addResource(Resource resource) {
        return resourceServiceImpl.addResource(resource) != null ? GlobalConstant.SUCCESS : GlobalConstant.ERROR;
    }

    @PostMapping(value = "/delResource/{id}/{type}")
    public int delResource(@PathVariable("id") int id, @PathVariable("type") String type) {
        return resourceServiceImpl.delResource(id, type);
    }

    @PostMapping(value = "/updateResource")
    public int updateResource(Resource resource) {
        return resourceServiceImpl.updateResource(resource);
    }

    @GetMapping(value = "/findByFatherId/{fatherId}")
    public Map<String, Object> findResourceList(@PathVariable("fatherId") int fatherId,
                                                @RequestParam(value = "name", defaultValue = "") String name) {
        logger.info("father id is {}, name is {}", fatherId, name);
        return resourceServiceImpl.findAll(fatherId, name);
    }

    @GetMapping(value = "/findById/{id}")
    public Resource findById(@PathVariable("id") int id) {
        return resourceServiceImpl.findById(id);
    }

    @GetMapping(value = "/findByChildren/{children}")
    public Resource findByChildren(@PathVariable("children") int children) {
        return resourceServiceImpl.findByChildren(children);
    }

    @GetMapping(value = "/getTreeStructure")
    public List<Map<String, Object>> getTreeStructure() {
        return resourceServiceImpl.getTreeStructure();
    }

    @PostMapping(value = "/rankResources/{father}/{oldIndex}/{newIndex}")
    public int rankResources(@PathVariable("father") int father, @PathVariable("oldIndex") int oldIndex,
                             @PathVariable("newIndex") int newIndex) {
        return resourceServiceImpl.rankResources(father, oldIndex, newIndex);
    }

    @PostMapping(value = "/updateCount/{id}")
    public int updateCount(@PathVariable("id") int id) {
        resourceServiceImpl.updateCount(id);
        return GlobalConstant.SUCCESS;
    }

}
