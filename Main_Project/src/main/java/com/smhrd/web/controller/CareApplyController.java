package com.smhrd.web.controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.web.entity.Child;
import com.smhrd.web.mapper.CareApplyMapper;

import jakarta.servlet.http.HttpSession;


@Controller
public class CareApplyController {
	@Autowired
	CareApplyMapper mapper;
	
	@GetMapping("/CareApply2")
	public String CareApply2() {
		return "CareApply2";
	}
	
	@GetMapping("/CareApply3")
	public String SelectChildInfo(HttpSession session, Model model) {
	    String parentId = (String) session.getAttribute("parentId");

	    if (parentId == null) {
	        model.addAttribute("message", "로그인이 필요합니다.");
	        return "CareApply2"; // 로그인 페이지 또는 이전 페이지로 리디렉션
	    }

	    List<Child> childList = mapper.selectChildByParentId(parentId);

	    // 나이 계산
	    LocalDate today = LocalDate.now();
	    for (Child c : childList) {
	        if (c.getChildBirthdate() != null) {
	            int age = Period.between(c.getChildBirthdate(), today).getYears();
	            c.setChildAge(age);
	        } else {
	            c.setChildAge(null);
	        }
	    }

	    model.addAttribute("childList", childList);
	    return "/CareApply3";
	}

	@PostMapping("/CareApply3")
	public String CareApply3(Child child, HttpSession session, Model model) {
		
		System.out.println("child name: " + child.getChildName());
		System.out.println("gender: " + child.getChildGender());
		System.out.println("생일: " + child.getChildBirthdate());
		
		// 세션에서 parent_id 가져오기
		String parentId = (String) session.getAttribute("parentId");
		if (parentId == null) {
			model.addAttribute("message", "로그인이 필요합니다.");
	        return "CareApply2";
		}else {			
		child.setParentId(parentId);
		mapper.insertChild(child);
		
		List<Child> childList = mapper.selectChildByParentId(parentId);
		
		// 3) 나이 계산해서 각 Child 객체에 넣기
	    LocalDate today = LocalDate.now();
	    for (Child c : childList) {
	        if (c.getChildBirthdate() != null) {
	            int age = Period.between(c.getChildBirthdate(), today).getYears();
	            c.setChildAge(age);
	        } else {
	            c.setChildAge(null);
	        }
	    }
	    
	    model.addAttribute("childList", childList); // 아이정보를 뷰로 반환
		
		return "CareApply3";
		}
	}
	
	@GetMapping("/DeleteChild")
	public String DeleteChild(@RequestParam("childIdx") int childIdx) {
		mapper.deleteCareByChildIdx(childIdx);
		mapper.DeleteChild(childIdx);
		return "redirect:/CareApply3";
	}

	@GetMapping("/CareApply2-1")
	public String CareApply21() {
		return "CareApply2-1";
	}

	@GetMapping("/CareApply4")
	public String CareApply4() {
		return "CareApply4";
	}

	@GetMapping("/CareApply5")
	public String CareApply5() {
		return "CareApply5";
	}

	@GetMapping("/CareApply6")
	public String CareApply6() {
		return "CareApply6";
	}

	@GetMapping("/CareApply7")
	public String visitTime() {
		return "CareApply7";
	}

	@GetMapping("/CareApply8")
	public String page1() {
		return "CareApply8"; // page1.jsp
	}

}