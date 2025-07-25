package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SitterReview {
	private int ReviewIdx;
	private float ReviewRatings;
	private String ReviewOpinion;
	private LocalDateTime ReviewCreatedAt;
}
