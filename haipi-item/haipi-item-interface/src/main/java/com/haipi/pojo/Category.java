package com.haipi.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 分类
 */
@Data
@Table(name = "category")
public class Category {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;
    private String name;//分类名
    private Long parentId;//父类id
    private Boolean isParent;//是否为父类
}
