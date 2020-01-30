package online.yangcloud;

import com.alibaba.fastjson.JSONObject;
import online.yangcloud.entity.ServiceIp;
import online.yangcloud.mapper.ResourceMapper;
import online.yangcloud.mapper.ServiceIpMapper;
import online.yangcloud.tools.IpAddrTool;
import org.apache.commons.lang.StringEscapeUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.List;

@SpringBootTest
class ResourcesApplicationTests {

    @Autowired
    private ResourceMapper resourceMapper;

    @Autowired
    private ServiceIpMapper serviceIpMapper;

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

    @Test
    void ip() {
        List<ServiceIp> ips = serviceIpMapper.findAll(0, 10);
        for (ServiceIp ip : ips) {
            String address = IpAddrTool.reverseIpToAddress(ip.getIp());
            ip.setAddress(address);
            serviceIpMapper.updateIp(ip);
        }
//        String address = getIpArea2("14.18.182.223");
//        System.out.println(address);
    }

    public String getIpArea2(String ip) {
        String appKey = "D8325986DD4A9396312AB30B4722840D";
        String path = "http://hn216.api.yesapi.cn/?s=Ext.IP.GetInfo&app_key=" + appKey + "&ip=" + ip;
        String inputline = "";
        StringBuilder info = new StringBuilder();
        try {
            URL url = new URL(path);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(10 * 1000);
            conn.setRequestMethod("GET");
            InputStreamReader inStream = new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8);
            BufferedReader buffer = new BufferedReader(inStream);
            while ((inputline = buffer.readLine()) != null) {
                info.append(inputline);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        JSONObject fatherData = JSONObject.parseObject(JSONObject.parseObject(info.toString()).getString("data"));
        JSONObject data = JSONObject.parseObject(JSONObject.parseObject(fatherData.toString()).getString("data"));
        String country = StringEscapeUtils.escapeSql(data.getString("country"));
        String region = StringEscapeUtils.escapeSql(data.getString("region"));
        String city = StringEscapeUtils.escapeSql(data.getString("city"));
        return country + "-" + region + "-" + city;
    }

}
