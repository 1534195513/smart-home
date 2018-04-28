package com.zzq.service.Impl;

import com.zzq.mapper.DeviceMapper;
import com.zzq.model.Device;
import com.zzq.service.DeviceService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-dao.xml")
public class DeviceServiceImplTest {

    @Resource
    private DeviceService service ;
    @Test
    public void deviceList() {

    }
}