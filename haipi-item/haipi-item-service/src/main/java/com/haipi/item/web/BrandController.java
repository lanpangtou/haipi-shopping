package com.haipi.item.web;

import com.haipi.item.service.BrandService;
import com.haipi.pojo.Brand;
import com.haipi.vo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("brand")
public class BrandController {

    @Autowired
    private BrandService brandService;

    /**
     * 分页查询品牌
     * @param page
     * @param rows
     * @param sortBy 排序字段
     * @param desc  排序规则
     * @param key
     * @return
     */
    @GetMapping("page")
    public ResponseEntity<PageResult<Brand>> queryBrandByPage(
            @RequestParam(value = "key",required = false) String key,
            @RequestParam(value = "page",defaultValue = "1") Integer page,
            @RequestParam(value = "rows",defaultValue = "8") Integer rows,
            @RequestParam(value = "sortBy",required = false) String sortBy,
            @RequestParam(value = "desc",defaultValue = "false") boolean desc
    ) {
        return ResponseEntity.ok(brandService.queryBrandByPage(key,page,rows,sortBy,desc));
    }

    /**
     *  新增品牌
     * @param brand
     * @param cids
     * @return
     */
    @PostMapping("addBrand")
    public ResponseEntity<Void> addBrand(Brand brand,@RequestParam("cids") List<Long> cids) {
        brandService.addBrand(brand, cids);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * 根据分类id查询品牌列表
     * @param cid
     * @param gid
     * @return
     */
    @GetMapping("list")
    public ResponseEntity<List<Brand>> queryBrandByParam(@RequestParam("cid")Long cid) {
        return ResponseEntity.ok(brandService.queryBrandByCid(cid));
    }

    /**
     * 根据id查询品牌
     * @param id
     * @return
     */
    @GetMapping("{id}")
    public ResponseEntity<Brand> queryBrandById(@PathVariable("id")Long id){
        return ResponseEntity.ok(brandService.queryBrandById(id));
    }
}
