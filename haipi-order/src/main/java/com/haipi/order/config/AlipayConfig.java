package com.haipi.order.config;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {


    // 应用ID,APPID，收款账号即APPID对应支付宝账号
    public static String APP_ID = "";

    // 商户私钥，PKCS8格式RSA2私钥
    public static String MERCHANT_PRIVATE_KEY = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCsoYksUtHQV/lYFktoClVOK++uT2zH6AYDQaVFL0DWArPkxoNim7G2hqiBvgMMW69s9VKek3eiiqZ34o3eZBLufpcF8R05VNe6SqmSJ9M/PVjfSEoNsAtO8CdTeqP/+5mfWXQyRcuZLk9bUTAUdyUUhvAxlAt/QobyTa+f++tTQJH0J+K6jrTLVcGZUY8ONTd/ctxgQy3QVntTK97eF9UIPOx7kWr8ixs92jN6QGZo3JFm9j32J6ND/hArRqBusmro6H5dkRIckFMm4JQBGLhkSGt6PhpGg2IRekQBP6Azxawi2HoZzWet/wwelhZgJ6H8fgJJbZFUmx3vvuSKnqilAgMBAAECggEAKD8UyueYENmhwR6Zf+0AzFPD8kCEHOsEE9hHHqUQmZRRumFpmiCwQtyMBot1DHmHoYBkPaIlvxhSDRsddh6gp0eOEA2RgZ89GCp19CQixNiZkpy43w4O5N1qXbT27SQMQbFKPLo26ER6rdB0xCCu3WVENFrOf2HUMkNYUZUa3PKLwqIt0nIcvRID8iFv/yQJQwx4FICzQbhNV3gO2iJsPB/Ta7JLhgZb7/OoTAy14JlUcg3z/NejyyZyspofope3keop0rn49w5va1u54/y78Lv5g/3SwI8fTHmkN3sUu5Ov1mnCQiSTpdGnZedM3y1SO0U3hBMTewngzxbceL51VQKBgQDY4HEN++Rxh7YdmYp/wQWxpoH376L6sEBFkuv0Aw0LlnuGO8clEXTWzSj3DkkaxKhGqG/5UsgJgiMs1phAusv/1UWlF3Mau95YJYiKFPWG82TzZB8fFzTj2l3q3f6qz6gI7MOpMcHMka0KujPCsVdOPt/gU8GV/L+uBTOJPy8i4wKBgQDLxcmfXpwRcssJLiYoviF1aMmQ7vIRm7Z0N7CFxPRUN5By6D/5NV0s3FVY6QI0R5zPHoYquLm/rWjsQqfecUa05884bXHL/5wkBmbHbTDiGRxDsatCL6kbSJqehKmXEOc+aU7k+wgS+Cy4zM5zaKyMXN3fUe6KS42P+BaDspj01wKBgHgDK0ybuXyBpuuWTagIfkgiZgV3nG6xHb/iX6O2FH/3E//iEH+Yu1kqSqL8SsP/U0dWajBD+OIaG7DyR2p6c+zsbg+/fDitAYsxqe8PThcRlSmCnB4uT1xPOG2Bzy1ioA/gRR3ZpO65JlKrW30/eZqY/HY8owGGzeNUiYJHbqQVAoGAWdO0z7ZLIj3yVverBqbZ5QHuaR+MQkrcIVszS6TI+B8OZDkRinAFxPLUBL+iox02eO9Bwa9w4pg0+oFfsuVIgBL3/C3yzjS9xfu0bxEpTWI4XXcCwch0yXw1/M8KW3euGIsfpj0rEAGq5UQTdjicZ7vAauOZPgmUO/TnJ+MhHj0CgYEA1+3hxwVzcFrkkcbE8XFyGxNUavMoutIY2rtvFT7DZ4oIjcR/JdAffi1FhwWq6tl94xab3pWZNAYv4xJuMI57mWwx8ExeVSTrCFD3juV2/EtAhSmY5leLcCZ0bmQrewx/4NxX2/8ZwCZvzjrWVmDB1zArVbC3Kr/rES6QUaSqmMw=";

    // 支付宝公钥,对应APPID下的支付宝公钥。
    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkH0gB8XS5CjkmMav6/82UxiR5KidLyb12mC+/UpRz+8tGtj63VqLh/ltILr1rarBm5dyjvgPyQhdIxhmP6vWsBDM8dM7xroPk2cwkxT2XFE2TrwDflPnwkgRDG5P+yJlFyAh8HJ7NRxE12cpz+pBKIxLgu/qAhgbiez9PlcSAHgzMuXUj9W1AluHL2hfaxsRZnTQon7mMEk095f4EZrH8UCOvH3ynZeGDLYHxExRyvqOquqWvyEMyggrkTyEo4J0J7PNHbHgGGhmTpWzfxji0dt47SoYoC64krljoZBTlPFSSDCQ/Roe1QhQdrY37bUSohGbadjwXjpOHTIztvK5OwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String NOTIFY_URL = "http://qtxd9z.natappfree.cc/api/order/notify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String RETURN_URL = "http://www.haipi.com/pay-success.html";

    // 签名方式
    public static String SIGN_TYPE = "RSA2";

    // 支付宝网关
    public static String GATEWAYURL = "https://openapi.alipaydev.com/gateway.do";

    //字符编码格式
    public static String CHARSET = "utf-8";

    //请求参数格式
    public static String FORMAT = "json";

    // 日志路径
    public static String LOG_PATH = "C:\\";

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(LOG_PATH + "alipay_log_" + System.currentTimeMillis()+".txt");
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
