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

    List<Sensor> allSensors();
}