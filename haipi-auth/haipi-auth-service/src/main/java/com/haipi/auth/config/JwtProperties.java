package com.haipi.auth.config;

import com.haipi.auth.utils.RsaUtils;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import javax.annotation.PostConstruct;
import java.io.File;
import java.security.PrivateKey;
import java.security.PublicKey;

@Data
@ConfigurationProperties(prefix = "hp.jwt")
public class JwtProperties {

    private String secret;//密钥
    private String pubKeyPath;//公钥地址
    private String priKeyPath;//私钥地址
    private int expire;//过期时间
    private PublicKey publicKey;//公钥
    private PrivateKey privateKey;//私钥

    @PostConstruct
    public void init() {
        try{
            File pubKey = new File(pubKeyPath);
            File priKey= new File(priKeyPath);
            //如果公钥和私钥不存在
            if (!pubKey.exists() || !priKey.exists()) {
                //生成公钥和私钥
                RsaUtils.generateKey(pubKeyPath,priKeyPath,secret);
            }
            //获取公钥和私钥
            this.publicKey = RsaUtils.getPublicKey(pubKeyPath);
            this.privateKey = RsaUtils.getPrivateKey(priKeyPath);
        }catch (Exception e){
            throw new RuntimeException();
        }
    }

}
