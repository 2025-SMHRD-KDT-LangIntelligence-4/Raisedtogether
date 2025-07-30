package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.mapper.KakaomapMapper;

@Controller
public class KakaomapController {
	@Autowired
	KakaomapMapper mapper;
	
	@GetMapping("/SitterUrgentApply")
	public String SitterUrgentApply() {
		return "/SitterUrgentApply";
	}
	// 위도 경도 테이블 컬럼 넣어주고 해야함 7/30
	@GetMapping("SitterUrgentApply/{parentId}")
	public String showKakaomap(@PathVariable("parentId") String parentId, Model model) {
		Parent parent = mapper.selectMapByParentId(parentId);
		return "/SitterUrgentApply2";
	}
}
