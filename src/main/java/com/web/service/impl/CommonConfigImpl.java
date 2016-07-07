package com.web.service.impl;

import com.web.mapper.CommonConfigMapper;
import com.web.service.CommonConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Desc
 * Created by zzp
 * on 2016/7/5.9:20
 */
@Service("CommonConfigImpl")
public class CommonConfigImpl implements CommonConfigService {

    @Resource
    private CommonConfigMapper commonConfigMapper;

    /**
     * 查询参数列表
     *
     * @param configId
     * @param name
     * @return
     */
    public List<Map<String, Object>> queryItemsByCondition(String configId, String name) {

        List<Map<String, Object>> maps = commonConfigMapper.queryItemsByCondition(configId, name);
        if (maps == null || maps.size() < 1) {
            maps = new ArrayList<Map<String, Object>>();
        }
        return maps;
    }
}
