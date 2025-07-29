package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.entity.Sitter;

import jakarta.validation.Valid;

@Mapper
public interface RegisterMapper {

	public int isParentIdExists(String parentId);

	public int isParentNicknameExists(String parentNickname);
	
	public void insertParent(@Valid Parent parent);
	
	public int isSitterIdExists(String sitterId);

	public void insertSitter(@Valid Sitter sitter);
}
