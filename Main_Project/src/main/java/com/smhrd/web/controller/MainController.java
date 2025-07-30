package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.web.entity.Sitter;
import com.smhrd.web.entity.SitterReview;
import com.smhrd.web.mapper.MainMapper;

@Controller
public class MainController {
	@Autowired
	MainMapper mapper;
	
	@GetMapping("/")
	public String Startpage() {
		return "Startpage";
	}
	
	@GetMapping("/Mainpage")
	public String Mainpage(Model model) {
		List<SitterReview> reviewList = mapper.selectSitterReviewTop6();
		
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
	    for (SitterReview review : reviewList) {
	        String formattedDate = review.getReviewCreatedAt().format(formatter);
	        review.setFormattedDate(formattedDate);
	    }
	    
		model.addAttribute("reviewList", reviewList);
		return "Mainpage";
	}
	
	// 우빈 : PostMapping("/Mainpage") 로그인 컨트롤러에 만듦
	
	@GetMapping("/Alert")
	public String Alert() {
		return "Alert";
	}
	
	@GetMapping("/Login")
	public String Login() {
		return "Login";
	}
	
	@GetMapping("/LoginParent")
	public String LoginParent() {
		return "LoginParent";
	}
	
	
	@GetMapping("/LoginSitter")
	public String LoginSitter() {
		return "LoginSitter";
	}
	
	@GetMapping("/RegisterParent")
	public String RegisterParent() {
		return "RegisterParent";
	}
	
	@GetMapping("/RegisterSitter")
	public String RegisterSitter() {
		return "RegisterSitter";
	}
	
	@GetMapping("/FindPassword")
	public String FindPassword() {
		return "FindPassword";
	}
	
	@GetMapping("/CareApply")
	public String CareApply() {
		return "CareApply";
	}
	
	@GetMapping("/Urgent")
	public String Urgent() {
		return "Urgent";
	}
	
	@GetMapping("/CCTV")
	public String CCTV() {
		return "CCTV";
	}

	@GetMapping("/SitterCare")
	public String SitterCare(Model model) {
		List<Sitter> sitterList = mapper.selectSitterWithIntroduction();
		model.addAttribute("sitterList", sitterList);
		return "SitterCare";
	}
	
	@GetMapping("/SitterUrgent")
	public String SitterUrgent(Model model) {
		List<Sitter> sitterList = mapper.selectSitterWithIntroduction();
		model.addAttribute("sitterList", sitterList);
		return "SitterUrgent";
	}
	
	@GetMapping("/SitterDetail")
	public String SitterDetail() {
		return "SitterDetail";
	}
	
	@GetMapping("/SitterDetailUrgent")
	public String SitterDetailUrgent() {
		return "SitterDetailUrgent";
	}
	
	@GetMapping("/Reservation")
	public String Reservation() {
		return "Reservation";
	}
	
	@GetMapping("/ReservationDetail")
	public String ReservationDetail() {
		return "ReservationDetail";
	}
	
	@GetMapping("/Chat")
	public String Chat() {
		return "Chat";
	}
	
	@GetMapping("/ChatDetail")
	public String ChatDetail() {
		return "ChatDetail";
	}
	
	@GetMapping("/Info")
	public String Info() {
		return "Info";
	}
	
	@GetMapping("/KidInfo")
	public String KidInfo() {
		return "KidInfo";
	}
	
	@GetMapping("/Destination")
	public String Destination() {
		return "Destination";
	}

	@GetMapping("/PaymentHistory")
	public String PaymentHistory() {
		return "PaymentHistory";
	}
	

	@GetMapping("/PaymentHistoryDetail")
	public String PaymentHistoryDetail() {
		return "PaymentHistoryDetail";
	}

	
// 아래는 View 연습용 페이지 주소창에 /View1 쳐서 들어감 -------------------------------	
	@GetMapping("/View1")
	public String View1() {
		return "View1";
	}
	
	@GetMapping("/View2")
	public String View2() {
		return "View2";
	}
	
	@GetMapping("/View3")
	public String View3() {
		return "View3";
	}
	
	
	@GetMapping("/test")
	public String test(){
		return "test";
	}
	
	
	@GetMapping("/LoginParent2")
	public String LoginParent2() {
		return "LoginParent2";
	}
	
	@GetMapping("/매칭방식")
	public String 매칭방식() {
		return "매칭방식";
	}
	
	
	@GetMapping("/결제_쿠폰_등록하기")
	public String 결제_쿠폰_등록하기() {
		return "결제_쿠폰_등록하기";
	}
	
	@GetMapping("/카카오페이결제")
	public String 카카오페이결제() {
		return "카카오페이결제";
	}
	
	
	
}
