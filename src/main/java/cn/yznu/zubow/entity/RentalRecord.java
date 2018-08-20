package cn.yznu.zubow.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 租房合同表(方法描述)
 *
 * @author 66495
 * @create 2018-08-09 14:53
 */
@Setter
@Getter
@ToString
public class RentalRecord {
    private String id;
    /*租房日期*/
    private Date createdate;
    private int status;
    private String house_id;
    private String user_id;
    /*出租月份 整数*/
    private int rentMouth;
    /*合同图片*/
    private String contractimage;
    /*承诺书*/
    private String promise;
}
