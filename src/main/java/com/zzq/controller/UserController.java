package com.zzq.controller;

import com.zzq.model.User;
import com.zzq.service.DeviceService;
import com.zzq.service.SensorService;
import com.zzq.util.AccessToken;
import com.zzq.util.AccessTokenUtil;
import com.zzq.util.HttpUtil;
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
import java.util.HashMap;
import java.util.Map;

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
    @RequestMapping("/timer1")
@ResponseBody
    public String timer(HttpServletRequest request){
        String week = request.getParameter("week");
        String hour = request.getParameter("hour");
        String min = request.getParameter("min");
        String repeats = request.getParameter("repeats");
        String enable = request.getParameter("enable");
        System.out.println(week);


        return null;
    }
    @RequestMapping("/editTimer")
    public String getTimer(int id,HttpServletRequest request,Model model){
        String timer = "https://www.bigiot.net/oauth/timer?access_token="+accessToken.getAccess_token()+"&id="+id;
        String timerTarget = ShellIOT.getConnection(timer);
        request.setAttribute("timer",timerTarget);
        model.addAttribute("timer",timerTarget);
        return "/timer";
    }
    @RequestMapping("/timer")
    @ResponseBody
    public String timer(int id){
        String timer = "https://www.bigiot.net/oauth/timer?access_token="+accessToken.getAccess_token()+"&id="+id;
        String timerTarget = ShellIOT.getConnection(timer);
        return timerTarget;
    }
    @RequestMapping("/say")
    public void say(HttpServletRequest request){
        String url = "https://www.bigiot.net/oauth/say";
        String message = request.getParameter("c");
        String id = request.getParameter("id");
        String token = accessToken.getAccess_token();
        Map map = new HashMap();
        map.put("access_token",token);
        map.put("id",id);
        map.put("c",message);
        HttpUtil.doPost(url,map);
        //Y9587S89937BPH5H
    }
    @RequestMapping("/airCondition")
    public void airCondition(HttpServletRequest request){
        String url = "https://www.bigiot.net/oauth/say";
        String message = request.getParameter("code");
        String id = request.getParameter("id");
        String token = accessToken.getAccess_token();
        Map map = new HashMap();
        map.put("access_token",token);
        map.put("id",id);
        map.put("c",message);
        HttpUtil.doPost(url,map);
    }
//    @RequestMapping("/timer")
//    @ResponseBody
//    public String timer(int id){
//        String timer = "https://www.bigiot.net/oauth/timer?access_token="+accessToken.getAccess_token()+"&id="+id;
//        String timerTarget = ShellIOT.getConnection(timer);
//        return timerTarget;
//{
//    access_token:"授权凭证,凭证内部已包含用户ID信息",
//            id:"要修改的定时器ID",
//        title:"定时器名称",
//        enable:0/1, //0关闭,1开启
//        repeats:0/1,//0不重复提醒,1重复提醒
//        content:"命令内容",
//        toid:"命令发送目标,形如:D12",
//        week:"星期设置，形如:0,1,2,3,4,5,6",
//        hour:"小时设置，形如:0,1,2,...,21,22,23",
//        min:"分钟设置，形如:0,5,10,15,...,45,50,55"
//}
}
