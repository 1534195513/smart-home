package com.zzq.mapper;

import com.zzq.model.Datapoint;

public interface DatapointMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Datapoint record);

    int insertSelective(Datapoint record);

    Datapoint selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Datapoint record);

    int updateByPrimaryKey(Datapoint record);
}