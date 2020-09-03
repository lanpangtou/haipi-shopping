package com.haipi.item.mapper;

import com.haipi.pojo.Stock;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import tk.mybatis.mapper.additional.idlist.IdListMapper;
import tk.mybatis.mapper.common.Mapper;

public interface StockMapper extends Mapper<Stock>, IdListMapper<Stock,Long> {

    @Update("update stock set stock = stock - #{count} where sku_id = #{id} and stock >= #{count}")
    public int reduceStock(@Param("id")Long id, @Param("count")Integer count);
}
