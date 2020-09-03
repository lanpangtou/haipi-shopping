package com.haipi.service;

import com.haipi.pojo.User;

public interface UserService {


    public void register(User user);

    public Boolean checkName(String name);

    public User queryUserByNameAndPass(String username, String password);
}
