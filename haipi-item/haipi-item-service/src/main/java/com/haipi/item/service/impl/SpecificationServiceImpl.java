package com.haipi.item.service.impl;

import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.item.mapper.SpecificationGroupMapper;
import com.haipi.item.mapper.SpecificationParamMapper;
import com.haipi.item.service.SpecificationService;
import com.haipi.pojo.SpecificationGroup;
import com.haipi.pojo.SpecificationParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SpecificationServiceImpl implements SpecificationService {

    @Autowired
    private SpecificationGroupMapper specGroupMapper;

    @Autowired
    private SpecificationParamMapper specParamMapper;


    public List<SpecificationGroup> querySpecGroupBycid(Long cid) {
        SpecificationGroup group = new SpecificationGroup();
        group.setCid(cid);
        List<SpecificationGroup> list = specGroupMapper.select(group);
        if (CollectionUtils.isEmpty(list)) {
            throw new HaipiException(ExceptionEnum.SPEC_GROUP_NOT_FOUND);
        }
        return list;
    }


    public void addSpecGroupBycid(SpecificationGroup group) {
        int count = specGroupMapper.insert(group);
        if (count == 0){
            throw new HaipiException(ExceptionEnum.ADD_SPEC_GROUP_FAIL);
        }

    }

    public List<SpecificationParam> querySpecParamById(Long gid, Long cid) {
        SpecificationParam group = new SpecificationParam();
        group.setGroupId(gid);
        group.setCid(cid);
        List<SpecificationParam> list = specParamMapper.select(group);
        if (CollectionUtils.isEmpty(list)) {
            throw new HaipiException(ExceptionEnum.SPEC_PARAM_NOT_FOUND);
        }
        return list;
    }

    public List<SpecificationGroup> queryGroupByCid(Long cid) {
        //查询规格组
        SpecificationGroup record =  new SpecificationGroup();
        record.setCid(cid);
        List<SpecificationGroup> specGroup = specGroupMapper.select(record);
        //查询组内参数
        List<SpecificationParam> specParams = querySpecParamById(null,cid);
        //先把规格参数变成map，map的值是规格组id，参数是组内所有的参数
        Map<Long,List<SpecificationParam>> map = new HashMap<>();
        //map中填充数据
        for (SpecificationParam param : specParams) {
            if (!map.containsKey(param.getGroupId())){
                //组id在map中不存在，新增一个list
                map.put(param.getGroupId(),new ArrayList<>());
            }
            map.get(param.getGroupId()).add(param);
        }
        //填充pram到group
        for (SpecificationGroup group : specGroup) {
            group.setParams(map.get(group.getId()));
        }
        return specGroup;
    }


}
