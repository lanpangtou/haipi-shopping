package com.haipi.exception;

import com.haipi.enums.ExceptionEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 自定义异常
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
public class HaipiException extends RuntimeException{

    private ExceptionEnum exceptionEnum;
}
