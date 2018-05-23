package com.zzq.controller;

import com.zzq.model.User;
import com.zzq.service.DeviceService;
import com.zzq.service.SensorService;
import com.zzq.util.AccessToken;
import com.zzq.util.AccessTokenUtil;
import com.zzq.util.ShellIOT;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {
    private AccessToken accessToken = AccessTokenUtil.getAccessToken();

    @RequestMapping("/userinfo")
    @ResponseBody
    public User getUser(HttpSession session) {
        User user = (User) session.getAttribute("userinfo");
        return user;
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/dev")
    @ResponseBody
    public String dev() {

        String dev = "https://www.bigiot.net/oauth/dev?access_token=" + accessToken.getAccess_token() + "&id=2656";
        String device = ShellIOT.getConnection(dev);
        return device;
    }

    @RequestMapping("/sen")
    @ResponseBody
    public String sen() {
        String sen = "https://www.bigiot.net/oauth/myinputs?access_token=" + accessToken.getAccess_token();
        String sensor = ShellIOT.getConnection(sen);
        return sensor;
    }
    @RequestMapping("/chatDev")
    public String chatDev(){
        return chatDev();
    }

    @RequestMapping("/historyData")
    @ResponseBody
    public String data(int id, HttpServletRequest servletRequest, Model model) {
        String history = "https://www.bigiot.net/oauth/historydata?access_token=" + accessToken.getAccess_token() + "&id=" + id;
        String historyData = ShellIOT.getConnection(history);
        servletRequest.setAttribute("data", historyData);
        model.addAttribute("data", historyData);
        return historyData;
    }
    @RequestMapping("/timer")
    public String timer(){
        return "timer";
    }
//    @RequestMapping("/timer")
//    @ResponseBody
//    public String timer(int id){
//        String timer = "https://www.bigiot.net/oauth/timer?access_token="+accessToken.getAccess_token()+"&id="+id;
//        String timerTarget = ShellIOT.getConnection(timer);
//        return timerTarget;
//    }
}
