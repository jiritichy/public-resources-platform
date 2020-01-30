package online.yangcloud.entity;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * @author .
 * created in 2020/1/27 14:31
 */

@Data
@ToString
public class ServiceIp {

    private int id;
    private String ip;
    private String address;
    private Date time;

    public ServiceIp() {}

    public ServiceIp(String ip, String address, Date time) {
        this.ip = ip;
        this.address = address;
        this.time = time;
    }

}
