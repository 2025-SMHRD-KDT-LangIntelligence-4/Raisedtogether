package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Chatting {
	private int chatIdx;
	private String chatChatter;
	private String chatContent;
	private String chatEmotion;
	private String chatFile;
	private LocalDateTime chatCreatedAt;
}
