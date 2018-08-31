package cn.yznu.zubow.entity.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 返回数据 包含图片(方法描述)
 *
 * @author 66495
 * @create 2018-08-27 10:19
 */

@Data
public class HouseResultDataVo {
    private String id;
    private String createdate;
    /*-1已租0预定1空闲	状态*/
    private Integer status;
    private String city;
    private String address;
    /*户型 两室一厅*/
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
    /*类型(0整租 1合租)*/
    private Integer leasehold;
    /*外键     房东姓名*/
    private String houseuserName;

    //用于判断 是否有额外图片
//    private HouseImageVo img;
    // 图片集
    List<HouseImageVo> houseImageVos;



}
