package com.haipi.api;

import com.haipi.pojo.SpecificationGroup;
import com.haipi.pojo.SpecificationParam;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface SpecificationApi {

    /**
     * 根据规格组id或者分类id 查找 规格参数
     * @param gid
     * @return
     */
    @GetMapping("spec/param")
    List<SpecificationParam> querySpecParamById(
            @RequestParam(value = "gid",required = false)Long gid,
            @RequestParam(value = "cid",required = false)Long cid);

    /**
     * 根据分类id查询规格组及其组内参数
     * @param cid
     * @return
     */
    @GetMapping("spec/groupParam")
    List<SpecificationGroup> queryGroupByCid(@RequestParam("cid")Long cid);
}
