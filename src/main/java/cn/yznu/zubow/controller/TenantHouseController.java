package cn.yznu.zubow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-24 10:15
 */

@Controller
@RequestMapping("/tenant")
public class TenantHouseController {

    @GetMapping("/houseList")
    public String houseList(){
        return "tenant/houseList";
    }
}
