package cn.yznu.zubow.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 房源   情况(方法描述)
 *
 * @author 66495
 * @create 2018-08-09 14:04
 */
@Setter
@Getter
@ToString
public class House {
    private String id;
    private Date createdate;
    /*-1已租0预定1空闲	状态*/
    private Integer status;
    private String address;
    /*户型*/
    private String housetype;
    private Double area;
    /*10,14	楼层  逗号隔开*/
    private String floor;
    /*装修风格      精装 简装     */
    private String decoration;
    /*房屋配置*/
    private String configuration;
    /*描述 房屋描述及周边*/
    private String remark;
    /*租金*/
    private Double rent;
    /*比如 押一付三*/
    private String renttype;
    /*租方式(0整租 1合租)*/
    private Integer leasehold;
    /*外键     房东姓名*/
    private String houseuserName;

}
