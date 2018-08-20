package cn.yznu.zubow.service.impl;

import cn.yznu.zubow.entity.User;
import cn.yznu.zubow.mapper.UserMapper;
import cn.yznu.zubow.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * (方法描述)
 *
 * @author 66495
 * @create 2018-08-20 13:33
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public int updateTel(User currentUser) {
       return userMapper.updateByPrimaryKeySelective(currentUser);
    }
}
