package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Alarm {
	private int AlarmIdx;
	private String AlarmAlarmContent;
	private String AlarmVideoFile;
	private LocalDateTime AlarmCreatedAt;
	private String AlarmIsReceived;
}
