package com.haipi.cart.pojo;

import lombok.Data;

@Data
public class Cart {
    private Long skuId;//商品id
    private String title;//名字
    private String image;//图片
    private Long price;//价格
    private Integer count;//购买数量
    private String ownSpec;//商品规格参数
}

