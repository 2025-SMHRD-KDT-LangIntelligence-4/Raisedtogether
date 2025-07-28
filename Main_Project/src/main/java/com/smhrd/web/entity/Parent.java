package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Parent {
	@NotBlank(message = "아이디는 필수 입력입니다.")
    @Email(message = "이메일 형식으로 입력해주세요.")
	private String parentId;
	
	@NotBlank(message = "비밀번호는 필수 입력입니다.")
    @Size(min = 8, max = 20, message = "비밀번호는 8~20자 사이여야 합니다.")
	private String parentPw;
	
	@NotBlank(message = "닉네임을 입력해주세요.")
	private String parentNickname;
	
	private String parentEmail;
	
    @NotBlank(message = "전화번호를 입력해주세요.")
    @Pattern(regexp = "\\d{11}", message = "전화번호는 숫자 11자리여야 합니다.")
	private String parentPhone;
    
	private String parentRegion;
	private String parentCare_type;
	private String parentNotes;
	private LocalDateTime parentJoinedAt; 
}


