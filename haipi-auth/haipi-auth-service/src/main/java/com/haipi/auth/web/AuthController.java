package com.haipi.auth.web;

import com.haipi.auth.config.JwtProperties;
import com.haipi.auth.entity.UserInfo;
import com.haipi.auth.service.AuthService;
import com.haipi.auth.utils.JwtUtils;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.pojo.User;
import com.haipi.utils.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@RestController
@EnableConfigurationProperties(JwtProperties.class)
public class AuthController {

    @Autowired
    private AuthService authService;

    @Autowired
    private JwtProperties properties;

    @PostMapping("login")
    public ResponseEntity<Void> login(
            @RequestParam("username")String username,
            @RequestParam("password")String password,
            HttpServletResponse response,
            HttpServletRequest request) {
        //登录校验
        String token = authService.login(username, password);
        //返回cookie
        CookieUtils.setCookie(request,response,"AUTH_TOKEN",token,true);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @GetMapping("verify")
    public ResponseEntity<UserInfo> verify(@CookieValue("AUTH_TOKEN") String token,
                       HttpServletRequest request,HttpServletResponse response) {
        System.out.println("token:" + token);
        try {
            //解析token
            UserInfo userInfo = JwtUtils.getInfoFromToken(token,properties.getPublicKey());
            //刷新token
            String newToken = JwtUtils.generateToken(userInfo,properties.getPrivateKey(),properties.getExpire());
            //写回cookie
            CookieUtils.setCookie(request,response,"AUTH_TOKEN",newToken,true);
            //返回信息
            return ResponseEntity.ok(userInfo);
        } catch (Exception e) {
            //令牌失效或者无效
            throw new HaipiException(ExceptionEnum.TOKEN_ERROR);
        }
    }

}
