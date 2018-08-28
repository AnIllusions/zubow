package cn.yznu.zubow.service.impl;

import cn.yznu.zubow.entity.House;
import cn.yznu.zubow.entity.HouseImage;
import cn.yznu.zubow.entity.vo.HouseQueryVo;
import cn.yznu.zubow.entity.vo.HouseResultDataVo;
import cn.yznu.zubow.mapper.HouseImageMapper;
import cn.yznu.zubow.mapper.HouseMapper;
import cn.yznu.zubow.mapper.UserMapper;
import cn.yznu.zubow.service.HouseService;
import cn.yznu.zubow.service.LoginService;
import cn.yznu.zubow.util.PhotoListPath;
import cn.yznu.zubow.util.sortpage.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-13 10:38
 */
@Service
public class HouseServiceImpl implements HouseService {
    @Autowired
    HouseMapper houseMapper;

    @Autowired
    HouseImageMapper houseImageMapper;

    @Transactional(rollbackFor=Exception.class)
    public int addHouse(House house) {
        List<String> photoPathLists = PhotoListPath.getPhotoPathLists();
        HouseImage houseImage;
        for (int i = 0; i < photoPathLists.size(); i++) {
            houseImage = new HouseImage(house.getId(),photoPathLists.get(i));
            houseImageMapper.insert(houseImage);
        }
        int k = houseMapper.insert(house);
        return k;
    }

    @Override
    public List<HouseResultDataVo> findHouse(HouseQueryVo houseQueryVo) {
        return  houseMapper.findHouse(houseQueryVo);
    }

    @Override
    public Integer findHouseCount(HouseQueryVo houseQueryVo) {
        return houseMapper.findHouseCount(houseQueryVo);
    }

}
