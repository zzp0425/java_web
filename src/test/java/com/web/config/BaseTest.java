package com.web.config;
//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Log4jConfigurer;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/application.xml"})
public class BaseTest {
   // protected static Logger logger = LoggerFactory.getLogger(BaseTest.class);

    public BaseTest() {
    }

    @BeforeClass
    public static void initConfig() throws Exception {
        File currentDir = new File(".");
        String[] appModuleList = currentDir.list(new FilenameFilter() {
            public boolean accept(File dir, String name) {
                return name.endsWith("-home") || name.endsWith("-web");
            }
        });
        String appWeb = null;
        String appHome = null;
        String[] appName = appModuleList;
        int appHomePath = appModuleList.length;

        for(int appWebPath = 0; appWebPath < appHomePath; ++appWebPath) {
            String log4jConf = appName[appWebPath];
            if(log4jConf.endsWith("-web")) {
                appWeb = log4jConf;
            }

            if(log4jConf.endsWith("-home")) {
                appHome = log4jConf;
            }
        }

        if(appWeb != null && appHome != null) {
            String var10 = appWeb.substring(0, appWeb.indexOf("-web"));
            String var11 = (new File(appHome)).getCanonicalPath();
            String var12 = (new File(appWeb, "src/main/webapp")).getCanonicalPath();
            File var13 = new File(var11 + "/conf/log4j.xml");

            try {
                if(var13.exists()) {
                    Log4jConfigurer.initLogging("file:" + var11 + "/conf/log4j.xml");
                } else {
                    Log4jConfigurer.initLogging("classpath:log4j.xml");
                }

                System.setProperty("app.name", var10);
                System.setProperty("app.home", var11);
                System.setProperty("webapp.root", var12);
            } catch (FileNotFoundException var9) {
                var9.printStackTrace();
            }

        } else {
            throw new FileNotFoundException("app web module(*-web) and home module(*-home) not found");
        }
    }
}
