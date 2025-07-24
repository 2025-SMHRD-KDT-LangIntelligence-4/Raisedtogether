package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CCTV {
	private int cctvIdx;
	private String cctvVideo;
	private LocalDateTime cctvCreatedAt;
}
