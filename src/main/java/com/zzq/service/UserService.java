package com.zzq.service;

import com.zzq.model.User;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public interface UserService {

    void save(User user);
    void createUser(User user) throws UnsupportedEncodingException, NoSuchAlgorithmException;

}
