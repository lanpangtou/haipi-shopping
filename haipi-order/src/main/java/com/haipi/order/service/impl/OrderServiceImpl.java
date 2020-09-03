package com.haipi.order.service.impl;

import com.haipi.auth.entity.UserInfo;
import com.haipi.dto.CartDto;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.order.client.AddressClient;
import com.haipi.order.client.GoodsClient;
import com.haipi.order.dto.AddressDto;
import com.haipi.order.dto.OrderDto;
import com.haipi.order.enums.OrderEnums;
import com.haipi.order.interceptor.UserInterceptor;
import com.haipi.order.mapper.OrderDetailMapper;
import com.haipi.order.mapper.OrderMapper;
import com.haipi.order.mapper.OrderStatusMapper;
import com.haipi.order.pojo.Order;
import com.haipi.order.pojo.OrderDetail;
import com.haipi.order.pojo.OrderStatus;
import com.haipi.order.service.OrderService;
import com.haipi.pojo.Sku;
import com.haipi.utils.IdWorker;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;
import java.util.stream.Collectors;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderStatusMapper orderStatusMapper;

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private IdWorker idWorker;

    @Autowired
    private GoodsClient goodsClient;

    @Transactional
    public Long createOrder(OrderDto orderDto) {
        //订单信息
        Order order = new Order();
        //生成订单号
        long orderId = idWorker.nextId();
        order.setOrderId(orderId);
        //订单基本信息
        order.setPaymentType(orderDto.getPaymentType());
        order.setCreateTime(new Date());
        //用户信息
        UserInfo user = UserInterceptor.getUser();
        order.setUserId(user.getId());
        order.setBuyerNick(user.getUsername());
        //收货人信息
        AddressDto address = AddressClient.findAddressById(orderDto.getAddressId());
        order.setProvinceName(address.getProvince());//省
        order.setCityName(address.getCity());//市
        order.setCountyName(address.getCounty());//区
        order.setTowName(address.getTow());//镇
        order.setDetailAddress(address.getDetailAddress());//详细地址
        order.setConsigneePhone(address.getPhone());//收货人手机号
        order.setConsignee(address.getName());//收货人
        //金额
        //将cartDto转换为map，skuId为key count为值
        Map<Long, Integer> map = orderDto.getCarts().stream().
                collect(Collectors.toMap(CartDto::getSkuId, CartDto::getCount));
        //获取skuId集合
        Set<Long> ids = map.keySet();
        List<Sku> skus = goodsClient.querySkuBySkuids(new ArrayList<>(ids));
        Long totalPrice = 0l;
        //订单详情信息
        List<OrderDetail> details = new ArrayList<>();
        for (Sku sku : skus) {
            //通过skuId取出map中对应的商品数量乘以改商品的价格，并加到总金额
            totalPrice += sku.getPrice() * map.get(sku.getId());
            //订单详情
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setSkuId(sku.getId());
            orderDetail.setTitle(sku.getTitle());
            orderDetail.setCount(map.get(sku.getId()));
            orderDetail.setPrice(sku.getPrice());
            orderDetail.setImage(sku.getImage());
            orderDetail.setOwnSpec(sku.getOwnSpec());
            orderDetail.setOrderId(orderId);
            details.add(orderDetail);
        }
        //总金额
        order.setTotalMoney(totalPrice);
        //邮费
        order.setPostage(0l);
        //实付金额
        order.setActuallyMoney(totalPrice + order.getPostage());
        //order存入数据库
        int count = orderMapper.insertSelective(order);
        if (count != 1) {
            log.error("【订单服务】 创建订单失败，orderId:{}",orderId);
            throw new HaipiException(ExceptionEnum.CREATE_ORDER_FAIL);
        }
        count = orderDetailMapper.insertList(details);
        if (count != details.size()) {
            log.error("【订单服务】 创建订单失败，orderId:{}",orderId);
            throw new HaipiException(ExceptionEnum.CREATE_ORDER_FAIL);
        }
        //订单状态信息
        OrderStatus orderStatus = new OrderStatus();
        orderStatus.setOrderId(orderId);
        orderStatus.setCreateTime(new Date());
        orderStatus.setStatus(OrderEnums.UNPAID.value());
        count = orderStatusMapper.insertSelective(orderStatus);
        if (count != 1) {
            log.error("【订单服务】 创建订单失败，orderId:{}",orderId);
            throw new HaipiException(ExceptionEnum.CREATE_ORDER_FAIL);
        }
        //减库存
        List<CartDto> cartDtos = orderDto.getCarts();
        goodsClient.reduceStock(cartDtos);
        System.out.println("订单id：" + orderId);
        return orderId;
    }


    public Order queryOrderById(Long id) {
        //查询订单
        Order order = orderMapper.selectByPrimaryKey(id);
        if (order == null) {
            throw new HaipiException(ExceptionEnum.ORDER_NOT_FOUND);
        }
        //查询订单详情；
        OrderDetail detail = new OrderDetail();
        detail.setOrderId(id);
        List<OrderDetail> details = orderDetailMapper.select(detail);
        if (CollectionUtils.isEmpty(details)) {
            throw new HaipiException(ExceptionEnum.ORDER_DETAIL_NOT_FOUND);
        }
        order.setOrderDetail(details);
        //查询订单状态
        OrderStatus orderStatus = orderStatusMapper.selectByPrimaryKey(id);
        if (orderStatus == null) {
            throw new HaipiException(ExceptionEnum.ORDER_STATUS_NOT_FOUND);
        }
        order.setOrderStatus(orderStatus);
        return order;
    }

}
