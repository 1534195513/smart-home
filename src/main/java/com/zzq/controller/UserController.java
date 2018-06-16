package com.zzq.controller;


import com.zzq.model.Datapoint;
import com.zzq.util.HttpUtil;
import com.zzq.util.TokenThread;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/dev")
    @ResponseBody
    public String dev() {
        String dev = "https://www.bigiot.net/oauth/dev?access_token=" + TokenThread.accessToken.getAccess_token() + "&id=2656";
        String device = HttpUtil.doGet(dev);
        return device;
    }

    @RequestMapping("/sen")
    @ResponseBody
    public String sen() {
        String sen = "https://www.bigiot.net/oauth/myinputs?access_token=" + TokenThread.accessToken.getAccess_token();
        String sensor = HttpUtil.doGet(sen);
        return sensor;
    }

    @RequestMapping("/chatDev")
    public String chatDev() {
        return null;
    }

    @RequestMapping("/historyData")
    @ResponseBody
    public String data(int id) {
        String history = "https://www.bigiot.net/oauth/historydata?access_token=" + TokenThread.accessToken.getAccess_token() + "&id=" + id;
        String historyData = HttpUtil.doGet(history);
        return historyData;
    }

    @RequestMapping("recentData")
    @ResponseBody
    public String recentData(int id) {
        String data = "https://www.bigiot.net/oauth/historydata?access_token=" + TokenThread.accessToken.getAccess_token() + "&id=" + id;
        String recentData = HttpUtil.doGet(data);
        JSONArray jsonArray = JSONArray.fromObject(recentData);
        JSONObject jsonObject = jsonArray.getJSONObject(1);
        String value = jsonObject.toString();
        return value;
    }

    @RequestMapping("/timer")
    @ResponseBody
    public String timer(int id) {
        String timer = "https://www.bigiot.net/oauth/timer?access_token=" + TokenThread.accessToken.getAccess_token() + "&id=" + id;
        String timerTarget = HttpUtil.doGet(timer);
        return timerTarget;
    }

    @RequestMapping("/say")
    @ResponseBody
    public String say(HttpServletRequest request) {
        String message = request.getParameter("c");
        String id = request.getParameter("id");
        String token = TokenThread.accessToken.getAccess_token();
        Map map = new HashMap();
        map.put("access_token", token);
        map.put("id", id);
        map.put("c", message);
        String result = HttpUtil.doPost("https://www.bigiot.net/oauth/say", map);
        System.out.println(map.get("c"));
        Datapoint datapoint = new Datapoint();
        return result;
        //Y9587S89937BPH5H
    }
}
