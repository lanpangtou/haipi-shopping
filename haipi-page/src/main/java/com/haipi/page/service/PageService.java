package com.haipi.page.service;

import java.util.Map;

public interface PageService {

    public Map<String, Object> loadModel(Long spuId);

    public void createHtml(Long spuId);
}
