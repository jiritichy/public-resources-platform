package online.yangcloud.controller;

import online.yangcloud.entity.PageInfo;
import online.yangcloud.entity.ServiceIp;
import online.yangcloud.service.IpService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author .
 * created in 2020/1/29 12:06
 */

@RestController
@RequestMapping(value = "/ip")
public class IpController {

    private IpService ipServiceImpl;

    public IpController(IpService ipServiceImpl) {
        this.ipServiceImpl = ipServiceImpl;
    }

    @GetMapping(value = "/findAllIps")
    public PageInfo<ServiceIp> findAllIps(PageInfo<ServiceIp> info) {
        return ipServiceImpl.findAll(info);
    }

}
