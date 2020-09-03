package com.haipi.item.web;

import com.haipi.item.service.CategoryService;
import com.haipi.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("category")
public class CategoryController {

    @Autowired
    protected CategoryService categoryService;

    /**
     * 根据父id查询商品分类
     * @param pid
     * @return
     */
    @GetMapping("clist")
    public ResponseEntity<List<Category>> queryCategoryByPId(@RequestParam("pid")Long pid) {
        return ResponseEntity.ok(categoryService.queryCategoryByPId(pid));
    }

    @GetMapping("list")
    public ResponseEntity<List<Category>> queryCategoryById(@RequestParam("ids") List<Long> cids){
        return ResponseEntity.ok(categoryService.queryCategoryById(cids));
    }

}
