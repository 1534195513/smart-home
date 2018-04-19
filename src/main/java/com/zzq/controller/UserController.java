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

   @RequestMapping("getAllUser")

    public String getAllUser(HttpServletRequest servletRequest, Model model){
       List<User> users = userService.findAll();
       model.addAttribute("userList",users);
       servletRequest.setAttribute("userList",users);
       return "/allUser";
   }
    @RequestMapping("/toAddUser")
    public String toAddUser(){
        return "/addUser";
    }
    @RequestMapping("/addUser")
    public String addUser(User user,Model model){
        userService.save(user);
        return "redirect:/user/getAllUser";
    }
    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpServletRequest request,Model model){
        if(userService.update(user)){
            user = userService.findById(user.getId());
            request.setAttribute("user", user);
            model.addAttribute("user", user);
            return "redirect:/user/getAllUser";
        }else{
            return "/error";
        }
    }
    /**
     * 根据id查询单个用户
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/getUser")
    public String getUser(int id,HttpServletRequest request,Model model){
        request.setAttribute("user", userService.findById(id));
        model.addAttribute("user", userService.findById(id));
        return "/editUser";
    }
    /**
     * 删除用户
     * @param id
     * @param request
     * @param response
     */
    @RequestMapping("/delUser")
    public void delUser(int id,HttpServletRequest request,HttpServletResponse response){
        String result = "{\"result\":\"error\"}";
        if(userService.delete(id)){
            result = "{\"result\":\"success\"}";
        }
        response.setContentType("application/json");
        try {
            PrintWriter out = response.getWriter();
            out.write(result);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
