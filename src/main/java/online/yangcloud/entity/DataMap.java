package online.yangcloud.entity;

import lombok.Data;
import lombok.ToString;

/**
 * @author 小阳Sheep.
 * created in 2019/12/26 9:52
 */

@Data
@ToString
public class DataMap<T> {

    private Integer code;
    private String msg;
    private T data;
}
