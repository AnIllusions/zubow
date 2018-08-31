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
        house.setHouseuserName(((User)request.getSession().getAttribute("currentUser")).getName());

        houseService.addHouse(house);
        System.out.println(house.toString());

        return "houseuser/houseList";
    }

    /**
     * 返回 房东的房源列别
     * q 条件查询  只写了地址条件查询
     * page 当前页数
     * limit 当前页条数
     * @return
     */
    @GetMapping("/houseUserList")
    @ResponseBody
    public ResultData houseUserList(String page, String limit, String q, HttpSession session){
        System.out.println(page+"    " +limit);
        try {
            PageQuery pageQuery = new PageQuery(Integer.parseInt(page),Integer.parseInt(limit));
            HouseQueryVo houseQueryVo = new HouseQueryVo();
            houseQueryVo.setPageQuery(pageQuery);
            // 查询条件
            HouseSearchLimitVo houseSearchLimitVo = new HouseSearchLimitVo();
            User user = (User)session.getAttribute("currentUser");
            houseSearchLimitVo.setUsername(user.getName());
            if (q!=null && !q.trim().equals("")){ //有查询条件
                //编码转换
                String decode = URLDecoder.decode(q,"UTF-8");
                houseSearchLimitVo.setAddress(decode);
            }
            houseQueryVo.setHouseSearchLimitVo(houseSearchLimitVo);
            List<HouseResultDataVo> houseResultDataVos = houseService.findHouse(houseQueryVo);
            // 总条数
            Integer count = houseService.findHouseCount(houseQueryVo);
            return new ResultUtil<HouseResultDataVo>().createSuccessPageResult(houseResultDataVos,count);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/house/{id}")
    public String findHouseById(@PathVariable("id") String id, Model model, HttpServletRequest request){
        try {
            if(id==null || id.trim().equals("")){
                return "/404";
            }
            HouseResultDataVo houseResultDataVo = houseService.findHouseById(id);
            if (houseResultDataVo == null){
                return "/404";
            }
            model.addAttribute("house",houseResultDataVo);
        }catch (Exception e){
            throw new RuntimeException("你在怎么着。。。。没网了。。。。");
        }

        return null;
    }
}
