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
public class DeviceController {
    @Autowired
    private DeviceService deviceService;
}
