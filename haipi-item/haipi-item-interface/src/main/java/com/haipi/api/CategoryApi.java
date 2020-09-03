package com.haipi.api;

import com.haipi.pojo.Category;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface CategoryApi {

    @GetMapping("category/list")
    List<Category> queryCategoryById(@RequestParam("ids") List<Long> cids);
}
