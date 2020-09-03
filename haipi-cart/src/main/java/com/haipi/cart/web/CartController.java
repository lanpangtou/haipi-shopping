package com.haipi.cart.web;

import com.haipi.cart.pojo.Cart;
import com.haipi.cart.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CartController {

    @Autowired
    private CartService cartService;

    /**
     * 查询购物车
     * @return
     */
    @GetMapping("query")
    public ResponseEntity<List<Cart>> queryCart(){
        return ResponseEntity.ok(cartService.queryCarts());
    }

    /**
     * 新增购物车
     * @param cart
     * @return
     */
    @PostMapping("addCart")
    public ResponseEntity<Void> addCart(Cart cart){
        cartService.addCart(cart);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * 查询购物车数量
     * @return
     */
    @GetMapping("size")
    public ResponseEntity<Long> queryCount(){
        return ResponseEntity.ok(cartService.queryCartCount());
    }


}
