package com.haipi.auth.entity;

/**
 * 载荷对象
 * 主要是用于，解析浏览器请求时携带得cookie中得token，从token中解析出用户名和用户id
 */
public class UserInfo {

    private Long id;

    private String username;

    public UserInfo() {
    }

    public UserInfo(Long id, String username) {
        this.id = id;
        this.username = username;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}