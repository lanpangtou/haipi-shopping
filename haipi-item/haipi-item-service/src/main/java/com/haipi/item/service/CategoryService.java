package com.haipi.item.service;


import com.haipi.pojo.Category;

import java.util.List;

public interface CategoryService {


    public List<Category> queryCategoryByPId(Long pid);

    public List<Category> queryCategoryById(List<Long> cids);
}
