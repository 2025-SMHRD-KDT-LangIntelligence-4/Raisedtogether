package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Parent;

@Mapper
public interface KakaomapMapper {

	public Parent selectMapByParentId(String parentId);

}
