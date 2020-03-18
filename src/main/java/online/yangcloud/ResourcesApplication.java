package online.yangcloud;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.stereotype.Controller;

@Controller
@SpringBootApplication(exclude = {
        SecurityAutoConfiguration.class
})
@MapperScan(value = "online.yangcloud.mapper")
//@EnableScheduling
public class ResourcesApplication implements WebServerFactoryCustomizer<ConfigurableWebServerFactory> {

    public static void main(String[] args) {
        SpringApplication.run(ResourcesApplication.class, args);
        System.out.println(System.getProperty("os.name"));
    }

    @Value("${setting.windows.port}")
    private Integer windowsPort;

    @Value("${setting.linux.port}")
    private Integer linuxPort;

    @Override
    public void customize(ConfigurableWebServerFactory factory) {
        String systemName = System.getProperty("os.name").toLowerCase();
        if (systemName.equals("windows 10")) {
            factory.setPort(80);
        } else {
            factory.setPort(8082);
        }
    }
}
