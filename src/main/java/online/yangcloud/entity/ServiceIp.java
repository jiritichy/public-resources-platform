package online.yangcloud.entity;

import java.util.Date;

/**
 * @author .
 * created in 2020/1/27 14:31
 */

public class ServiceIp {

    private int id;
    private String ip;
    private String address;
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public ServiceIp() {}

    public ServiceIp(String ip, String address, Date time) {
        this.ip = ip;
        this.address = address;
        this.time = time;
    }

}
