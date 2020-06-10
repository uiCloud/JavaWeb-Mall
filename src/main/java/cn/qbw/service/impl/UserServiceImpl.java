package cn.qbw.service.impl;

import cn.qbw.mapper.UserMapper;
import cn.qbw.pojo.User;
import cn.qbw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author qbw
 * @date 18-4-7下午9:09
 */
@Service
public class UserServiceImpl implements UserService {

    //注入
    @Autowired
    private UserMapper userMapper;

    /**
     * 用户登录的方法
     */
    @Override
    public User login(String username) {
        return userMapper.login(username);
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findById(Long id) {
        return null;
    }

    @Override
    public void create(User user) { }

    @Override
    public void delete(Long id) { }

    @Override
    public void update(User user) { }
}
