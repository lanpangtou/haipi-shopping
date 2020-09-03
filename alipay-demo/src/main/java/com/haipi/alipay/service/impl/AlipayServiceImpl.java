package com.haipi.alipay.service.impl;

import com.alipay.api.AlipayApiException;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.haipi.alipay.config.AlipayConfig;
import com.haipi.alipay.service.AlipayService;
import com.haipi.alipay.vo.AlipayVo;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Service
public class AlipayServiceImpl implements AlipayService {

    //获得初始化的AlipayClient
    DefaultAlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

    @Override
    public void pay(HttpServletResponse response, HttpServletRequest request, AlipayVo alipayVO) throws IOException, AlipayApiException {

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        ////设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        /* 同步通知，支付完 成后，支付成功页面*/
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        /* 异步通知，支付完成后，需要进行的异步处理*/
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + 2222 + "\","
                + "\"total_amount\":\"" + alipayVO.getTotalAmount() + "\","
                + "\"subject\":\"" + "测试" + "\","
                + "\"body\":\"商品名称\","
                + "\"timeout_express\":\"90m\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //调用SDK生成表单
        String body = alipayClient.pageExecute(alipayRequest).getBody();
        response.setContentType("text/html;charset=" + AlipayConfig.CHARSET);
        //直接将完整的表单html输出到页面
        response.getWriter().write(body);
        response.getWriter().flush();
        response.getWriter().close();
    }
}
