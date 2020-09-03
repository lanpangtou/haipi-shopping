package com.haipi.gateway.filter;

import com.haipi.auth.entity.UserInfo;
import com.haipi.auth.utils.JwtUtils;
import com.haipi.gateway.config.FilterProperties;
import com.haipi.gateway.config.JwtProperties;
import com.haipi.utils.CookieUtils;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.constants.ZuulConstants;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
@EnableConfigurationProperties({JwtProperties.class,FilterProperties.class})
public class AuthFilter extends ZuulFilter {

    @Autowired
    private JwtProperties jProperties;

    @Autowired
    private FilterProperties filterProperties;

    @Override
    public String filterType() {
        //拦截类型
        return FilterConstants.PRE_TYPE;
    }

    @Override
    public int filterOrder() {
        //过滤器顺序
        return FilterConstants.PRE_DECORATION_FILTER_ORDER - 1;
    }

    @Override
    public boolean shouldFilter() {
        //是否过滤
        //获取上下文
        RequestContext context = RequestContext.getCurrentContext();
        //获取request
        HttpServletRequest request = context.getRequest();
        //获取地址
        String path = request.getRequestURI();
        //判断是否放行
        return isAllowPath(path);
    }

    public Boolean isAllowPath(String path) {
        //遍历白名单
        for (String allowPath : filterProperties.getAllowPath()) {
            if (path.startsWith(allowPath)) {
                //false 放行
                return false;
            }
        }
        //true 拦截
        return true;
    }

    @Override
    public Object run() throws ZuulException {
        //获取上下文
        RequestContext context = RequestContext.getCurrentContext();
        //获取request
        HttpServletRequest request = context.getRequest();
        //获取token
        String token = CookieUtils.getCookieValue(request, "AUTH_TOKEN");
        try {
            //解析token 解析成功代表通过
            JwtUtils.getInfoFromToken(token, jProperties.getPublicKey());
        } catch (Exception e) {
            //解析失败，未登录，拦截
            context.setSendZuulResponse(false);
            //返回状态码
            context.setResponseStatusCode(403);
        }
        return null;
    }
}
