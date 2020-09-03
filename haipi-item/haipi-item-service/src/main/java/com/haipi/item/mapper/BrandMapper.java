package com.haipi.item.mapper;

import com.haipi.pojo.Brand;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface BrandMapper extends Mapper<Brand> {

    @Insert("insert into category_brand(category_id,brand_id) values (#{cid},#{id})")
    public void insertCategoryAndBrand(@Param("id")Long id,@Param("cid")Long cid);

    @Select("select b.id,b.`name` from category_brand cb INNER JOIN brand b on cb.brand_id = b.id WHERE cb.category_id = #{cid}")
    public List<Brand> queryBrandByCid(@Param("cid")Long cid);
}
