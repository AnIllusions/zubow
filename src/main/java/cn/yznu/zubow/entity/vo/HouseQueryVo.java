package cn.yznu.zubow.entity.vo;

import cn.yznu.zubow.util.sortpage.PageQuery;
import lombok.Data;

/**
 * 房源 数据类(方法描述)
 *
 * @author 66495
 * @create 2018-08-27 9:58
 */

@Data
public class HouseQueryVo {
    private PageQuery pageQuery;
    private HouseSearchLimitVo houseSearchLimitVo;
}
