package com.zzq.service.Impl;

import com.zzq.mapper.DeviceMapper;
import com.zzq.model.Device;
import com.zzq.model.User;
import com.zzq.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeviceServiceImpl implements DeviceService {

    @Autowired
    private DeviceMapper deviceMapper;

    @Override
    public List<Device> deviceList(int id) {
        List<Device> devices = deviceMapper.selectByUserId(id);
        return devices;
    }

    @Override
    public List<Device> allDevice() {
        List<Device> devices = deviceMapper.allDevice();
        return devices;
    }

    @Override
    public boolean updateDevice(Device device) {
        return deviceMapper.updateDevice(device);
    }

    @Override
    public Device selectByDeviceId(int id) {
        return deviceMapper.selectByDeviceId(id);
    }

    @Override
    public void saveDevice(Device device) {
        deviceMapper.insert(device);
    }


}