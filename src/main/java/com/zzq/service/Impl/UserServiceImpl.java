package com.zzq.service.Impl;

import com.zzq.mapper.UserMapper;
import com.zzq.model.User;
import com.zzq.service.UserService;
import com.zzq.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public void save(User user) {

    }

    @Override
    public void createUser(User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        user.setPassword(MD5Utils.encrptyPassword(user.getPassword()));
        userMapper.insertSelective(user);
    }
}
