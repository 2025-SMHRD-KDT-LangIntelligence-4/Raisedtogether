package com.smhrd.web.entity;

import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Alarm {
    private int alarmIdx;
    private int cctvIdx;
    private String parentId;
    private String alarmContent;
    private String alarmVideoFile;
    private Timestamp alarmCreatedAt;
    private boolean alarmIsReceived;
}
