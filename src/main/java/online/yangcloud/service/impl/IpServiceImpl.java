package online.yangcloud.service.impl;

import online.yangcloud.entity.ServiceIp;
import online.yangcloud.mapper.ServiceIpMapper;
import online.yangcloud.service.IpService;
import org.springframework.stereotype.Service;

/**
 * @author .
 * created in 2020/1/27 14:36
 */

@Service
public class IpServiceImpl implements IpService {

    private ServiceIpMapper serviceIpMapper;

    public IpServiceImpl(ServiceIpMapper serviceIpMapper) {
        this.serviceIpMapper = serviceIpMapper;
    }

    @Override
    public int addIp(ServiceIp serviceIp) {
        return serviceIpMapper.addIp(serviceIp);
    }

    @Override
    public int updateIp(ServiceIp serviceIp) {
        return serviceIpMapper.updateIp(serviceIp);
    }

    @Override
    public ServiceIp findByIp(String ip) {
        return serviceIpMapper.findByIp(ip);
    }

}
