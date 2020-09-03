package com.haipi.page.service.impl;

import com.alibaba.fastjson.JSON;
import com.haipi.page.client.BrandClient;
import com.haipi.page.client.CategoryClient;
import com.haipi.page.client.GoodsClient;
import com.haipi.page.client.SpecificationClient;
import com.haipi.page.service.PageService;
import com.haipi.pojo.Brand;
import com.haipi.pojo.Category;
import com.haipi.pojo.Spu;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PageServiceImpl implements PageService {

    @Autowired
    private GoodsClient goodsClient;

    @Autowired
    private CategoryClient categoryClient;

    @Autowired
    private BrandClient brandClient;

    @Autowired
    private SpecificationClient specificationClient;

    @Autowired
    private TemplateEngine templateEngine;

    private final static Logger logger = LoggerFactory.getLogger(PageService.class);

    public Map<String, Object> loadModel(Long spuId) {
        Map<String, Object> model = new HashMap<>();
        // 获取spu信息
        Spu spu = goodsClient.querySpuById(spuId);
        // 分类数
        List<Category> categories = categoryClient.queryCategoryById(Arrays.asList(spu.getCid1(), spu.getCid2(), spu.getCid3()));
        // 品牌数据
        Brand brand = brandClient.queryBrandById(spu.getBrandId());
        model.put("brand",brand);
        model.put("categories", categories);
        model.put("detail", spu.getSpuDetail());
        model.put("skus", spu.getSkus());
        model.put("specs", JSON.parseObject(spu.getSpuDetail().getSpecTemplate()));
        model.put("spu", spu);
        return model;
    }

    /**
     * 生成商品详情页并保存到指定目录
     * @param spuId 商品ID
     */
    public void createHtml(Long spuId) {
        Context context = new Context();
        context.setVariables(loadModel(spuId));
        // 输出流
        File file = new File("E:\\" + "/" + spuId + ".html");
        try(PrintWriter printWriter = new PrintWriter(file)) {
            // 生成页面
            templateEngine.process("detail", context, printWriter);
        } catch (FileNotFoundException e) {
            logger.debug("生成静态页面异常", e);
        }
    }
}
