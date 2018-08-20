package cn.yznu.zubow.service;

import cn.yznu.zubow.entity.User; /**
 * login service(接口描述)
 *
 * @author 66495
 * @create 2018-08-13 10:37
 */


public interface LoginService {

    int register(User user);

    User login(String name);
}
