package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Desc
 * Created by zzp
 * on 2016/5/4.17:33
 */
@Controller
@RequestMapping("/")
public class ConfigController {

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("queryParam")
    public String queryParam(){
        return "/tpl/common/param/queryParam";
    }
}
