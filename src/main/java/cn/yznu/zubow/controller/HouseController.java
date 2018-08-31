package cn.yznu.zubow.controller;

import cn.yznu.zubow.entity.House;
import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.entity.vo.HouseQueryVo;
import cn.yznu.zubow.entity.vo.HouseResultDataVo;
import cn.yznu.zubow.entity.vo.HouseSearchLimitVo;
import cn.yznu.zubow.service.HouseService;
import cn.yznu.zubow.util.DateUtil;
import cn.yznu.zubow.util.IdDateTime;
import cn.yznu.zubow.util.PhotoListPath;
import cn.yznu.zubow.util.sortpage.PageQuery;
import cn.yznu.zubow.util.sortpage.ResultData;
import cn.yznu.zubow.util.sortpage.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.List;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-08 10:39
 */
@Controller
@RequestMapping("/house")
public class HouseController {
    @Autowired
    private HouseService houseService;

    @GetMapping("/houseUser")
    public String houseUser(){
        return "houseuser/houseuser";
    }

    @GetMapping("/houseDetail")
    public String houseDetail(){
        return "houseuser/housedetail";
    }

    @GetMapping("/houseList")
    public String houseList(){
        return "houseuser/houseList";
    }

    @GetMapping("/houseAdd")
    public String houseAdd(){
        return "houseuser/houseadd";
    }

    @PostMapping("/houseAdd")
    public String houseAdd(House house,HttpServletRequest request) throws IOException {
        house.setId(IdDateTime.IdTime(new Date()));
        house.setCreatedate(new Date());
        house.setStatus(1);
        house.setHouseuserName(((User)request.getSession().getAttribute("currentUser")).getName());

        houseService.addHouse(house);
        System.out.println(house.toString());

        return "houseuser/houseList";
    }
}
