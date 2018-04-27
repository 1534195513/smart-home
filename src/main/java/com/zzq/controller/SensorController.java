package com.zzq.controller;

import com.zzq.model.Sensor;
import com.zzq.service.SensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class SensorController {
    @Autowired
    private SensorService sensorService;

    @RequestMapping("/sensorList")
    public String sensorList(Model model, HttpServletRequest servletRequest){
        List<Sensor> sensors =sensorService.allSensor();
        model.addAttribute("sensorList",sensors);
        servletRequest.setAttribute("sensorList",sensors);
        return "sensor";
    }

    @RequestMapping("/addSensor")
    public String addSensor(){
        return "addSensor";
    }

    @RequestMapping("/editSensor")
    public String editSensor(){
        return "editSensor";
    }
}
