package com.smhrd.web.entity;

import java.time.LocalDateTime;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sitter {
	@NotBlank(message = "아이디는 필수 입력입니다.")
    @Email(message = "이메일 형식으로 입력해주세요.")
	private String sitterId;
	
	@NotBlank(message = "비밀번호는 필수 입력입니다.")
    @Size(min = 8, max = 20, message = "비밀번호는 8~20자 사이여야 합니다.")
	private String sitterPw;
	
	@NotBlank(message = "이름을 입력해주세요.")
	private String sitterName;
	
	private String sitterEmail;
	
    @NotBlank(message = "전화번호를 입력해주세요.")
    @Pattern(regexp = "\\d{11}", message = "전화번호는 숫자 11자리여야 합니다.")
	private String sitterPhone;
    
	private String sitterRegion;
	
	private String sitterCareType;
	
	private String sitterWorkTime;
	
	private String sitterCctvAgree;
	
	private String sitterPhotoImg;
	
	private String sitterIntroduction;
	
	private LocalDateTime sitterJoinedAt;
	
	// 총 돌봄시간 추가
	private int sitterSumCareTime;
	
	// 케어타입태그 추가
	private String sitterCareTypeTag;
	
	// 돌보미 평점 추가
	private int sitterRating;
}
