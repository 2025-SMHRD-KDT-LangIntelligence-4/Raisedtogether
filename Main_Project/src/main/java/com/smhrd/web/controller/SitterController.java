package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.Sitter;
import com.smhrd.web.mapper.SitterMapper;

@Controller
public class SitterController {
	@Autowired
	SitterMapper mapper;
	
	@GetMapping("/sitterList")
	public String selectSitterList(Model model) {
		List<Sitter> sitterList = mapper.selectSitterList();
        model.addAttribute("sitterList", sitterList);
        System.out.println(sitterList);
        return "SitterDetail";
	}
	
	
	
}
