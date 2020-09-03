package com.haipi.item.web;

import com.haipi.dto.CartDto;
import com.haipi.item.service.GoodsService;
import com.haipi.pojo.Goods;
import com.haipi.pojo.Sku;
import com.haipi.pojo.Spu;
import com.haipi.pojo.SpuDetail;
import com.haipi.vo.PageResult;
import com.haipi.vo.SpuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    /**
     * 分页查询商品 spu
     * @param key
     * @param page
     * @param rows
     * @param saleable
     * @return
     */
    @GetMapping("page")
    public ResponseEntity<PageResult<SpuVo>> queryGoodsByPage(
            @RequestParam(value = "key",required = false) String key,
            @RequestParam(value = "page",defaultValue = "1") Integer page,
            @RequestParam(value = "rows",defaultValue = "8") Integer rows,
            @RequestParam(value = "saleable",required = false) Boolean saleable
    ) {
        return ResponseEntity.ok(goodsService.queryGoodsByPage(key,page,rows,saleable));
    }

    /**
     * 根据spuId查询spu详情
     * @param spuId
     * @return
     */
    @GetMapping("detail/{id}")
    public ResponseEntity<SpuDetail> queryDetailBySpuId(@PathVariable("id")Long spuId){
        return ResponseEntity.ok(goodsService.queryDetailBySpuId(spuId));
    }

    /**
     * 根据spuId查询sku
     * @param spuId
     * @return
     */
    @GetMapping("sku/list")
    public ResponseEntity<List<Sku>> querySkuBySpuId(@RequestParam("id")Long spuId){
        return ResponseEntity.ok(goodsService.querySkuBySpuId(spuId));
    }

    /**
     * 根据spuId查询spu
     * @param spuId
     * @return
     */
    @GetMapping("spu/{id}")
    public ResponseEntity<Spu> querySpuById(@PathVariable("id")Long spuId){
        return ResponseEntity.ok(goodsService.querySpuById(spuId));
    }

    /**
     * 根据spuId查询商品详情
     * @param spuId
     * @return
     */
    @GetMapping("{id}")
    public ResponseEntity<Goods> queryGoodsBySpuId(@PathVariable("id")Long spuId){
        return ResponseEntity.ok(goodsService.queryGoodsBySpuId(spuId));
    }

    /**
     * 根据sku的id批量查询sku
     * @param ids
     * @return
     */
    @GetMapping("sku/list/ids")
    public ResponseEntity<List<Sku>> querySkuBySkuids(@RequestParam("ids")List<Long> ids) {
        return ResponseEntity.ok(goodsService.querySkuBySkuids(ids));
    }

    /**
     * 减库存
     * @param cartDtos
     * @return
     */
    @PostMapping("stock/reduce")
    public ResponseEntity<Void> reduceStock(@RequestBody List<CartDto> cartDtos) {
        goodsService.reduceStock(cartDtos);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
