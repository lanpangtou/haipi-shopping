package com.haipi.dto;


import lombok.Data;

@Data
public class CartDto {

    private Long skuId; //商品id
    private Integer count; //商品数量

}
