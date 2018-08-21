package cn.yznu.zubow.controller;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.service.UserService;
import cn.yznu.zubow.util.InfoType;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-17 15:28
 */
@Controller
@RequestMapping("/user")
public class HouseUserController {

    @Autowired
    UserService userService;

    @GetMapping("/updateTel")
    @ResponseBody
    public InfoType updateTel(HttpServletRequest request) {
        InfoType infoType = new InfoType();
        HttpSession session = request.getSession();
        //获取session用户
        User currentUser = (User)request.getSession().getAttribute("currentUser");
        String oldTel = currentUser.getTel();
        currentUser.setTel(request.getParameter("tel"));
        int k = userService.updateTel(currentUser);
        if (k==0){
            infoType.setFlag(false);
            infoType.setMsg(oldTel);
            return infoType;
        }else {
            //移除旧的用户
            session.removeAttribute("currentUser");
            session.setAttribute("currentUser", currentUser);
            infoType.setFlag(true);
            infoType.setMsg(currentUser.getTel());
            return infoType;
        }
    }

    @GetMapping("/updatePass")
    public String updatePass(){
        return "houseuser/updatePass";
    }

    @PostMapping("/updatePass")
    @ResponseBody
    public InfoType updatePassword(User user,HttpServletRequest request){
        User oldUser = (User) request.getSession().getAttribute("currentUser");

        System.out.println(oldUser);
        int k = userService.updatePass(oldUser);
        InfoType infoType = new InfoType();
        //修改失败
        if (k==0){
            infoType.setFlag(false);
            infoType.setMsg("修改失败");
            return infoType;
        }else {
            infoType.setFlag(true);
            infoType.setMsg("修改成功");
            request.getSession().removeAttribute("currentUser");
            return infoType;
        }
    }

}
