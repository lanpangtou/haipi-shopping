package com.haipi.order.service;

import com.alipay.api.AlipayApiException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface AlipayService {

    public void payment(HttpServletResponse response,HttpServletRequest request, Long id) throws IOException, AlipayApiException;

    public void payNotify(HttpServletRequest request, HttpServletResponse response) throws AlipayApiException;

    public String payReturn(HttpServletRequest request, HttpServletResponse response, Model model) throws AlipayApiException;
}

