package com.haipi.test;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;

import java.text.SimpleDateFormat;

public class parseJwt {
    public static void main(String[] args) {

        Claims claims = Jwts.parser()
                .setSigningKey("aFGGs91")//盐
                //令牌
                .parseClaimsJws("eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxMTEiLCJzdWIiOiLlvKDkuIkiLCJpYXQiOjE1OTYxNTgzMDksImV4cCI6MTU5NjE1ODM2OSwicm9sZSI6ImFkbWluIn0.Llx-72qGMu4Lxjyfcun3QElrqjChKG6-gzjUXV8VfZk")
                .getBody();

        System.out.println("用户id：" +claims.getId());
        System.out.println("用户名：" +claims.getSubject());
        System.out.println("登录时间：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(claims.getIssuedAt()));
        System.out.println("过期时间：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(claims.getExpiration()));
        System.out.println("角色：" +claims.get("role"));

    }
}
