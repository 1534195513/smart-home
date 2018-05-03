package com.zzq.controller;

import com.zzq.model.Device;
import com.zzq.model.Sensor;
import com.zzq.model.User;
import com.zzq.service.DeviceService;
import com.zzq.service.SensorService;
import com.zzq.service.UserService;
import com.zzq.util.SocketServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private SensorService sensorService;

    @RequestMapping("/userinfo")
    @ResponseBody
    public User getUser(HttpSession session){
        User user = (User)session.getAttribute("userinfo");
        return user;
    }
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/deviceList")
    public String deviceList(HttpServletRequest servletRequest,Model model){
        List<Device> devices =deviceService.deviceList(1000);
        model.addAttribute("deviceList",devices);
        servletRequest.setAttribute("deviceList",devices);
        return "device";
    }

    @RequestMapping("/editDevice")
    public String editDevice(HttpServletRequest request,Model model,int id){
        model.addAttribute("device",deviceService.selectByDeviceId(id));
       request.setAttribute("device",deviceService.selectByDeviceId(id));
        return "editDevice";
    }

    @RequestMapping("/sensorList")
    public String SensorList(HttpServletRequest servletRequest,Model model){
        List<Sensor> sensors =sensorService.sensorList(3);
        model.addAttribute("sensorList",sensors);
        servletRequest.setAttribute("sensorList",sensors);
        return "sensor";
    }

    @RequestMapping("/toAddDevice")
    public String toAddDev(){
        return "addDevice";
    }

    @RequestMapping("/addDevice")
    public String addDev(Device device){
        deviceService.saveDevice(device);
        return "redirect:deviceList";
    }

    @RequestMapping("/toAddSensor")
    public String toAddSensor(){
        return "addSensor";
    }

    @RequestMapping("/addSensor")
    public String addSensor(Sensor sensor) {
        sensorService.saveSensor(sensor);
        return "redirect:sensorList";
    }
}
