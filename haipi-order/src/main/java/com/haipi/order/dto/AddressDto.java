package com.haipi.order.dto;

import lombok.Data;

@Data
public class AddressDto {
    private Long id;
    private String name;
    private String phone;
    private String province;
    private String city;
    private String county;
    private String tow;
    private String detailAddress;

}
