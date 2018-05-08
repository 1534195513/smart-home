package com.zzq.service.Impl;

import com.zzq.mapper.SensorMapper;
import com.zzq.model.Sensor;
import com.zzq.service.SensorService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-dao.xml")
public class SensorServiceImplTest {

    @Resource
    private SensorMapper sensorMapper;


    @Test
    public void update(){
        Sensor sensor = new Sensor();
        sensor.setId(1006);
        sensorMapper.update(sensor);

    }

}