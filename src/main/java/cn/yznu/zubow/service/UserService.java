package cn.yznu.zubow.service;

import cn.yznu.zubow.entity.User; /**
 * 用户操作(方法描述)
 *
 * @author 66495
 * @create 2018-08-20 13:32
 */

public interface UserService {

    int updateTel(User currentUser);

    int updatePass(User user);
}
