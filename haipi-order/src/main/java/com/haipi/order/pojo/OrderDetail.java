package com.haipi.order.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "order_detail")
public class OrderDetail {

    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id; //订单详情id
    private Long orderId; //订单id
    private Long skuId; //商品id
    private Integer count; //商品数量
    private String title; //商品名称
    private String ownSpec;//商品动态属性键值集
    private Long price; //商品价格
    private String image; //商品图片
}
