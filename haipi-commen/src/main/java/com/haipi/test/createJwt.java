package com.haipi.test;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class createJwt {
    public static void main(String[] args) {

        Map<String,Object> map = new HashMap<>();
        map.put("role","admin");
        JwtBuilder builder = Jwts.builder()
                .setId("111")//设置id
                .setSubject("张三")//设置用户
                .setIssuedAt(new Date())//设置时间
                .signWith(SignatureAlgorithm.HS256,"aFGGs91")//设置签名和盐
                .setExpiration(new Date(new Date().getTime() + 60000))//设置过期时间
                .claim("role","admin");
        //生成
        String compact = builder.compact();

        System.out.println(compact);
    }
}
