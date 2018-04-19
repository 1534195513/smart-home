package com.zzq.controller;

import com.zzq.model.User;
import com.zzq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("/a")
    public String getA(){
        return "a";
    }

    @RequestMapping("/toAddUser")
    public String toAddUser(){
        return "/addUser";
    }
    @RequestMapping("/addUser")
    public String addUser(User user, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        userService.createUser(user);
        return "redirect:/user/getAllUser";
    }
    /**
     * 删除用户
     * @param id
     * @param request
     * @param response
     */
}
