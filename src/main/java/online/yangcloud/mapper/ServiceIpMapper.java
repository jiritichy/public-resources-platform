package online.yangcloud.mapper;

import online.yangcloud.entity.ServiceIp;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author .
 * created in 2020/1/27 14:32
 */

@Repository
public interface ServiceIpMapper {

    int addIp(ServiceIp serviceIp);

    int updateIp(ServiceIp serviceIp);

    ServiceIp findByIp(@Param("ip") String ip);

}
