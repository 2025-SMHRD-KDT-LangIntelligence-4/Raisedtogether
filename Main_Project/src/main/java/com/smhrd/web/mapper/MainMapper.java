package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Sitter;

@Mapper
public interface MainMapper {

	List<Sitter> selectSitterWithReviews();

	
	
}
