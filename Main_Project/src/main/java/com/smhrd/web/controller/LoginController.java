package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.entity.Sitter;
import com.smhrd.web.mapper.LoginMapper;

@Controller
public class LoginController {
	@Autowired
	LoginMapper mapper;
	
	
	@PostMapping("/GoLoginParent")
	public String GoLoginParent(Parent parent, Model model, RedirectAttributes rttr) {
		int count = mapper.GoLoginParent(parent);
		
		if (count == 1) {
			return "Mainpage";
		} else {
			rttr.addFlashAttribute("message", "아이디나 비밀번호가 틀립니다.");
			return "redirect:/LoginParent";
		}
	}
	
	@PostMapping("/GoLoginSitter")
	public String GoLoginSitter(Sitter sitter, Model model, RedirectAttributes rttr) {
		int count = mapper.GoLoginSitter(sitter);
		
		if (count == 1) {
			return "Mainpage";
		} else {
			rttr.addFlashAttribute("message", "아이디나 비밀번호가 틀립니다.");
			return "redirect:/LoginSitter";
		}
	}
	
	
	
}
