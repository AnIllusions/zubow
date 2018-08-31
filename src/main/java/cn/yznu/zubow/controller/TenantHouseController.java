package cn.yznu.zubow.controller;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.entity.vo.HouseQueryVo;
import cn.yznu.zubow.entity.vo.HouseResultDataVo;
import cn.yznu.zubow.entity.vo.HouseSearchLimitVo;
import cn.yznu.zubow.service.HouseService;
import cn.yznu.zubow.util.sortpage.PageQuery;
import cn.yznu.zubow.util.sortpage.ResultData;
import cn.yznu.zubow.util.sortpage.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.List;

/**
 * (方法描述)
 * @author 66495
 * @create 2018-08-24 10:15
 */

@Controller
@RequestMapping("/tenant")
public class TenantHouseController {
    @Autowired
    private HouseService houseService;


    @GetMapping("/houseList")
    public String houseList(){
        return "tenant/houseList";
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

        return "/tenant/housedetail";
    }
}
