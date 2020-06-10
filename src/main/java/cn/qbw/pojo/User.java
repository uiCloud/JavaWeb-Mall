package cn.qbw.pojo;

import java.io.Serializable;

/**
 * 这是用户登录的JavaBean
 *
 * @author qbw
 * @date 18-4-7下午7:28
 */
public class User implements Serializable {

    //管理员id
    private Long id;
    //管理员登录名
    private String username;
    //管理员密码
    private String password;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
