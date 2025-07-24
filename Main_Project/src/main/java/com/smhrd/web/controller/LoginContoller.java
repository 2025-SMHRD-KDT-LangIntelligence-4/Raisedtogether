package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.smhrd.web.mapper.LoginMapper;

@Controller
public class LoginContoller {
	@Autowired
	LoginMapper mapper;
}
