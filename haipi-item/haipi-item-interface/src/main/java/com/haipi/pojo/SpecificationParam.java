package com.haipi.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 商品规格参数
 */
@Data
@Table(name = "specification_param")
public class SpecificationParam {

    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;//id
    private Long cid;//分类id
    private Long groupId;///规格组名
    private String name;//规格参数名
    @Column(name = "`numeric`")
    private Boolean numeric;//是否是数字类型参数
    private String unit;//数字类型参数的单位
    private Boolean generic;//是否是sku通用属性

}
