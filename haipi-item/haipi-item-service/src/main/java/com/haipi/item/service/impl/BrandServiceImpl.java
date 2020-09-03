package com.haipi.item.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.item.mapper.BrandMapper;
import com.haipi.item.service.BrandService;
import com.haipi.pojo.Brand;
import com.haipi.pojo.Category;
import com.haipi.vo.PageResult;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Random;

@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandMapper brandMapper;

    public PageResult<Brand> queryBrandByPage(String key, Integer page, Integer rows, String sortBy, boolean desc) {
        //分页
        PageHelper.startPage(page,rows);
        Example example = new Example(Brand.class);
        //搜索
        if (StringUtils.isNotBlank(key)) {
            example.createCriteria().orLike("name","%"+ key +"%").orEqualTo("letter",key.toUpperCase());
        }
        //排序
        if (StringUtils.isNotBlank(sortBy)) {
            String orderByClause = sortBy + ( desc ? " DESC" : " ASC");
            example.setOrderByClause(orderByClause);
        }
        //查询
        List<Brand> brands = brandMapper.selectByExample(example);
        if (CollectionUtils.isEmpty(brands)) {
            throw new HaipiException(ExceptionEnum.BRAND_NOT_FOUND);
        }
        //解析分页结果
        PageInfo<Brand> pageInfo = new PageInfo<>(brands);

        return new PageResult<>(pageInfo.getTotal(),pageInfo.getPages(),brands);
    }


    public void addBrand(Brand brand, List<Long> cids) {
        int count = brandMapper.insert(brand);
        if (count == 0){
            throw new HaipiException(ExceptionEnum.ADD_BRAND_FAIL);
        }
        //新增品牌和分类
        for (Long cid : cids) {
            brandMapper.insertCategoryAndBrand(brand.getId(),cid);
        }
    }

    public Brand queryBrandById(Long id) {
        Brand brand = brandMapper.selectByPrimaryKey(id);
        if (brand == null) {
            throw new HaipiException(ExceptionEnum.BRAND_NOT_FOUND);
        }
        return brand;
    }

    @Override
    public List<Brand> queryBrandByCid(Long cid) {
        List<Brand> brands = brandMapper.queryBrandByCid(cid);
        if (CollectionUtils.isEmpty(brands)) {
            throw new HaipiException(ExceptionEnum.BRAND_NOT_FOUND);
        }
        return brands;
    }
}
