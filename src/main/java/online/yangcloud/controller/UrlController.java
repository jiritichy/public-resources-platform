package online.yangcloud.controller;

import online.yangcloud.entity.ServiceIp;
import online.yangcloud.service.IpService;
import online.yangcloud.tools.IpAddrTool;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:49
 */

@Controller
public class UrlController {

    private Logger logger = LoggerFactory.getLogger(UrlController.class);

    private final IpService ipServiceImpl;

    public UrlController(IpService ipServiceImpl) {
        this.ipServiceImpl = ipServiceImpl;
    }

    @GetMapping(value = {"/", "/index"})
    public String toIndex(HttpServletRequest request) {
        String ip = IpAddrTool.getAddr(request);
        String address = IpAddrTool.reverseIpToAddress(ip);
        ServiceIp newIp = new ServiceIp(ip, address, new Date());
        ipServiceImpl.addIp(newIp);
        return "redirect:/0";
    }

    @GetMapping(value = "/{fatherId}")
    public String index(@PathVariable("fatherId") int fatherId, Model model) {
        model.addAttribute("fatherId", fatherId);
        return "resource";
    }

    @GetMapping(value = "/admin")
    public String father() {
        return "redirect:/admin/resources";
    }

    @GetMapping(value = "/admin/resources")
    public String admin() {
        return "admin";
    }

    @GetMapping(value = "/admin/ip")
    public String ip() {
        return "ip";
    }

}
