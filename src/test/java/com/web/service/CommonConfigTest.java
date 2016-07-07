package com.web.service;

import com.web.config.BaseTest;
import com.web.service.CommonConfigService;
import com.web.service.impl.CommonConfigImpl;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Desc
 * Created by zzp
 * on 2016/7/5.9:24
 */
public class CommonConfigTest {

    @Resource
    private CommonConfigService commonConfigService;
//
    @Before
    public void before() {
        ApplicationContext context = new ClassPathXmlApplicationContext(
                new String[]{"classpath:config/spring.xml", "classpath:config/spring-mybatis.xml"});
        commonConfigService = (CommonConfigService) context.getBean("CommonConfigImpl");
    }

    @Test
    public void testQuery() {
        List<Map<String, Object>> list = commonConfigService.queryItemsByCondition("10000", null);
        for (Map<String, Object> map : list) {
            Set<String> keys = map.keySet();
            for (String key : keys) {
                System.out.print(key + " : " + map.get(key) + ";");
            }
            System.out.println();
        }
    }
}
