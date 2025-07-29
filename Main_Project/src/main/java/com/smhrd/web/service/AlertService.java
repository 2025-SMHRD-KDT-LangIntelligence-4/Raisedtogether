package com.smhrd.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.smhrd.web.entity.Alarm;
import com.smhrd.web.mapper.AlarmMapper;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class AlertService {

    @Autowired
    private AlarmMapper mapper;

    public void addAlert(String content, String parentId) {
        Alarm alarm = new Alarm();
        alarm.setAlarm_content(content);
        alarm.setAlarm_created_at(LocalDateTime.now());
        alarm.setAlarm_is_received("N");
        alarm.setAlarm_video_file(null); // 나중에 추가 가능
        alarm.setParent_id(parentId);    // ✔️ 컬럼명과 맞춰 변경
        mapper.insertAlarm(alarm);
    }


    public List<Alarm> getAlertsByParent(String parentId) {
        return mapper.selectByParentId(parentId);
    }
}
