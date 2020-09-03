package com.haipi.order.web;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.haipi.order.config.AlipayConfig;
import com.haipi.order.service.AlipayService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

import static java.lang.System.out;

@Slf4j
@Controller
public class PayController {

    @Autowired
    private AlipayService alipayService;

    @GetMapping("payment/{id}")
    private void payment(HttpServletResponse response, HttpServletRequest request, @PathVariable("id")Long id) {
        log.info("【支付】：请求支付，订单号：{}",id);
        try {
            alipayService.payment(response, request, id);
        } catch (IOException | AlipayApiException e) {
            log.error("【支付】:支付异常,订单号：{}",id,e);
        }
    }

    @PostMapping("notify")
    public void notify(HttpServletRequest request,HttpServletResponse response) throws AlipayApiException {
        log.info("进入异步回调........");
        alipayService.payNotify(request, response);
    }

   @GetMapping("return")
    public String payReturn(HttpServletRequest request, HttpServletResponse response, Model model) throws AlipayApiException {
       log.info("进入同步回调........");
       return alipayService.payReturn(request, response,model);
   }
}
