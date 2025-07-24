package com.smhrd.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.web.mapper.RegisterMapper;


@RestController
public class RegisterController {
	@Autowired
	RegisterMapper mapper;
	
	@PostMapping("/checkDuplicate") //뷰에서 jquery불러오고 js와 연결해야함
	public String checkDuplicate(@RequestBody Map<String, String> body) {
		String type = body.get("type");
		String value = body.get("value");
		
		int count = 0;
		
		if ("id".equals(type)) {
			count = mapper.isParentIdExists(value);
		}else if ("nickname".equals(type)) {
			count = mapper.isParentNicknameExists(value);
		}
		
		return count > 0 ? "중복된 " + type + "입니다." : "사용가능한 " + type + "입니다.";
	}
}
