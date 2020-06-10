package cn.qbw.service;

import cn.qbw.pojo.User;

/**
 * @author qbw
 * @date 18-4-7下午9:09
 */
public interface UserService extends BaseService<User> {
    /**
     * @param username
     * @return User
     */
    User login(String username);
    /**
     * @param user
     * @return
     */
    @Override
    void create(User user);
}
