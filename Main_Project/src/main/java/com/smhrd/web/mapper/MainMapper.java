package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Sitter;
import com.smhrd.web.entity.SitterReview;

@Mapper
public interface MainMapper {

	List<Sitter> selectSitterWithIntroduction();
	
	List<SitterReview> selectSitterReviewTop6();

}
