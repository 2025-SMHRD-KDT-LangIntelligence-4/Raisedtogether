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
	
    private String sitterId;
    private String sitterName;
    private String sitterRegion;
    private String sitterPhotoImg;
    private String sitterCareTypeTag;
    
    private String parentId;
    private String parentNickname;
    
    private String formattedDate; // 날짜 형식 변환

}
