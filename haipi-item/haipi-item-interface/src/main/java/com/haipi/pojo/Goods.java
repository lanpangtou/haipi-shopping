package com.haipi.pojo;

import lombok.Data;

import java.util.List;

@Data
public class Goods {

    private Spu spu;
    private String title;
    private String subTitle;
    private List<Sku> skus;
    private SpuDetail spuDetail;
    private Brand brand;
    private List<Category> category;
    private List<SpecificationGroup> specGroup;
}
