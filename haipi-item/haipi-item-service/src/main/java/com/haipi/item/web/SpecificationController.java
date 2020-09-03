package com.haipi.item.web;

import com.haipi.item.service.SpecificationService;
import com.haipi.pojo.SpecificationGroup;
import com.haipi.pojo.SpecificationParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("spec")
public class SpecificationController {

    @Autowired
    private SpecificationService specService;

    /**
     * 根据分类id 查找规格组
     * @param cid
     * @return
     */
    @GetMapping("page/{cid}")
    public ResponseEntity<List<SpecificationGroup>> querySpecGroupBycid(@PathVariable("cid")Long cid){
        return ResponseEntity.ok(specService.querySpecGroupBycid(cid));
    }


    /**
     * 新增规格组
     * @param group
     * @return
     */
    @PostMapping("addSpecGroup")
    public ResponseEntity<Void> addSpecGroupBycid(SpecificationGroup group){
        specService.addSpecGroupBycid(group);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * 根据规格组id或者分类id 查找 规格参数
     * @param gid
     * @return
     */
    @GetMapping("param")
    public ResponseEntity<List<SpecificationParam>> querySpecParamById(
            @RequestParam(value = "gid",required = false)Long gid,
            @RequestParam(value = "cid",required = false)Long cid){
        return ResponseEntity.ok(specService.querySpecParamById(gid,cid));
    }

    /**
     * 根据分类id查询规格组及其组内参数
     * @param cid
     * @return
     */
    @GetMapping("groupParam")
    public ResponseEntity<List<SpecificationGroup>> queryGroupByCid(@RequestParam("cid")Long cid){
        return ResponseEntity.ok(specService.queryGroupByCid(cid));
    }


}
