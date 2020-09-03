package com.haipi.alipay.web;

import com.alipay.api.AlipayApiException;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.haipi.alipay.config.AlipayConfig;
import com.haipi.alipay.service.AlipayService;
import com.haipi.alipay.vo.AlipayVo;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.sun.xml.internal.ws.handler.HandlerException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

import static java.lang.System.out;

@Slf4j
@RestController
public class AlipayController {

    @Autowired
    private AlipayService alipayService;

    @GetMapping("payment/{TotalAmount}")
    private @ResponseBody void alipayPay(HttpServletResponse response, HttpServletRequest request, @PathVariable("TotalAmount") String totalAmount) {
        AlipayVo vo = new AlipayVo()
                .setOutTradeNo(UUID.randomUUID().toString().replace("-", ""))
                .setTotalAmount(totalAmount)
                .setSubject("捐赠计划");
        log.info("发起支付传参：" + vo.toString());
        try {
            alipayService.pay(response, request, vo);
        } catch (IOException | AlipayApiException e) {
            log.error(e.getMessage());
        }
    }

    @PostMapping("return")
    public void result(HttpServletRequest request,HttpServletResponse response) throws AlipayApiException {
        log.info("进入异步回调........");
        Map<String,String> params = new HashMap<String,String>();
        Map<String, String[]> parameterMap = request.getParameterMap();
        Set<String> keySet = parameterMap.keySet();
        for (Iterator<String> iter = parameterMap.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) parameterMap.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.CHARSET, AlipayConfig.sign_type); //调用SDK验证签名

    /**
     * 实际验证过程建议商户务必添加以下校验
     *  1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
     *  2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
     *  3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
     *  4、验证app_id是否为该商户本身。
	*/
        try {
            if(signVerified) {//验证成功
                //商户订单号
                String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

                //支付宝交易号
                String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

                //交易状态
                String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");

                if(trade_status.equals("TRADE_FINISHED")){
                    //判断该笔订单是否在商户网站中已经做过处理
                    //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                    //如果有做过处理，不执行商户的业务程序
                    out.println("trade_status 相等");
                    //注意：
                    //退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
                }else if (trade_status.equals("TRADE_SUCCESS")){
                    //判断该笔订单是否在商户网站中已经做过处理
                    //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                    //如果有做过处理，不执行商户的业务程序
                    //注意：
                    //付款完成后，支付宝系统发送该交易状态通知
                }
                out.println("success");

            }else {//验证失败
                out.println("fail");

                //调试用，写文本函数记录程序运行情况是否正常
                //String sWord = AlipaySignature.getSignCheckContentV1(params);
                //AlipayConfig.logResult(sWord);
            }
        }catch (Exception e){
            log.error("支付失败");
        }

    }

}
