package cn.yznu.zubow.config.Interceptor;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.util.InfoType;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Map;

/**
 * 拦截非登陆请求(方法描述)
 *
 * @author 66495
 * @create 2018-08-22 10:09
 */

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        //如果session中没有用户信息 则不放行 跳转到登陆页面
        User user = (User) session.getAttribute("currentUser");
        if (user == null) {
            //如果是ajax请求响应头会有x-requested-with
            if (httpServletRequest.getHeader("x-requested-with") != null && httpServletRequest.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
                PrintWriter out = httpServletResponse.getWriter();
                InfoType errorResult = new InfoType();
                errorResult.setFlag(false);
                errorResult.setMsg("No Login");
                JSONObject json = new JSONObject((Map<String, Object>) errorResult);
                System.out.println(json.toString());
                out.print(json.toString());//session失效
                out.flush();
                return false;
            }
            httpServletResponse.sendRedirect("/user/login");
            return false;
        } else {
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
