package com.haipi.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {


    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCgMgeJoXrYAKFL2YABv0h0/shAqn2inN3VU1HEzvrKZsUyFetTIDWt4/t0hcpoHr5PwDoXHIwZ9jqDniJp10o6zkMx1gQ9PuWePa5EiTcs0RMJFL3cFBUIoZ9m3lfiRx4XL/FeB5Db1zCQuPludgJCeUgAOFHGqNNSbJQHd6u4ShVJ4dE8A2WY8kdP31qI1PDBGTFoz9W/c68AHuWjuxURaUGotxjt7AOf8hW2YgkMTiWhetfNTnGLf9ZVRGB0ZGaUc5QvnQ1QKmQIMhJcVJTL1C8040UaItDHN2nR0knnGFQXkVQZuwZVYABAp6OfzNVAjRmWOpmqO7A5i1Iq9qHFAgMBAAECggEBAImsVWQH/m4SpIxuQR+/R8Mcj/dbTpvpGpDSiWyNwWUfS4wO4G5ROTDXxOxQazJucXpSptnj89gAECu7RLIXjzjYuVDkMEJ+gpIrSlCmaF/A0w4z4DN6otUHKdobbgYOvqKI1nPMJsd4uck23076ZljAqItf24/S2cJ1hAai51Z6H39YKBsTN3wNPxQ7Rtdnu+bwF9y/BgDrV+4ujrqCdmY6Iu7FT2UAPILPZaBDDtaLCKM0Y+fiO2VvH28iH/A3rPH3+LaFh2xgorvIRlUP4vWNuHrDXET+s2bjngSFPJxTtvmVCnt7Krj4Nz8Z7GUHv4mjQx26gfcfcXAGgSbyuEECgYEA21Fi2aNfU3HNy+HRw4+hJIGuDQSk/0dZKI/mvBQCOtst7GDPYQXk7ZL7ZV+aNjCJdoi6rn69O8XuAQIigmZyHotyKyzwHnEJfQvyvAheiq13Ajy2lldzahkNfbl2AeaLgST+Ytp9C+xENzouNwPihCdjB9coq6XyjqyUYvyRNhUCgYEAuv0ssAyMAYn3Orst3pgDlLFuP1hZrWTy0aCef4r7BaI4Es/mvrWJXiawoH71Bn1GHyhmUM21t0aE/4tG2fnSbFpg+rImxIwIXeG0DZ8IiwFUopMZTT3IhUtQe/f72Eq5+rUtXHKzNj9oD+ERAma6AM4sfQ3okK63NFfMrA9d2PECgYEAwvgODXZ8Jv1Tuz0sMlL8KS0TosUPPVWbQED1GRwcg2AX6jyB/zmzMzRoQs2DlUr+2R5h/v/ykDG8DK9uKEiUiOzkeNeBOz639a9qgZhbG6Nr2dRJaUui8Z4F7U+zRatDN3LApvafFbtbRVF2hjfw5hTxp6WxpS5ofEeVvo3TNaUCgYEAtN5ve1qnklWBbq3fkJA55no5ycwL8kzTEzHqHjSw2qIu2wN+jrnKRefmsVgcakqCqWDKlx5jxwPPYd+2iOG9SFGjvNrV5QgOj8DiCMrr2IlQ9HCU6MH6U/SlxUP5tx2RB5B4cBQChVaPscxiR5BWGrFTFyN88XYOf/LtZwD2JgECgYAHDGsfGe7JCyujpFHsPYT4hRnpXnyRiII0YDuPd4rIdhzJGl5jX+3rjCDSMJUurZtQo+YxErR/iCM7FFNOnHN2X7INNXcQxw030I8/2w9+DLUQ4kAixTBck2BtlP0Y5xlr84XPTlyltNn/v8k2O7TCUA07paE9X88PE+a5LMYhQg==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkH0gB8XS5CjkmMav6/82UxiR5KidLyb12mC+/UpRz+8tGtj63VqLh/ltILr1rarBm5dyjvgPyQhdIxhmP6vWsBDM8dM7xroPk2cwkxT2XFE2TrwDflPnwkgRDG5P+yJlFyAh8HJ7NRxE12cpz+pBKIxLgu/qAhgbiez9PlcSAHgzMuXUj9W1AluHL2hfaxsRZnTQon7mMEk095f4EZrH8UCOvH3ynZeGDLYHxExRyvqOquqWvyEMyggrkTyEo4J0J7PNHbHgGGhmTpWzfxji0dt47SoYoC64krljoZBTlPFSSDCQ/Roe1QhQdrY37bUSohGbadjwXjpOHTIztvK5OwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://6s3w5d.natappfree.cc/api/alipay/return";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://www.haipi.com/";
    // 签名方式
    public static String sign_type = "RSA2";


    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    //字符编码格式
    public static String CHARSET = "utf-8";

    //请求参数格式
    public static String FORMAT = "json";

    // 支付宝网关
    public static String log_path = "C:\\";


    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
