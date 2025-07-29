package com.smhrd.web.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
	public class CareApplyController {

	@GetMapping("/CareApply2")
    public String careApplyPage() {
        return "CareApply2"; // /WEB-INF/views/CareApply2.jsp
	}
	    @PostMapping("/child/register")
	    public String handleForm(@RequestParam Map<String, String> formData) {
	        // 이름, 생년월일, 성별, 노트 등 처리 가능
	        System.out.println(formData);
	        return "redirect:/some-next-page";
	    }
	}
