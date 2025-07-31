package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Child;

@Mapper
public interface CareApplyMapper {
	public void insertChild(Child child);

	public List<Child> selectChildByParentId(String parentId);

	// 아이 지우는 매퍼 1세트
	void deleteCareByChildIdx(int childIdx);
	public void DeleteChild(int childIdx);
}
