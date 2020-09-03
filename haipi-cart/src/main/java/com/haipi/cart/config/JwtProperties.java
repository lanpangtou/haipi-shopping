package com.haipi.cart.config;

import com.haipi.auth.utils.RsaUtils;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import javax.annotation.PostConstruct;
import java.security.PublicKey;

@Data
@ConfigurationProperties(prefix = "hp.jwt")
public class JwtProperties {

    private String pubKeyPath;//公钥地址
    private PublicKey publicKey;//公钥

    @PostConstruct
    public void init() {
        try{
            //获取公钥
            this.publicKey = RsaUtils.getPublicKey(pubKeyPath);
        }catch (Exception e){
            throw new RuntimeException();
        }
    }

}