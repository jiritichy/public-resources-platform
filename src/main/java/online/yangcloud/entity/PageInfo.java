package online.yangcloud.entity;

import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * @author .
 * created in 2020/1/29 12:26
 */

@Data
@ToString
public class PageInfo<T> {

    private Integer page;
    private Integer limit;
    private Integer count;
    private List<T> data;

}
