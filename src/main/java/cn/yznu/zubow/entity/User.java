package cn.yznu.zubow.entity;

import lombok.Data;

import java.util.Date;

/**
 * 用户房东表(方法描述)
 *
 * @author 66495
 * @create 2018-08-09 11:45
 */
@Data
public class User {
    private String id;
    private Date createdate;
    /*0，1	状态   未知*/
    private int status;
    /*用户账户s*/
    private double money;
    /* 0 房东  1租客*/
    private int type;
    /*身份证 */
    private String identity;
    /**/
    private String name;
    /**/
    private String tel;
    /**/
    private String password;
    /**/
    private String sex;


}
