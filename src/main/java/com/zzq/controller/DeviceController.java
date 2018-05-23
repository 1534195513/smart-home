package com.zzq.controller;

import com.zzq.model.Device;
import com.zzq.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class DeviceController {
    @Autowired
    private DeviceService deviceService;

    @RequestMapping("/deviceList")
    public String deviceList(HttpServletRequest servletRequest, Model model) {
        List<Device> devices = deviceService.deviceList(1000);
        model.addAttribute("deviceList", devices);
        servletRequest.setAttribute("deviceList", devices);
        return "device";
    }

    @RequestMapping("/toAddDevice")
    public String toAddDev() {
        return "addDevice";
    }

    @RequestMapping("/addDevice")
    public String addDev(Device device) {
        deviceService.saveDevice(device);
        return "redirect:deviceList";
    }

    @RequestMapping("/editDevice")
    public String editDevice(HttpServletRequest request, Model model, int id) {
        model.addAttribute("device", deviceService.selectByDeviceId(id));
        request.setAttribute("device", deviceService.selectByDeviceId(id));
        return "editDevice";
    }

    @RequestMapping("/updateDevice")
    public String updateDevice(Device device) {
        deviceService.updateDevice(device);

        return "redirect:/deviceList";
    }
}
