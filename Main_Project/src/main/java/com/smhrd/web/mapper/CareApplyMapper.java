package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.smhrd.web.entity.Care;
import com.smhrd.web.entity.Child;

@Mapper
public interface CareApplyMapper {
	public void insertChild(Child child);

	public List<Child> selectChildByParentId(String parentId);

	// 아이 지우는 매퍼 2개가 한 세트
	void deleteCareByChildIdx(int childIdx);
	public void deleteChild(int childIdx);
	
	public void insertCarePlace(Care care);

	public List<Care> selectCarePlace(Care care);
	
	public void deletePlace(int careIdx);
}

