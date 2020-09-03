package com.haipi.order.service.impl;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeWapPayModel;
import com.alipay.api.domain.BizAbilityData;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.order.config.AlipayConfig;
import com.haipi.order.enums.OrderEnums;
import com.haipi.order.mapper.OrderMapper;
import com.haipi.order.mapper.OrderStatusMapper;
import com.haipi.order.pojo.Order;
import com.haipi.order.pojo.OrderStatus;
import com.haipi.order.service.AlipayService;
import com.haipi.order.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import tk.mybatis.mapper.entity.Example;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.*;

import static java.lang.System.out;

@Slf4j
@Service
public class AlipayServiceImpl implements AlipayService {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderStatusMapper statusMapper;

    public void payment(HttpServletResponse response,HttpServletRequest request, Long id) {
        //初始化AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.GATEWAYURL, AlipayConfig.APP_ID, AlipayConfig.MERCHANT_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.SIGN_TYPE);
        Order order = orderService.queryOrderById(id);
        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        //同步通知
        alipayRequest.setReturnUrl(AlipayConfig.RETURN_URL);
        //异步通知
        alipayRequest.setNotifyUrl(AlipayConfig.NOTIFY_URL);
        //填充业务参数
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + order.getOrderId() + "\","
                + "\"total_amount\":\"" + order.getActuallyMoney() + "\","
                + "\"subject\":\"" + order.getOrderDetail().get(0).getTitle() + "\","
                + "\"body\":\""+order.getOrderDetail().get(0).getTitle()+"\","
                + "\"timeout_express\":\"10m\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求页面执行
        try {
            AlipayTradePagePayResponse pagePayResponse = alipayClient.pageExecute(alipayRequest);
            String body = "";
            if (pagePayResponse.isSuccess()) {
                log.info("【支付】：调用支付成功");
                //生成表单
                body = pagePayResponse.getBody();
                response.setContentType("text/html;charset=" + AlipayConfig.CHARSET);
                //直接将完整的表单html输出到页面
                response.getWriter().write(body);
                response.getWriter().flush();
                response.getWriter().close();
            }
        }catch (Exception e){
            log.error("【支付】：调用支付失败",e);
            throw new HaipiException(ExceptionEnum.CREATE_PAY_FAIL);
        }
    }

    public void payNotify(HttpServletRequest request, HttpServletResponse response){
        //获取参数
        Map<String, String> params = getParams(request);
        try {
            //验证签名
            boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, AlipayConfig.SIGN_TYPE);
            if(signVerified) {
                //验证成功 对支付结果中的业务内容进行二次校验，校验成功后在response中返回success并继续业务处理，校验失败返回failure
                log.info("--------支付验证成功-----------");
                //商户订单号
                String out_trade_no = request.getParameter("out_trade_no");
                //交易状态
                String trade_status = request.getParameter("trade_status");
                //金额
                String total_amount = request.getParameter("total_amount");
                //商户appid
                String app_id = request.getParameter("app_id");
                //商户uid
                String seller_id = request.getParameter("seller_id");
                //查询订单是否交易过
                Order order = orderMapper.selectByPrimaryKey(out_trade_no);
                if (order == null) {
                    log.error("【支付】：订单号错误，未查到该订单");
                    throw new HaipiException(ExceptionEnum.ORDER_NOT_FOUND);
                }
                if(StringUtils.equals(trade_status,"TRADE_FINISHED")){
                    log.info("【支付】：支付完成");
                }else if (trade_status.equals("TRADE_SUCCESS")){
                    //校验数据
                    if (!StringUtils.equals(order.getOrderId().toString(),out_trade_no) &&
                            StringUtils.equals(order.getActuallyMoney().toString(),total_amount) &&
                            StringUtils.equals("2088621955042732",seller_id) &&
                            StringUtils.equals("2021000116688732",app_id)){
                        log.error("【支付】：无效的订单参数");
                        throw new HaipiException(ExceptionEnum.INVALID_ORDER_PARAM);
                    }
                    //更新订单状态
                    OrderStatus record = new OrderStatus();
                    record.setOrderId(order.getOrderId());
                    record.setPaymentTime(new Date());
                    record.setStatus(OrderEnums.PAID.value());
                    int count = statusMapper.updateByPrimaryKeySelective(record);
                    if (count != 1) {
                        log.error("更新订单状态失败");
                        throw new HaipiException(ExceptionEnum.UPDATE_ORDER_STATUS_FAIL);
                    }
                    log.info("--------支付成功-----------");
                }
                response.getWriter().print("success");//通知支付宝成功
                response.getWriter().flush();
            }else {//验证失败
                log.error("--------支付验证失败-----------");
                response.getWriter().print("failure");//通知支付宝失败
            }
        }catch (Exception e){
            log.error("【支付】交易失败",e);
        }

    }

    public String payReturn(HttpServletRequest request, HttpServletResponse response, Model model) throws AlipayApiException {
        //获取参数
        Map<String, String> params = getParams(request);
        //商户订单号
        String out_trade_no = request.getParameter("out_trade_no");
        //金额
        String total_amount = request.getParameter("total_amount");

        //验证签名
        boolean signVerified = AlipaySignature.rsaCheckV2(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, AlipayConfig.SIGN_TYPE);
        if(signVerified) {
            //验证
            out.println("同步验证成功");
            OrderStatus status = statusMapper.selectByPrimaryKey(out_trade_no);
            if (status.getStatus() == 2) {
                model.addAttribute("orderId",out_trade_no);
                model.addAttribute("price",total_amount);
                out.println("跳转至成功页面.......");
                return "paySuccess";
            }
        }
        out.println("同步验证失败");
        return "payError";
    }

    public Map<String,String> getParams(HttpServletRequest request) {
        //异步通知中收到的所有参数都存放到map中
        Map<String,String> params = new HashMap<String,String>();
        //获取异步通知中的所有参数
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
            out.println(name + ": " +valueStr);
        }
        out.println(params);
        return params;
    }
}
