package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.mapper.LoginMapper;

@Controller
public class LoginController {
	@Autowired
	LoginMapper mapper;
	
	
	@PostMapping("/Mainpage")
	public String MainpageWithLogin(Parent parent) {
		//mapper.MainpageWithLogin(parent);
		return "Mainpage";
	}
	
	
}
