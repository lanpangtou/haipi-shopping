package com.haipi.auth.service.impl;

import com.haipi.auth.client.UserClient;
import com.haipi.auth.config.JwtProperties;
import com.haipi.auth.entity.UserInfo;
import com.haipi.auth.service.AuthService;
import com.haipi.auth.utils.JwtUtils;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.pojo.User;
import com.haipi.utils.CookieUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Service
@EnableConfigurationProperties({JwtProperties.class})
public class AuthServiceImpl implements AuthService {

    @Autowired
    private UserClient userClient;

    @Autowired
    private JwtProperties properties;

    @Override
    public String login(String username, String password) {
        try {
            //校验用户名和密码
            User user = userClient.queryUserByNameAndPass(username, password);
            if (user == null) {
                throw new HaipiException(ExceptionEnum.WRONG_USERNAME_OR_PASSWORD);
            }
            //生成token
            String token = JwtUtils.generateToken(new UserInfo(user.getId(),username),properties.getPrivateKey(),properties.getExpire());
            return token;
        }catch (Exception e) {
            log.error("生成token失败,用户名称{}",username,e);
            throw new HaipiException(ExceptionEnum.CREATED_TOKEN_ERROR);
        }
    }
}
