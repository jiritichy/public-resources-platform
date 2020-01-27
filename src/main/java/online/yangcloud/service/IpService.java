package online.yangcloud.service;

import online.yangcloud.entity.ServiceIp;

/**
 * @author .
 * created in 2020/1/27 14:36
 */

public interface IpService {

    int addIp(ServiceIp serviceIp);

    int updateIp(ServiceIp serviceIp);

    ServiceIp findByIp(String ip);

}
