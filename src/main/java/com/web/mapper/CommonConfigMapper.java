package com.web.mapper;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created by zzp on 2016/5/4.
 */
public interface CommonConfigMapper {
    /**
     * 查询参数列表
     * @param configId
     * @param name
     * @return
     */
    List<Map<String, Object>> queryItemsByCondition(@Param("configId") String configId, @Param("name") String name);
}
