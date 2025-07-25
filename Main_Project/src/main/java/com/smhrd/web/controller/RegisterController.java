package com.smhrd.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.mapper.RegisterMapper;


@Controller
public class RegisterController {
	@Autowired
	RegisterMapper mapper;
	
	// 아이디, 닉네임 중복 확인
	@PostMapping("/parentDuplicate") //뷰에서 jquery불러오고 js와 연결해야함
	@ResponseBody
	public String parentDuplicate(@RequestBody Map<String, String> body) {
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

	@PostMapping("/insertParent")
	public String insertParent(Parent parent, Model model, RedirectAttributes redirectAttributes) {

	    mapper.insertParent(parent);
	    redirectAttributes.addFlashAttribute("message", "회원가입이 완료되었습니다.");
	    return "redirect:/LoginParent";
	}

}
