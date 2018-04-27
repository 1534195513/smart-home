package com.zzq.mapper;

import com.zzq.model.Device;

import java.util.List;


public interface DeviceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Device record);

    int insertSelective(Device record);

    Device selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Device record);

    int updateByPrimaryKey(Device record);

    List<Device> selectByUserId(int id);

    List<Device> allDevice();
}