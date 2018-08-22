package cn.yznu.zubow.mapper;

import cn.yznu.zubow.entity.House;


public interface HouseMapper {

    int deleteByPrimaryKey(String id);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);
}