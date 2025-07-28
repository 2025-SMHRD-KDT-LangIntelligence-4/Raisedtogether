package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sitter {
	private String sitterId;
	private String sitterPw;
	private String sitterName;
	private String sitterEmail;
	private String sitterPhone;
	private String sitterRegion;
	private String sitterCareType;
	private String sitterWorkTime;
	private String sitterCctvAgree;
	private String sitterPhotoImg;
	private String sitterIntroduction;
	private LocalDateTime sitterJoinedAt;
	// 총 돌봄시간 추가
}
