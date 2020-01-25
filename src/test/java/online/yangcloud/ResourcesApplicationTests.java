package online.yangcloud;

import online.yangcloud.mapper.ResourceMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class ResourcesApplicationTests {

    @Autowired
    private ResourceMapper resourceMapper;

    @Test
    void contextLoads() {
//        List<Resource> resources = resourceMapper.findAllByFather(null);
//        for (int i = 0; i < resources.size(); i++) {
//            if ("folder".equalsIgnoreCase(resources.get(i).getType())) {
//                resources.get(i).setType(GlobalConstant.FOLDER);
//            }
//            if ("no".equalsIgnoreCase(resources.get(i).getType())) {
//                resources.get(i).setType(GlobalConstant.FILE);
//            }
//            if ("yes".equalsIgnoreCase(resources.get(i).getType())) {
//                resources.get(i).setType(GlobalConstant.LINK);
//            }
//            resourceMapper.updateResource(resources.get(i));
//        }
    }

    @Test
    void demo1() {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String pwd = "123456";
        String newPwd = encoder.encode(pwd);
        boolean result = encoder.matches(pwd, newPwd);
        System.out.println(result);
    }

}
