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
    public String SensorList(HttpServletRequest servletRequest, Model model) {
        List<Sensor> sensors = sensorService.allSensor();
        model.addAttribute("sensorList", sensors);
        servletRequest.setAttribute("sensorList", sensors);
        return "sensor";
    }

    @RequestMapping("/toAddSensor")
    public String toAddSensor() {
        return "addSensor";
    }

    @RequestMapping("/addSensor")
    public String addSensor(Sensor sensor) {
        sensorService.saveSensor(sensor);
        return "redirect:sensorList";
    }

    @RequestMapping("/editSensor")
    public String editSensor(HttpServletRequest request, Model model, int id) {
        model.addAttribute("sensor", sensorService.selectByPrimaryKey(id));
        request.setAttribute("sensor", sensorService.selectByPrimaryKey(id));
        return "editSensor";
    }

    @RequestMapping("/updateSensor")
    public String updateSensor(Sensor sensor, HttpServletRequest request, Model model) {
        if(sensorService.update(sensor)) {
            request.setAttribute("sensor", sensor);
            model.addAttribute("sensor", sensor);
            return "redirect:sensorList";
        }else{
            return "/error";
        }
    }


}
