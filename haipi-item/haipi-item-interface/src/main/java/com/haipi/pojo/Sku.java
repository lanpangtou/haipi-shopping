package com.haipi.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;

/**
 * sku
 */
@Data
@Table(name = "sku")
public class Sku {

    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;//sku id
    private Long spuId; //pu id
    private String title;//商品名sku名
    private String image;//商品的图片，多个图片 ‘ ，’分割
    private Long price;//价格
    private String indexes;//特有规格属性在spu属性模板中的对应下标
    private String ownSpec;//sku特有规格参数键值对，json格式
    private Boolean enable;//是否有效，1有效，0无效
    private Date createTime;
    private Date lastUpdateTime;

    @Transient
    private Integer stock;//库存
}


