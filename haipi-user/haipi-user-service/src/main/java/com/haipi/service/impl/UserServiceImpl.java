package com.haipi.service.impl;

import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.mapper.UserMapper;
import com.haipi.pojo.User;
import com.haipi.service.UserService;
import com.haipi.utils.EncryptionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;


    public Boolean checkName(String name) {
        User record = new User();
        record.setUsername(name);
        int count = userMapper.selectCount(record);
        return count == 0;
    }

    public void register(User user) {
        //生成随机盐
        String salt = EncryptionUtils.generateSalt();
        user.setSalt(salt);
        //密码加密
        user.setPassword(EncryptionUtils.md5Hex(user.getPassword(),salt));
        //存入数据库
        user.setCreated(new Date());
        int count = userMapper.insert(user);

        if (count != 1) {
            throw new HaipiException(ExceptionEnum.REGISTER_FAILED);
        }
    }

    public User queryUserByNameAndPass(String username, String password) {
        User record = new User();
        record.setUsername(username);
        User user = userMapper.selectOne(record);
        //校验
        if (user == null) {
            throw new HaipiException(ExceptionEnum.WRONG_USERNAME_OR_PASSWORD);
        }
        //校验密码
        if ( !StringUtils.equals(user.getPassword(),EncryptionUtils.md5Hex(password,user.getSalt()))) {
            throw new HaipiException(ExceptionEnum.WRONG_USERNAME_OR_PASSWORD);
        }
        return user;
    }


}
