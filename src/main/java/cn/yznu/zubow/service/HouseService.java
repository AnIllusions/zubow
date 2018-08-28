package cn.yznu.zubow.service;

import cn.yznu.zubow.entity.House;
import cn.yznu.zubow.entity.vo.HouseQueryVo;
import cn.yznu.zubow.entity.vo.HouseResultDataVo;
import cn.yznu.zubow.util.sortpage.PageQuery;

import java.util.List;

/**
 * (接口描述)
 *  房源接口
 * @author 66495
 * @create 2018-08-16 10:33
 */


public interface HouseService {

    /**
     * 用于 保存房东房源   保存图片
     * @param house
     * @return
     */
    int addHouse(House house);

    List<HouseResultDataVo> findHouse(HouseQueryVo houseQueryVo);

    Integer findHouseCount(HouseQueryVo houseQueryVo);


}
