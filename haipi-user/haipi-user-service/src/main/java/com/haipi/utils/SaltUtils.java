package com.haipi.utils;

import java.util.Random;


public class SaltUtils {

    //生成随机salt
    public static String getSalt(int count){

        char[] chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()".toCharArray();

        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < count; i++) {
            char aChar = chars[new Random().nextInt(chars.length)];
            sb.append(aChar);
        }

        return sb.toString();
    }

}
