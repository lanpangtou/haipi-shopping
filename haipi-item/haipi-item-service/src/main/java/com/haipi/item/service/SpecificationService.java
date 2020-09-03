package com.haipi.item.service;

import com.haipi.pojo.SpecificationGroup;
import com.haipi.pojo.SpecificationParam;

import java.util.List;

public interface SpecificationService {

    public List<SpecificationGroup> querySpecGroupBycid(Long cid);

    public void addSpecGroupBycid(SpecificationGroup group);

    public List<SpecificationParam> querySpecParamById(Long gid, Long cid);

    public List<SpecificationGroup> queryGroupByCid(Long cid);
}
