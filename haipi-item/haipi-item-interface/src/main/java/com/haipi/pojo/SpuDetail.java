package com.haipi.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * spu 详情
 */
@Data
@Table(name = "spu_detail")
public class SpuDetail {

    @Id
    private Long spuId;//spu id
    private String description;//商品介绍，描述信息
    private String specifications;//商品全部规格参数
    private String specTemplate;//特有规格参数模板
    private String packingList;//包装清单
    private String afterSaleService;//售后服务
}
