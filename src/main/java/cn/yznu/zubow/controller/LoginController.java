package cn.yznu.zubow.controller;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.mapper.UserMapper;
import cn.yznu.zubow.service.LoginService;
import cn.yznu.zubow.util.IdDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-08 10:39
 */
@Controller
@RequestMapping("/user")
public class LoginController {
    @Autowired
    UserMapper userMapper;

    @Autowired
    private LoginService loginService;

    /*重载 运行*/
    @PostMapping("/login")
    public String index(User user,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("currentUser") != null){
            return "index";
        }else {
            User user1 = loginService.login(user.getName());
            if (user1!=null){
                if (user1.getPassword().equals(user.getPassword())){
                    session.setAttribute("currentUser",user1);
                    return "index";
                }
                else {
                    return "login";
                }
            }else {
                return "login";
            }
        }
    }

    @GetMapping("/login")
    public String index(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("currentUser") != null){
            return "index";
        }else {
            return "login";
        }
    }
    @RequestMapping("/loginout")
    public String loginout(HttpServletRequest request) {
        request.getSession().removeAttribute("currentUser");
        return "index";
    }

    @RequestMapping("/goindex")
    public String goindex(){
        return "index";
    }

    @RequestMapping("/showUser")
    @ResponseBody
    public String showUser(){
        return "jjjjj";
    }

    @RequestMapping("/register")
    public String register(User user,HttpServletRequest request){
        HttpSession session = request.getSession();
        if (session.getAttribute("currentUser") != null){
            return "index";
        }else {
            Date date = new Date();
            user.setId(IdDateTime.IdTime(date));
            user.setCreatedate(date);
            session.setAttribute("currentUser", user);
            System.out.println(user.toString());
            int k = loginService.register(user);
            if (k == 0) {
                return "login";
            }
            return "index";
        }
    }
}
