package com.haipi.utils;

import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import java.util.UUID;

public class EncryptionUtils {

    /**
     * 加密
     * @param pass
     * @param salt
     * @return
     */
    public static String md5Hex(String pass,String salt){
        return DigestUtils.md5DigestAsHex((salt.hashCode()+pass).getBytes());
    }

    /**
     * 生成随即盐
     * @return
     */
    public static String generateSalt(){
        return StringUtils.replace(UUID.randomUUID().toString(), "-", "");
    }

}
