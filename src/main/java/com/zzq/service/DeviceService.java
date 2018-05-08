package com.zzq.service;

import com.zzq.model.Device;

import java.util.List;

public interface DeviceService {

    List<Device> deviceList(int id);
    List<Device> allDevice();
    boolean updateDevice(Device device);
    Device selectByDeviceId(int id);
    void saveDevice(Device device);
}
