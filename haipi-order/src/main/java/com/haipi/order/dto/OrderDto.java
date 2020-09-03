package com.haipi.order.dto;


import com.haipi.dto.CartDto;
import lombok.Data;

import java.util.List;

@Data
public class OrderDto {

    private Long addressId; //收货信息
    private Integer paymentType; //支付类型
    private List<CartDto> carts; //商品信息

}
