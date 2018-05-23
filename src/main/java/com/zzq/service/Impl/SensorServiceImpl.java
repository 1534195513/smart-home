package com.zzq.service.Impl;

import com.zzq.mapper.SensorMapper;
import com.zzq.model.Sensor;
import com.zzq.service.SensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SensorServiceImpl implements SensorService {
    @Autowired
    private SensorMapper sensorMapper;
    @Override
    public List<Sensor> allSensor() {
        List<Sensor> sensors =sensorMapper.allSensors();
        return sensors;
    }
    @Override
    public List<Sensor> sensorList(int id){
        List<Sensor> sensors = sensorMapper.selectByDeviceId(id);
        return sensors;
    }

    @Override
    public List<Sensor> findHistoryData(int id) {
        List<Sensor> sensors = sensorMapper.findHistoryData(id);
        return sensors;
    }

    @Override
    public boolean update(Sensor sensor) {

       return sensorMapper.update(sensor);
    }

    @Override
    public void saveSensor(Sensor sensor) {
        sensorMapper.insert(sensor);
    }

    @Override
    public Sensor selectByPrimaryKey(int id) {
        return sensorMapper.selectByPrimaryKey(id);
    }

}
