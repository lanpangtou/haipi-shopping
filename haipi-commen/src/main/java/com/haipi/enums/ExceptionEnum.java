package com.haipi.enums;

import lombok.*;

/**
 * 异常消息枚举
 */
@Getter
@NoArgsConstructor
@AllArgsConstructor
public enum ExceptionEnum {

    BRAND_NOT_FOUND(404,"品牌未找到"),
    ADD_BRAND_FAIL(400,"新增品牌失败"),
    CATEGORY_NOT_FOUND(404,"商品分类未找到"),
    UPLOAD_FILE_ERROR(500,"文件上传失败"),
    INVALID__FILE_TYPE(400,"无效的文件类型"),
    SPEC_GROUP_NOT_FOUND(404,"规格组未找到"),
    SPEC_PARAM_NOT_FOUND(404,"规格参数未找到"),
    ADD_SPEC_GROUP_FAIL(400,"新增品牌失败"),
    GOODS_NOT_FOUND(404,"商品未找到"),
    GOODS_SKU_NOT_FOUND(404,"商品sku未找到"),
    GOODS_STOCK_NOT_FOUND(404,"商品stock未找到"),
    GOODS_DETAIL_NOT_FOUND(404,"商品详情未找到"),
    CART_NOT_FOUND(404,"购物车未找到"),
    CREATE_ORDER_FAIL(500,"创建订单失败"),
    STOCK_NOT_ENOUGH(500,"库存不足"),
    ORDER_NOT_FOUND(404,"订单未找到"),
    ORDER_DETAIL_NOT_FOUND(404,"订单详情未找到"),
    ORDER_STATUS_NOT_FOUND(404,"订单状态未找到"),
    CREATE_PAY_FAIL(500,"支付失败"),
    PAY_FAIL(500,"支付失败"),
    INVALID_ORDER_PARAM(500,"无效的订单参数"),
    UPDATE_ORDER_STATUS_FAIL(500,"更新订单状态失败"),


    WRONG_USERNAME_OR_PASSWORD(400,"用户名或者密码错误"),
    INVALID_VERIFY_CODE(400,"无效的验证码"),
    REGISTER_FAILED(500,"注册失败"),
    USERNAME_ALREADY_EXISTS(400,"用户名已存在"),
    INSUFFFICIENT_AUTHORITY(403,"权限不足"),
    TOKEN_ERROR(400,"令牌失效"),
    CREATED_TOKEN_ERROR(500,"用户凭证生成失败")
    ;
    private int statusCode;
    private String mesg;

}
