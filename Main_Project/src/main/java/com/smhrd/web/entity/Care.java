package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Care {
	private int CareIdx;
	private String CarePlace;
	private String CareAddress1;
	private String CareAddress2;
	private String CareAddress3;
	private String CareAddress4;
	private String CareNotes;
	
	private LocalDateTime CareStDt;
	private LocalDateTime CareEdDt;
	
	private String CareIsUrgent;
	private int CareHourlyPay;
	private String CareMatchStatus;
	private String CarePayYn;
	private LocalDateTime CareCreatedAt;
	
	// 조인
	private String parentId;
	private String childName;
	private int childIdx;
	
}
