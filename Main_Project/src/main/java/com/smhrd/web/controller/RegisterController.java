package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.web.mapper.RegisterMapper;


@RestController
public class RegisterController {
	@Autowired
	RegisterMapper mapper;
	
	@GetMapping("/isParentIdExists/{inputId}") //뷰에서 jquery불러오고 js와 연결해야함
	public String isParentIdExists(@PathVariable String inputId) {
		int count = mapper.isParentIdExists(inputId);
		if (count > 0) {
			return "중복된 아이디 입니다.";
		}else {
			return "사용가능한 아이디 입니다.";
		}
	}
}
