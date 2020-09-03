package com.haipi.alipay.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class AlipayVo {
    /**
     * 订单号
     */
    private String outTradeNo;

    /**
     * 总金额
     */
    private String totalAmount;

    /**
     * 商品名称
     */
    private String subject;
}
