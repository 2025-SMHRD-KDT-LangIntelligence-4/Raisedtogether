package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Child {
	private int childIdx;
	private String childName;
	private LocalDateTime childBirthdate;
	private String childGender;
	private String childNotes;
	private LocalDateTime childCreatedAt;
}
