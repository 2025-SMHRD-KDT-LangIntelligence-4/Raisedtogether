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
	
//	@GetMapping("/sitterCare")
//	public String selectSitterList(Model model) {
//		List<Sitter> sitterList = mapper.selectSitterList();
//        model.addAttribute("sitterList", sitterList);
//        System.out.println(sitterList);
//        return "SitterCare";
//	}
	
//    @GetMapping("/SitterDetail/{sitter_id}")
//    public String showSitterDetail(@PathVariable("sitter_id") String sitterId, Model model) {
//        Sitter sitter = mapper.findSitterById(sitterId);
//        model.addAttribute("sitter", sitter);
//        return "SitterDetail"; // 상세보기 JSP
	
	
}
