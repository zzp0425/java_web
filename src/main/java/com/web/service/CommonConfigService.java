package com.web.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Desc
 * Created by zzp
 * on 2016/7/5.9:19
 */

public interface CommonConfigService {

    /**
     * 查询参数列表
     * @param configId
     * @param name
     * @return
     */
    List<Map<String, Object>> queryItemsByCondition(String configId, String name);
}
