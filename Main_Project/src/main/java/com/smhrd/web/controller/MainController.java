package com.smhrd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	public String Mainpage() {
		return "Mainpage";
	}
	
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
	public String SitterCare() {
		return "SitterCare";
	}
	
	@GetMapping("/SitterUrgent")
	public String SitterUrgent() {
		return "SitterUrgent";
	}
	
	@GetMapping("/Reservation")
	public String Reservation() {
		return "Reservation";
	}
	
	@GetMapping("/Chat")
	public String Chat() {
		return "Chat";
	}
	
	@GetMapping("/Info")
	public String Info() {
		return "Info";
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
	
	
	@GetMapping("/ViewHaram")
	public String ViewHaram(){
		return "ViewHaram";
	}
	
	@GetMapping("/test")
	public String test(){
		return "test";
	}
	
	@GetMapping("/ViewHaram2")
	public String ViewHaram2(){
		return "ViewHaram2";
	}
	
	
	
	
	
	
}
