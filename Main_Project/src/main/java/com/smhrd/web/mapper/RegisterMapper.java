package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RegisterMapper {

	public int isParentIdExists(String inputId);
	
}
