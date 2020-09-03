package com.haipi.vo;

import lombok.Data;

import java.util.Date;

@Data
public class SpuVo {
    private Long id;
    private String title; //商品名spu名
    private String subTitle; //子标题
    private Long cid1; //一级分类id
    private Long cid2; //二级分类id
    private Long cid3; //三级分类id
    private Long brandId; //品牌id
    private Boolean saleable; //是否上架，1上架，0下架
    private Date lastUpdateTime;

    private String cName;//分类名
    private String brandName; //品牌名
}
