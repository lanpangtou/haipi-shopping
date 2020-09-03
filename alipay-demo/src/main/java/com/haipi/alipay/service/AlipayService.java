package com.haipi.alipay.service;


import com.alipay.api.AlipayApiException;
import com.haipi.alipay.vo.AlipayVo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface AlipayService {

    /**
     *
     * @param response 响应体
     * @param request 请求体
     * @param alipayVO 参数视图类
     * @throws IOException  IO异常
     * @throws AlipayApiException  API异常
     */
    void pay(HttpServletResponse response, HttpServletRequest request, AlipayVo alipayVO) throws IOException, AlipayApiException;

}

