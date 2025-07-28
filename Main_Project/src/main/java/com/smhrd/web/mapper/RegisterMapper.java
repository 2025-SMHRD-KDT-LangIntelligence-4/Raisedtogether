package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Parent;

@Mapper
public interface RegisterMapper {

	public int isParentIdExists(String parentId);

	public int isParentNicknameExists(String parentNickname);
	
	public void insertParent(Parent parent);
	
	public void isSitterIdExists(String sitterId);
}
