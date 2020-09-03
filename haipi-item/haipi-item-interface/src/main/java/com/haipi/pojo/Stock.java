package com.haipi.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * sku对应的库存
 */
@Data
@Table(name = "Stock")
public class Stock {

    @Id
    private Long skuId; //库存对应sku 的id
    private Integer stock; //库存数量
}
