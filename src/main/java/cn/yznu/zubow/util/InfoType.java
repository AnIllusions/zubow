package cn.yznu.zubow.util;

import com.alibaba.fastjson.JSONObject;
import lombok.Data;

import java.util.List;

/**
 * 用于返回数据JSON(方法描述)
 * AJAX 回执
 * @author 66495
 * @create 2018-08-20 13:41
 */

@Data
public class InfoType {
    //提示数据
    private String msg;
    //是否成功
    private Boolean flag;
    //返回数据
    private JSONObject jsonObject;
    //返回集合类型
    private List<Object> vals;



}
