package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.smhrd.web.entity.Alarm;

@Mapper
public interface AlarmMapper {
    void insertAlarm(Alarm alarm);  // ← 어노테이션 없이 선언만!
    List<Alarm> selectByParentId(String parentId); // XML에서 구현
}
