package com.haipi.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * 商品规格组
 */
@Data
@Table(name = "specification_group")
public class SpecificationGroup {

    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;//id
    private Long cid;//分类id
    private String name;//规格组名

    @Transient
    private List<SpecificationParam> params;
}
