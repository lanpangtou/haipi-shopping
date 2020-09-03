package com.haipi.order.web;

import com.haipi.order.dto.OrderDto;
import com.haipi.order.pojo.Order;
import com.haipi.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;

@RestController
@RequestMapping("o")
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 创建订单
     * @param orderDto
     * @return
     */
    @PostMapping("generate")
    public ResponseEntity<Long> createOrder(@RequestBody OrderDto orderDto){
        return ResponseEntity.ok(orderService.createOrder(orderDto));
    }

    /**
     * 根据id查询订单
     * @param id
     * @return
     */
    @GetMapping("{id}")
    public ResponseEntity<Order> queryOrderById(@PathVariable("id")Long id){
        return ResponseEntity.ok(orderService.queryOrderById(id));
    }
}
