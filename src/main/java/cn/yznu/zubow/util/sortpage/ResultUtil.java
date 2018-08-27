package cn.yznu.zubow.util.sortpage;

import java.util.List;

/**
 * JSON 工具类(方法描述)
 * @author 66495
 * @create 2018-08-26 16:04
 */

public class ResultUtil<T> {
    public final static Integer SUCCESS_CODE=0;
    public final static Integer ERROR_CODE=1;

    public ResultData createSuccessResult(){
        return new ResultData(SUCCESS_CODE);
    }
    public ResultData createErrorResult(){
        return new ResultData(ERROR_CODE);
    }



    public ResultData createErrorResult(String msg){
        return new ResultData(ERROR_CODE,msg);
    }
    public ResultData createSuccessResult(String msg){
        return new ResultData(SUCCESS_CODE,msg);
    }



    public ResultData createSuccessResult(String msg,T object){
        return new ResultData(SUCCESS_CODE,msg,object);
    }


    public ResultData createSuccessResult(String msg, List<T> dataList){
        return new ResultData(SUCCESS_CODE,msg,dataList);
    }


    public ResultData createSuccessResult(T object){
        return new ResultData(SUCCESS_CODE,object);
    }


    public ResultData createSuccessResult(List<T> dataList){
        return new ResultData(SUCCESS_CODE,dataList);
    }


    public ResultData createSuccessResult(Integer count,String msg){
        return new ResultData(SUCCESS_CODE,count,msg);
    }


    public ResultData createSuccessPageResult(List<T> data,Integer count){
        return new ResultData(SUCCESS_CODE,count,data);
    }

}
