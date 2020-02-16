package online.yangcloud.entity;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:23
 */

@Data
@ToString
public class Resource {

    private Integer id;
    private String link;
    private String name;
    private String type;
    private Integer father;
    private Integer children;
    private String comment;
    private Date ctime;
    private Integer count;
    private Integer sort;

}
