package com.haipi.item.mapper;

import com.haipi.pojo.Sku;
import tk.mybatis.mapper.additional.idlist.IdListMapper;
import tk.mybatis.mapper.common.Mapper;

public interface SkuMapper extends Mapper<Sku>, IdListMapper<Sku,Long> {
}
