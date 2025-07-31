package com.smhrd.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.entity.Sitter;

@Mapper
public interface LoginMapper {
	public int GoLoginParent(Parent parent);

	public int GoLoginSitter(Sitter sitter);

	public String selectParentNicknameById(String parentId);
}
