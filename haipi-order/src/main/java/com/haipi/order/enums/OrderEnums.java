package com.haipi.order.enums;

import lombok.AllArgsConstructor;
import lombok.Data;

public enum  OrderEnums {
    UNPAID(1,"未付款"),
    PAID(2,"已付款,未发货"),
    DELIVERED_UNCONFIRMED(3,"已发货,未确认"),
    SUCCESS(4,"交易成功"),
    CLOSE(5,"交易关闭")
    ;

    private int code;
    private String desc;

    public int value() {
        return this.code;
    }

    OrderEnums(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
