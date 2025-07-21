package com.smhrd.web.controller;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.smhrd.web.mapper.Mapper;

@Controller
public class MainController {
	@Autowired
	Mapper mapper;
}
