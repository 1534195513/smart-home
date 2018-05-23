package com.zzq.controller;

import com.zzq.model.User;
import com.zzq.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

@Controller
@RequestMapping("login")
public class loginController {
    @Autowired
    private UserService userService;

    @RequestMapping
    public String login(){
        return "login";
    }
    @RequestMapping("/check")
    @ResponseBody
    public String checkLogin(HttpServletRequest request){
//        String username = request.getParameter("username");
//        String pwd = request.getParameter("password");
//        UsernamePasswordToken token = new UsernamePasswordToken(username,pwd);
//        Subject subject = SecurityUtils.getSubject();
//        try{
//            subject.login(token);
//            SecurityUtils.getSubject().getSession().setTimeout(1800000);
//        }catch (Exception e){
//            return "login_fail";
//        }
        return "login_success";
    }
    @RequestMapping("/register")
    @ResponseBody
    public String register(@RequestBody User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        userService.createUser(user);
        return "success";
    }

}
