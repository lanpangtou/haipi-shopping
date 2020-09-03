package com.haipi.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 品牌
 */
@Data
@Table(name = "brand")
public class Brand {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;
    private String name;//名牌名
    private String image;//logo
    private String letter;//首字母
}
