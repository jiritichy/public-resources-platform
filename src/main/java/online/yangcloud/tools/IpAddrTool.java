package online.yangcloud.tools;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringEscapeUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/**
 * @author 小阳Sheep
 * created in 2020/1/27 14:24
 */

public class IpAddrTool {

    public static String getAddr(HttpServletRequest request) {
        String ipAddress = request.getHeader("x-forwarded-for");
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();
            if (ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")) {
                InetAddress inet = null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                ipAddress = Objects.requireNonNull(inet).getHostAddress();
            }
        }
        if (ipAddress != null && ipAddress.length() > 15) {
            if (ipAddress.indexOf(",") > 0) {
                ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
            }
        }
        return ipAddress;
    }

    public static String reverseIpToAddress(String ip) {
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
