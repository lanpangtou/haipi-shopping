package com.haipi.api;

import com.haipi.pojo.Brand;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

public interface BrandApi {

    @GetMapping("brand/{id}")
    Brand queryBrandById(@PathVariable("id")Long id);
}
