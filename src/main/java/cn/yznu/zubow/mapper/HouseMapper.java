package cn.yznu.zubow.mapper;

import cn.yznu.zubow.entity.House;
import cn.yznu.zubow.entity.vo.HouseQueryVo;
import cn.yznu.zubow.entity.vo.HouseResultDataVo;
import cn.yznu.zubow.util.sortpage.PageQuery;

import java.util.List;


public interface HouseMapper {

    int deleteByPrimaryKey(String id);

    int insert(House record);

    int insertSelective(House record);

    HouseResultDataVo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<HouseResultDataVo> findHouse(HouseQueryVo houseQueryVo);

    Integer findHouseCount(HouseQueryVo houseQueryVo);
}