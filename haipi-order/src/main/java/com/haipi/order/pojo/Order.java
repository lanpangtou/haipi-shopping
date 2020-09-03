package com.haipi.order.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;
import java.util.List;

@Table(name = "`order`")
@Data
public class Order {

    @Id
    private Long orderId;   //订单id号
    private Long totalMoney;//总金额
    private Long actuallyMoney;//实付金额
    private Integer paymentType;//支付类型 1微信 2支付宝
    private Long postage;//邮费
    private Date createTime;//订单创建时间
    private String shippingName;//物流名称
    private String shipping_code;//物流单号
    private Long userId;//用户id
    private String buyerMessage;//买家留言
    private String buyerNick;//买家昵称
    private String provinceName;//收货地址(省)
    private String cityName;//收货地址(市)
    private String countyName;//收货地址(区县)
    private String towName;//收货地址(镇)
    private String detailAddress;//收货地址(街道，住址等详细地址)
    private String consigneePhone;//收货人手机(电话号码)
    private String consignee;//收货人

    @Transient
    private List<OrderDetail> orderDetail;

    @Transient
    private OrderStatus orderStatus;

}
