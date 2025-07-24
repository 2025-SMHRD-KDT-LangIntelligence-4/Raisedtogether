package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Apply {
	private int ApplyIdx;
	private String ApplyQuestion;
	private LocalDateTime ApplyCreatedAt;
	private String ApplyAcceptYn;
}
