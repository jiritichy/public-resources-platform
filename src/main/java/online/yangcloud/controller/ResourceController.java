package online.yangcloud.controller;

import online.yangcloud.entity.Resource;
import online.yangcloud.entity.ServiceIp;
import online.yangcloud.service.IpService;
import online.yangcloud.service.ResourceService;
import online.yangcloud.tools.IpAddrTool;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:50
 */

@RestController
@RequestMapping(value = "/resources")
public class ResourceController {

    private final ResourceService resourceServiceImpl;
    private final IpService ipServiceImpl;

    public ResourceController(ResourceService resourceServiceImpl, IpService ipServiceImpl) {
        this.resourceServiceImpl = resourceServiceImpl;
        this.ipServiceImpl = ipServiceImpl;
    }

    @PostMapping(value = "/addResource")
    public Resource addResource(Resource resource) {
        System.out.println(resource);
        return resourceServiceImpl.addResource(resource);
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
                                                HttpServletRequest request) {
        String ip = IpAddrTool.getAddr(request);
        ServiceIp ipAddr = ipServiceImpl.findByIp(ip);
        if (ipAddr != null) {
            ipAddr.setTime(new Date());
            ipServiceImpl.updateIp(ipAddr);
        } else {
            String address = IpAddrTool.reverseIpToAddress(ip);
            ServiceIp newIp = new ServiceIp(ip, address, new Date());
            ipServiceImpl.addIp(newIp);
        }
        return resourceServiceImpl.findAll(fatherId);
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
}
