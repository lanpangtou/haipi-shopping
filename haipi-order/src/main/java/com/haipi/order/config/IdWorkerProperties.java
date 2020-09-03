package com.haipi.order.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "hp.worker")
public class IdWorkerProperties {

    private Long workerId;//当前机器id
    private Long dataCenterId;//序列化
}
