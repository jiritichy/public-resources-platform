package online.yangcloud.mapper;

import online.yangcloud.entity.Resource;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:24
 */

@Repository
public interface ResourceMapper {

    int addResource(Resource resource);

    int delResourceById(@Param("id") int id);

    int updateResource(Resource resource);

    List<Resource> findAllByFather(@Param("father") Integer father);

    Resource findResourceById(@Param("id") int id);

    Resource findByChildren(@Param("children") int children);

    Resource findByLastTime();

    int findMaxChildrenNumber();

}
