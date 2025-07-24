package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Croom {
	private int CroomIdx;
	private String CroomTitle;
	private String CroomInfo;
	private String CroomImg;
	private LocalDateTime CroomCreatedAt;
	private String CroomStatus;
}
