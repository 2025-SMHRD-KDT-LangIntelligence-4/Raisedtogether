package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SitterReview {
	private int SitterReviewIdx;
	private float SitterReviewRatings;
	private String SitterReviewOpinion;
	private LocalDateTime SitterReviewCreatedAt;
}
