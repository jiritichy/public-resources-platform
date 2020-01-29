package online.yangcloud.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:49
 */

@Controller
public class UrlController {

    private Logger logger = LoggerFactory.getLogger(UrlController.class);

    @GetMapping(value = {"/", "/index"})
    public String toIndex() {
        return "redirect:/0";
    }

    @GetMapping(value = "/{fatherId}")
    public String index(@PathVariable("fatherId") int fatherId, Model model) {
        model.addAttribute("fatherId", fatherId);
        return "resource";
    }

    @GetMapping(value = "/admin")
    public String father() {
        return "redirect:/admin/0";
    }

    @GetMapping(value = "/admin/{fatherId}")
    public String edit(@PathVariable("fatherId") int fatherId, Model model) {
        model.addAttribute("fatherId", fatherId);
        return "admin";
    }

    @GetMapping(value = "/ip")
    public String ips() {
        return "ip";
    }
}
