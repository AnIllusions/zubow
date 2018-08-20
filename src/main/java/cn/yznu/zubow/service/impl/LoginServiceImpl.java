package cn.yznu.zubow.service.impl;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.mapper.UserMapper;
import cn.yznu.zubow.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-13 10:38
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    UserMapper userMapper;

    @Override
    public int register(User user) {
        return userMapper.insertSelective(user);
    }

    @Override
    public User login(String name) {
        return userMapper.selectByName(name);
    }
}
