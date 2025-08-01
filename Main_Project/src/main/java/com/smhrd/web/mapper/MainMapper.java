package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.smhrd.web.entity.Sitter;
import com.smhrd.web.entity.SitterReview;

@Mapper
public interface MainMapper {

	List<Sitter> selectSitterWithIntroduction();
	
	List<SitterReview> selectSitterReviewTop6();

	List<SitterReview> selectSitterReviewBottom6();
	
	Sitter selectSitterById(@Param("sitterId") String sitterId);
	
	Double selectAverageRatingBySitterId(String sitterId);
	
	List<SitterReview> selectReviewsBySitterId(@Param("sitterId") String sitterId);


}
