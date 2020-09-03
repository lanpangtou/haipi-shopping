package com.haipi.test;


import com.haipi.page.service.PageService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Test {

    @Autowired
    private PageService pageService;

    @org.junit.Test
    public void test1(){
        pageService.createHtml(1l);
    }
}
