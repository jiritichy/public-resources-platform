package online.yangcloud;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.stereotype.Controller;

@Controller
@SpringBootApplication(exclude = {
        SecurityAutoConfiguration.class
})
@MapperScan(value = "online.yangcloud.mapper")
//@EnableScheduling
public class ResourcesApplication {

    public static void main(String[] args) {
        SpringApplication.run(ResourcesApplication.class, args);
    }

}
