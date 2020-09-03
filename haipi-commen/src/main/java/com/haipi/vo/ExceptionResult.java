package com.haipi.vo;

import com.haipi.enums.ExceptionEnum;
import lombok.*;

/**
 * 异常消息
 */
@Data
public class ExceptionResult {
    private int status; //状态码
    private String mesg; //消息
    private Long timestanp;//时间戳

    public ExceptionResult(ExceptionEnum em){
        this.status = em.getStatusCode();
        this.mesg = em.getMesg();
        this.timestanp = System.currentTimeMillis();
    }
}
