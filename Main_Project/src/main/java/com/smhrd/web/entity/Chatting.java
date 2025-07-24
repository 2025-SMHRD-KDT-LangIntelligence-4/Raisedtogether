package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Chatting {
	private int chattingIdx;
	private String chattingChatter;
	private LocalDateTime chattingCreatedAt;
}
