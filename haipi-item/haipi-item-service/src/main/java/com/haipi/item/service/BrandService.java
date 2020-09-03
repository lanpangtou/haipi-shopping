package com.haipi.item.service;

import com.haipi.pojo.Brand;
import com.haipi.vo.PageResult;

import java.util.List;

public interface BrandService {

    public PageResult<Brand> queryBrandByPage(String key, Integer page, Integer rows, String sortBy, boolean desc);

    public void addBrand(Brand brand, List<Long> cids);

    public Brand queryBrandById(Long id);

    public List<Brand> queryBrandByCid(Long cid);
}
