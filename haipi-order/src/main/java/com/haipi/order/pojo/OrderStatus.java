package com.haipi.order.pojo;


import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "order_status")
public class OrderStatus {

    @Id
    private Long orderId;
    private Integer status; //订单状态1、未付款 2、已付款,未发货 3、已发货,未确认 4、交易成功 5、交易关闭
    private Date createTime;//订单创建时间
    private Date paymentTime; //付款时间
    private Date shippingTime; //发货时间
    private Date endTime;  //交易完成时间
    private Date closeTime; //交易关闭时间
}
