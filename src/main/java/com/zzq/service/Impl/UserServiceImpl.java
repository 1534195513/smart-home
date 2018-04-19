package com.zzq.service.Impl;

import com.zzq.mapper.UserMapper;
import com.zzq.model.User;
import com.zzq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private  UserMapper userMapper;
    @Override
    public void save(User user) {
        userMapper.save(user);

    }

    @Override
    public boolean update(User user) {
        return   userMapper.update(user);

    }

    @Override
    public boolean delete(int id) {
        return userMapper.delete(id);
    }

    @Override
    public User findById(int id) {
        User user = userMapper.findById(id);
        return user;
    }

    @Override
    public List<User> findAll() {
        List<User> user = userMapper.findAll();
        return  user;
    }
}
