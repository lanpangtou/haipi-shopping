package com.haipi.cart.service;

import com.haipi.cart.pojo.Cart;

import java.util.List;

public interface CartService {

    public void addCart(Cart cart);

    public List<Cart> queryCarts();

    public Long queryCartCount();
}
