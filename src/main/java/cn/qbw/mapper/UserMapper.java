package cn.qbw.mapper;

import cn.qbw.pojo.User;

/**
 * @author qbw
 * @date 18-4-7下午9:10
 */
public interface UserMapper {

    User login(String username);

    void create(User user);
}
