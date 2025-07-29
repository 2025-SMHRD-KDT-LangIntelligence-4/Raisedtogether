package com.smhrd.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.web.entity.Alarm;
import com.smhrd.web.entity.Sitter;


@Mapper
public interface AlarmMapper {

    @Insert("INSERT INTO t_alarm (parent_id, alarm_content, alarm_video_file, alarm_created_at, alarm_is_received) " +
            "VALUES (#{parent_id}, #{alarm_content}, #{alarm_video_file}, #{alarm_created_at}, #{alarm_is_received})")
    public void insertAlarm(Alarm alarm);

    @Select("SELECT * FROM t_alarm WHERE parent_id = #{parentId} ORDER BY alarm_created_at DESC")
    public List<Alarm> selectByParentId(String parentId);
}
