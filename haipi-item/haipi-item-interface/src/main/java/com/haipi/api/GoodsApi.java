package com.haipi.api;

import com.haipi.dto.CartDto;
import com.haipi.pojo.Sku;
import com.haipi.pojo.Spu;
import com.haipi.pojo.SpuDetail;
import com.haipi.vo.PageResult;
import com.haipi.vo.SpuVo;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

public interface GoodsApi {

    /**
     * 分页查询商品 spu
     * @param key
     * @param page
     * @param rows
     * @param saleable
     * @return
     */
    @GetMapping("goods/page")
    PageResult<SpuVo> queryGoodsByPage(
            @RequestParam(value = "key",required = false) String key,
            @RequestParam(value = "page",defaultValue = "1") Integer page,
            @RequestParam(value = "rows",defaultValue = "8") Integer rows,
            @RequestParam(value = "saleable",required = false) Boolean saleable
    );

    /**
     * 根据spuId查询spu详情
     * @param spuId
     * @return
     */
    @GetMapping("goods/detail/{id}")
    SpuDetail queryDetailBySpuId(@PathVariable("id")Long spuId);

    /**
     * 根据spuId查询sku
     * @param spuId
     * @return
     */
    @GetMapping("goods/sku/list")
    List<Sku> querySkuBySpuId(@RequestParam("id")Long spuId);

    /**
     * 根据spuId查询spu
     * @param spuId
     * @return
     */
    @GetMapping("/goods/spu/{id}")
    Spu querySpuById(@PathVariable("id")Long spuId);

    /**
     * 根据sku的id批量查询sku
     * @param ids
     * @return
     */
    @GetMapping("/goods/sku/list/ids")
    List<Sku> querySkuBySkuids(@RequestParam("ids")List<Long> ids);

    /**
     * 减库存
     * @param cartDtos
     * @return
     */
    @PostMapping("/goods/stock/reduce")
    void reduceStock(@RequestBody List<CartDto> cartDtos);
}
