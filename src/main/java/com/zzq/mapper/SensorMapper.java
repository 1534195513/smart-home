package com.zzq.mapper;

import com.zzq.model.Sensor;

import java.util.List;

public interface SensorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sensor record);

    int insertSelective(Sensor record);

    Sensor selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sensor record);

    int updateByPrimaryKey(Sensor record);

    boolean update(Sensor sensor);

    List<Sensor> allSensors();

    List<Sensor> selectByDeviceId(int id);
}