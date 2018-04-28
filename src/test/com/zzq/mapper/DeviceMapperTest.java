package com.zzq.mapper;

import com.zzq.model.Device;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-dao.xml")
public class DeviceMapperTest {

    @Resource
    private DeviceMapper deviceMapper;

    @Test
    public void selectByUserId() {

        List<Device> devices = deviceMapper.selectByUserId(1000);

       for(Device device:devices){
           System.out.println(device.toString());
       }

    }
}