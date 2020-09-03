package com.haipi.item.service;

import com.haipi.dto.CartDto;
import com.haipi.pojo.*;
import com.haipi.vo.PageResult;
import com.haipi.vo.SpuVo;

import java.util.List;

public interface GoodsService {


    public PageResult<SpuVo> queryGoodsByPage(String key, Integer page, Integer rows, Boolean saleable);

    public List<Sku> querySkuBySpuId(Long spuId);

    public SpuDetail queryDetailBySpuId(Long spuId);

    public Spu querySpuById(Long spuId);

    public Goods queryGoodsBySpuId(Long spuId);

    public List<Sku> querySkuBySkuids(List<Long> ids);

    public void reduceStock(List<CartDto> cartDtos);
}
