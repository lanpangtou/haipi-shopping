package com.haipi.order.config;

import com.haipi.utils.IdWorker;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableConfigurationProperties(IdWorkerProperties.class)
public class IdWorkerConfig {

    /**
     * 注册idWorker
     * @param properties
     * @return
     */
    @Bean
    public IdWorker idWorker(IdWorkerProperties properties) {
        return new IdWorker(properties.getWorkerId(), properties.getDataCenterId());
    }
}
