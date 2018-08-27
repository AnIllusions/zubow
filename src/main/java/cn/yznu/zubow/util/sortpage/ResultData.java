package cn.yznu.zubow.util.sortpage;

import lombok.Data;

import java.util.List;

/**
 * 分页返回数据(方法描述)
 * @author 66495
 * @create 2018-08-26 15:57
 */
@Data
public class ResultData<T> {
    private Integer code;
    private String msg;
    private Integer count;
    private List<T> data;
    // 备用字段
    private T object;

    public ResultData() {
    }

    public ResultData(Integer code) {
        this.code = code;
    }

    public ResultData(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
    public ResultData(Integer code,String msg,T object){
        this.code=code;
        this.msg=msg;
        this.object=object;
    }
    public ResultData(Integer code,String msg,List<T> data){
        this.code=code;
        this.msg=msg;
        this.data = data;
    }
    public ResultData(Integer code,T object){
        this.code=code;
        this.object=object;
    }
    public ResultData(Integer code,List<T> data){
        this.code=code;
        this.data = data;
    }
    public ResultData(Integer code,Integer count,List<T> data){
        this.code=code;
        this.data = data;
        this.count=count;
    }

    public ResultData(Integer code,Integer count,String msg){
        this.code=code;
        this.msg = msg;
        this.count=count;
    }

}
