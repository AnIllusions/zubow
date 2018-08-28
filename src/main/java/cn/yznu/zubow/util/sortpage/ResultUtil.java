package cn.yznu.zubow.util.sortpage;

import cn.yznu.zubow.entity.vo.HouseResultDataVo;

import java.util.List;

/**
 * JSON 工具类(方法描述)
 * @author 66495
 * @create 2018-08-26 16:04
 */

public class ResultUtil<T> {
    public final static Integer SUCCESS_CODE=0;
    public final static Integer ERROR_CODE=1;

    public ResultData createSuccessPageResult(List<T> houseResultDataVos, int size) {
        return new ResultData(SUCCESS_CODE,size,houseResultDataVos);
    }
}
