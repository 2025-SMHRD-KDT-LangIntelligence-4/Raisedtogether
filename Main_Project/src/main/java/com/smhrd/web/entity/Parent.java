package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Parent {
	private String parentId;
	private String parentPw;
	private String parentNickname;
	private String parentEmail;
	private String parentPhone;
	private String parentRegion;
	private String parentCare_type;
	private String parentNotes;
	private LocalDateTime parentJoinedAt; 
}


