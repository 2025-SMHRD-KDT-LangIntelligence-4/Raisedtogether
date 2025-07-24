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
	private String CareIsUrgent;
	private LocalDateTime CareStDt;
	private LocalDateTime CareEdDt;
	private int CareHourlyPay;
	private String CareMatchStatus;
	private String CarePayYn;
	private LocalDateTime CareCreatedAt;
}
