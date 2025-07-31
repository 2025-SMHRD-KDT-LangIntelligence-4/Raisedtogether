package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Child;

@Mapper
public interface CareApplyMapper {
	public void insertChild(Child child);

	public List<Child> selectChildByParentId(String parentId);
}
