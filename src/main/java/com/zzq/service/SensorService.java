package com.zzq.service;

import com.zzq.model.Sensor;

import java.util.List;

public interface SensorService {

    List<Sensor> allSensor();

    List<Sensor> sensorList(int id);
}
