package com.smhrd.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.smhrd.web.entity.Alarm;
import com.smhrd.web.mapper.AlarmMapper;

import java.sql.Timestamp;
import java.util.List;

@Service
public class AlertService {

    @Autowired
    private AlarmMapper mapper;

    public void addAlert(String content, String parentId) {
        Alarm alarm = new Alarm();
        alarm.setAlarmContent(content);                         // ✔️ CamelCase
        alarm.setAlarmCreatedAt(new Timestamp(System.currentTimeMillis())); // ✔️ java.sql.Timestamp
        alarm.setAlarmIsReceived(false);                        // ✔️ boolean
        alarm.setAlarmVideoFile(null);                          // ✔️ optional field
        alarm.setParentId(parentId);                            // ✔️ CamelCase
        mapper.insertAlarm(alarm);                              // ✔️ Mapper 호출
    }

    public List<Alarm> getAlertsByParent(String parentId) {
        return mapper.selectByParentId(parentId);               // ✔️ Mapper 호출
    }
}
