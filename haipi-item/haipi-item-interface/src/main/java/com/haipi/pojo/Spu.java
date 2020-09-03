package com.haipi.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;
import java.util.List;

/**
 * spu
 */
@Data
@Table(name = "spu")
public class Spu {

    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;
    private String title; //商品名spu名
    private String subTitle; //子标题
    private Long cid1; //一级分类id
    private Long cid2; //二级分类id
    private Long cid3; //三级分类id
    private Long brandId; //品牌id
    private Boolean saleable; //是否上架，1上架，0下架
    @JsonIgnore
    private Boolean vaild; //是否有效，逻辑删除，1未删除，0删除
    private Date createTime;
    @JsonIgnore//表示返回页面时 忽略这个字段  不返回
    private Date lastUpdateTime;

    @Transient//表示不是数据库的字段
    private String cName;//分类名

    @Transient
    private String brandName; //品牌名

    @Transient
    private List<Sku> skus;//sku

    @Transient
    private SpuDetail spuDetail;//spuDetail

}
