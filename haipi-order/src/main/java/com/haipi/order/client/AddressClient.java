package com.haipi.order.client;

import com.haipi.order.dto.AddressDto;

import java.util.ArrayList;
import java.util.List;

/**
 * 收货人信息假数据
 */
public abstract class AddressClient {

    private static final List<AddressDto> addressList = new ArrayList<AddressDto>(){
        {
            AddressDto address1 = new AddressDto();
            address1.setId(1l);
            address1.setName("逝去的青春");
            address1.setPhone("18782939488");
            address1.setProvince("四川");
            address1.setCity("成都");
            address1.setCounty("郫都区");
            address1.setTow("红光镇");
            address1.setDetailAddress("西区大道四川某知名大学");
            add(address1);

            AddressDto address2 = new AddressDto();
            address2.setId(2l);
            address2.setName("浪迹天涯");
            address2.setPhone("19987467839");
            address2.setProvince("四川");
            address2.setCity("成都");
            address2.setCounty("武侯区");
            address2.setTow("某某镇");
            address2.setDetailAddress("某大道四川某知名大学");
            add(address2);
        }
    };

    /**
     * 根据id获取地址
     * @param id
     * @return
     */
    public static AddressDto findAddressById(Long id){
        for (AddressDto addressDto : addressList) {
            if (addressDto.getId() == id) {
                return addressDto;
            }
        }
        return null;
    }
}
