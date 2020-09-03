package com.haipi.order.service;

import com.haipi.order.dto.OrderDto;
import com.haipi.order.pojo.Order;

public interface OrderService {

    public Long createOrder(OrderDto orderDto);

    public Order queryOrderById(Long id);

}
