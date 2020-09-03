package com.haipi.cart.interceptor;

import com.haipi.auth.entity.UserInfo;
import com.haipi.auth.utils.JwtUtils;
import com.haipi.cart.config.JwtProperties;
import com.haipi.utils.CookieUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
public class UserInterceptor implements HandlerInterceptor {

    private JwtProperties properties;

    public static final ThreadLocal<UserInfo> tl = new ThreadLocal();

    public UserInterceptor(JwtProperties properties) {
        this.properties = properties;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取token
        String token = CookieUtils.getCookieValue(request, "AUTH_TOKEN");
        try {
            //解析token 解析成功代表通过
            UserInfo userInfo = JwtUtils.getInfoFromToken(token, properties.getPublicKey());
            //存储用户信息
            tl.set(userInfo);
            //放行
            return true;
        } catch (Exception e) {
            log.error("解析身份失败",e);
            return false;
        }
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        //清空
        tl.remove();
    }

    public static UserInfo getUser() {
        return tl.get();
    }
}
