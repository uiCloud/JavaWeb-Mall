package cn.qbw.controller;

import cn.qbw.pojo.User;
import cn.qbw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 用户的控制层
 *
 * @author qbw
 * @date 18-4-7下午9:00
 */
@Controller
@RequestMapping("/user")
public class UserController {

    //注入service
    @Autowired
    private UserService userService;

    /**
     * 用户注册
     */
    @RequestMapping(value = "/create")
    public String register(User user, Model model) {
        try {
            userService.create(user);
            model.addAttribute("message", "注册成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "page/info";
    }

    /**
     * 用户登录
     */
    @RequestMapping(value = "/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        User user = userService.login(username);
        if (user != null) {
            if (user.getPassword().equals(password)) {
                //登录成功
                return "page/page";
            } else {
                model.addAttribute("message", "输入密码有误，登录失败");
                return "page/loginInfo";
            }
        } else {
            model.addAttribute("message", "该用户名不存在");
            return "page/loginInfo";
        }
    }

    /**
     * 回到登录页
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "index";
    }

    /**
     * 回到注册页
     */
    @RequestMapping(value = "/register")
    public String register() {
        return "reg";
    }

}
