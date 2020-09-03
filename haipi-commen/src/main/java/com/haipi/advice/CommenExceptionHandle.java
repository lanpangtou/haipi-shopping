package com.haipi.advice;

import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.vo.ExceptionResult;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 拦截所有controller 通用异常处理
 */
@ControllerAdvice
public class CommenExceptionHandle {

    //拦截处理所有的HaipiException
    @ExceptionHandler(HaipiException.class)
    public ResponseEntity<ExceptionResult> exceptionHandle(HaipiException e){
        ExceptionEnum exceptionEnum = e.getExceptionEnum();
        return ResponseEntity.status(exceptionEnum.getStatusCode()).body(new ExceptionResult(exceptionEnum));
    }
}
