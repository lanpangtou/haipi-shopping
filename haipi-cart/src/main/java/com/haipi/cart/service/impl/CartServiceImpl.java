package com.haipi.cart.service.impl;

import com.haipi.auth.entity.UserInfo;
import com.haipi.cart.interceptor.UserInterceptor;
import com.haipi.cart.pojo.Cart;
import com.haipi.cart.service.CartService;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private StringRedisTemplate redisTemplate;

    private static final String PRE_FIX = "cart:uid";

    public List<Cart> queryCarts() {
        //获取登录用户
        UserInfo user = UserInterceptor.getUser();
        //key
        String key = PRE_FIX + user.getId();
        //判断是否有该用户的购物车
        if (!redisTemplate.hasKey(key)) {
            //不存在，返回404
            throw new HaipiException(ExceptionEnum.CART_NOT_FOUND);
        }
        BoundHashOperations<String, Object, Object> ops = redisTemplate.boundHashOps(key);
        //获取用户所有的购物车记录
        List<Cart> carts = ops.values().stream().map(o -> JsonUtils.parse(o.toString(), Cart.class))
                .collect(Collectors.toList());
        return carts;
    }

    public void addCart(Cart cart) {
        //获取登录用户
        UserInfo user = UserInterceptor.getUser();
        //key
        String key = PRE_FIX + user.getId();
        //商品的key
        String haskey = cart.getSkuId().toString();
        BoundHashOperations<String, Object, Object> ops = redisTemplate.boundHashOps(key);
        //判断当前商品是否存在
        if (ops.hasKey(haskey)) {
            //如果存在，新增数量
            String cartJson = ops.get(haskey).toString();
            Cart cacheCart = JsonUtils.parse(cartJson,Cart.class);
            //更新数量
            cacheCart.setCount(cart.getCount() + cacheCart.getCount());
            //重新写回数据库
            ops.put(haskey,JsonUtils.serialize(cacheCart));
            return;
        }
        //否，则新增
        ops.put(haskey,JsonUtils.serialize(cart));
    }

    public Long queryCartCount() {
        //获取登录用户
        UserInfo user = UserInterceptor.getUser();
        //key
        String key = PRE_FIX + user.getId();

        return redisTemplate.boundHashOps(key).size();
    }
}
