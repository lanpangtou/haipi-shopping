package com.haipi.api;


import com.haipi.pojo.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface UserApi {

    @GetMapping("query")
    User queryUserByNameAndPass(@RequestParam("username")String username, @RequestParam("password")String password);
}
