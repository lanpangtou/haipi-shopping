package com.haipi.gateway.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@ConfigurationProperties(prefix = "hp.filter")
public class FilterProperties {

    private List<String> allowPath;
}
