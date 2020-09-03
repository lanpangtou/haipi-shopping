package com.haipi.item.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haipi.dto.CartDto;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.item.mapper.SkuMapper;
import com.haipi.item.mapper.SpuDetailMapper;
import com.haipi.item.mapper.SpuMapper;
import com.haipi.item.mapper.StockMapper;
import com.haipi.item.service.BrandService;
import com.haipi.item.service.CategoryService;
import com.haipi.item.service.GoodsService;
import com.haipi.item.service.SpecificationService;
import com.haipi.pojo.*;
import com.haipi.vo.PageResult;
import com.haipi.vo.SpuVo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private SpuMapper spuMapper;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private SkuMapper skuMapper;

    @Autowired
    private StockMapper stockMapper;

    @Autowired
    private SpuDetailMapper spuDetailMapper;

    @Autowired
    private SpecificationService specService;

    public PageResult<SpuVo> queryGoodsByPage(String key, Integer page, Integer rows, Boolean saleable) {
        //分页
        PageHelper.startPage(page,rows);
        Example example = new Example(Spu.class);
        Example.Criteria criteria = example.createCriteria();
        //搜索过滤
        if (StringUtils.isNotBlank(key)) {
            criteria.andLike("name","%" + key + "%");
        }
        //上下架过滤
        if (saleable != null) {
            criteria.andEqualTo("saleable",saleable);
        }
        //查询
        List<Spu> spus = spuMapper.selectByExample(example);
        if (CollectionUtils.isEmpty(spus)) {
            throw new HaipiException(ExceptionEnum.GOODS_NOT_FOUND);
        }
        //默认排序
        example.setOrderByClause("last_update_time DESC");
        //解析分类名和品牌名
        List<SpuVo> list = parseCategoryAndBrand(spus);
        //解析分页结果
        PageInfo<SpuVo> pageInfo = new PageInfo<>(list);
        return new PageResult<SpuVo>(pageInfo.getTotal(),pageInfo.getPages(),list);
    }

    public List<Sku> querySkuBySpuId(Long spuId) {
        Sku record = new Sku();
        record.setSpuId(spuId);
        //查询sku
        List<Sku> skus = skuMapper.select(record);
        if (CollectionUtils.isEmpty(skus)) {
            throw new HaipiException(ExceptionEnum.GOODS_SKU_NOT_FOUND);
        }
        //获取所有的skuid
        List<Long> ids = skus.stream().map(Sku::getId).collect(Collectors.toList());
        //根据skuid查询对应库存
        List<Stock> stocks = stockMapper.selectByIdList(ids);
        if (CollectionUtils.isEmpty(stocks)) {
            throw new HaipiException(ExceptionEnum.GOODS_STOCK_NOT_FOUND);
        }
        //把stock变成一个map，其key是：sku的id，值是库存值
        Map<Long, Integer> stockMap = stocks.stream().collect(Collectors.toMap(Stock::getSkuId, Stock::getStock));
        //根据skuid获取stockMap里面的库存，设置给每一个sku 的库存
        skus.forEach(s -> s.setStock(stockMap.get(s.getId())));
        return skus;
    }


    public SpuDetail queryDetailBySpuId(Long spuId) {
        SpuDetail spuDetail = spuDetailMapper.selectByPrimaryKey(spuId);
        if (spuDetail == null) {
            throw new HaipiException(ExceptionEnum.GOODS_DETAIL_NOT_FOUND);
        }
        return spuDetail;
    }

    public Spu querySpuById(Long spuId) {
        //查询spu
        Spu spu = spuMapper.selectByPrimaryKey(spuId);
        if (spu == null) {
            throw new HaipiException(ExceptionEnum.GOODS_NOT_FOUND);
        }
        //查询sku
        spu.setSkus(querySkuBySpuId(spuId));
        //查询detail
        SpuDetail spuDetail = queryDetailBySpuId(spuId);
        spu.setSpuDetail(spuDetail);
        return spu;
    }

    public Goods queryGoodsBySpuId(Long spuId) {
        Goods goods = new Goods();
        //查询spu
        Spu spu = querySpuById(spuId);
//        goods.setSpu(spu);
        goods.setTitle(spu.getTitle());
        goods.setSubTitle(spu.getSubTitle());
        //查询skus
        goods.setSkus(spu.getSkus());
        //查询detail
        goods.setSpuDetail(spu.getSpuDetail());
        //查询品牌
        goods.setBrand(brandService.queryBrandById(spu.getBrandId()));
        //查询商品分类
        List<Category> categories = categoryService.queryCategoryById(Arrays.asList(spu.getCid1(), spu.getCid2(), spu.getCid3()));
        goods.setCategory(categories);
        //查询规格参数
        List<SpecificationGroup> specGroup = specService.queryGroupByCid(spu.getCid3());
        goods.setSpecGroup(specGroup);
        return goods;
    }

    public List<Sku> querySkuBySkuids(List<Long> skuIds) {
        List<Sku> skus = skuMapper.selectByIdList(skuIds);
        if (CollectionUtils.isEmpty(skus)) {
            throw new HaipiException(ExceptionEnum.GOODS_SKU_NOT_FOUND);
        }
        //获取所有的skuid
        List<Long> ids = skus.stream().map(Sku::getId).collect(Collectors.toList());
        //根据skuid查询对应库存
        List<Stock> stocks = stockMapper.selectByIdList(ids);
        if (CollectionUtils.isEmpty(stocks)) {
            throw new HaipiException(ExceptionEnum.GOODS_STOCK_NOT_FOUND);
    }
    //把stock变成一个map，其key是：sku的id，值是库存值
        Map<Long, Integer> stockMap = stocks.stream().collect(Collectors.toMap(Stock::getSkuId, Stock::getStock));
        //根据skuid获取stockMap里面的库存，设置给每一个sku 的库存
        skus.forEach(s -> s.setStock(stockMap.get(s.getId())));
        return skus;
    }

    @Transactional
    public void reduceStock(List<CartDto> cartDtos) {
        for (CartDto cartDto : cartDtos) {
           //减库存
            int count = stockMapper.reduceStock(cartDto.getSkuId(), cartDto.getCount());
            if (count != 1) {
                throw new HaipiException(ExceptionEnum.STOCK_NOT_ENOUGH);
            }
        }
    }


    /**
     * 解析分类名和品牌名
     * @param spus
     */
    private List<SpuVo> parseCategoryAndBrand(List<Spu> spus) {
        List<SpuVo> list = new ArrayList<>();
        for (Spu spu : spus) {
            SpuVo spuVo = new SpuVo();
            //获取cid1，cid2,cid3的name
            List<String> names = categoryService.queryCategoryById(Arrays.asList(spu.getCid1(), spu.getCid2(), spu.getCid3()))
                    .stream().map(Category::getName).collect(Collectors.toList());
            spuVo.setCName(StringUtils.join(names,"/"));
            spuVo.setBrandName(brandService.queryBrandById(spu.getBrandId()).getName());
            //vo对象转换
            BeanUtils.copyProperties(spu,spuVo);
            list.add(spuVo);
        }
        return list;
    }
}
