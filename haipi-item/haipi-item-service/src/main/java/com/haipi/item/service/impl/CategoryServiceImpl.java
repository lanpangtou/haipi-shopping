package com.haipi.item.service.impl;

import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.item.mapper.CategoryMapper;
import com.haipi.item.service.CategoryService;
import com.haipi.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> queryCategoryByPId(Long pid) {
        //查询条件，对象中的非空属性作为查询条件
        Category category = new Category();
        category.setParentId(pid);
        List<Category> categories = categoryMapper.select(category);
        if (CollectionUtils.isEmpty(categories)) {
            throw new HaipiException(ExceptionEnum.BRAND_NOT_FOUND);
        }
        return categories;
    }

    /**
     * 根据id查询商品分类
     * @param cids
     * @return
     */
    public List<Category> queryCategoryById(List<Long> cids) {
        List<Category> categories = categoryMapper.selectByIdList(cids);
        if (CollectionUtils.isEmpty(categories)) {
            throw new HaipiException(ExceptionEnum.BRAND_NOT_FOUND);
        }
        return categories;
    }


}
