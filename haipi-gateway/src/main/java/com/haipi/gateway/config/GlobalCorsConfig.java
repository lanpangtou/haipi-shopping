package com.haipi.gateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

/**
 *  解决跨域
 */
@Configuration
public class GlobalCorsConfig {

    @Bean
    public CorsFilter corsFilter(){
        //1 添加CORS配置信息
        CorsConfiguration config = new CorsConfiguration();
        //允许的域，不要写*，否则cookie就无法用了
//        config.addAllowedOrigin("http://manage.haipi.com");
        config.addAllowedOrigin("*");
        //是否发送cookie信息
        config.setAllowCredentials(true);
        //允许的请求方式
        config.addAllowedMethod("OPTIONS");
        config.addAllowedMethod("HEAD");
        config.addAllowedMethod("GET");
        config.addAllowedMethod("POST");
        config.addAllowedMethod("PUT");
        config.addAllowedMethod("DELETE");
        config.addAllowedMethod("PATCH");

        //允许的头信息
        config.addAllowedHeader("*");
        //有效时长 在一小时内不在发送预检请求
        config.setMaxAge(3600L);
        //2 添加映射路径，拦截一切请求
        UrlBasedCorsConfigurationSource configSource = new UrlBasedCorsConfigurationSource();
        configSource.registerCorsConfiguration("/**",config);//  /**拦截所有请求

        //3 返回新的CorsFilter
        return new CorsFilter(configSource);
    }
}
