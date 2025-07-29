package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.entity.Sitter;

@Mapper
public interface SitterMapper {
    // 이름, 사진, 태그만 가져오는 메서드
    public List<Sitter> selectSitterList();
}
