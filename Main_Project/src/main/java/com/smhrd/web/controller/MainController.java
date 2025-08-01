package com.smhrd.web.controller;

import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Sitter;
import com.smhrd.web.entity.SitterReview;
import com.smhrd.web.mapper.MainMapper;

import jakarta.servlet.http.HttpSession;

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
		List<SitterReview> reviewList2 = mapper.selectSitterReviewBottom6();
		
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
	    for (SitterReview review : reviewList) {
	        String formattedDate = review.getReviewCreatedAt().format(formatter);
	        review.setFormattedDate(formattedDate);
	    }
	    
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("reviewList2", reviewList2);
		return "Mainpage";
	}
	
	// 우빈 : PostMapping("/Mainpage") 로그인 컨트롤러에 만듦
	
	@GetMapping("/Logout")
	public String Logout(HttpSession session, RedirectAttributes rttr) {
		String parentNickname = (String) session.getAttribute("parentNickname");
		if(parentNickname==null)
		{
			parentNickname = "사용자"; // 닉네임이 없을 경우 기본값
		}
	    rttr.addFlashAttribute("message", parentNickname + "님 로그아웃 되었습니다.");
	    session.invalidate(); // 세션 무효화
	    return "redirect:/LoginParent"; // 홈 또는 로그인 페이지로 이동
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
	
	@GetMapping("/Urgent")
	public String Urgent() {
		return "Urgent";
	}
	
	@GetMapping("/CCTV")
	public String CCTV() {
		return "CCTV";
	}
	@GetMapping("/Alarm")
    public String alarmPage() {
        return "Alarm"; // /WEB-INF/views/Alarm.jsp 로 forward됨
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
	
	@GetMapping("/SitterDetail/{sitterId}")
	public String SitterDetail(@PathVariable("sitterId") String sitterId, Model model) {
		Sitter sitter = mapper.selectSitterById(sitterId);
		Double avgRating = mapper.selectAverageRatingBySitterId(sitterId);
		int randomCareTime = new Random().nextInt(301) + 100;  // (100~400시간)
		int randomCareTime2 = new Random().nextInt(13) + 4;  // (4~12시간)
		List<SitterReview> reviewList3 = mapper.selectReviewsBySitterId(sitterId);
	    System.out.println("리뷰 개수: " + reviewList3.size());
	    for (SitterReview r : reviewList3) {
	        System.out.println(r.toString());
	    }
	    // 로그 출력 (콘솔에 찍힘)
	    for (SitterReview review : reviewList3) {
	        System.out.println("parentNickname: " + review.getParentNickname()
	            + ", childName: " + review.getChildName()
	            + ", reviewOpinion: " + review.getReviewOpinion());
	    }


		model.addAttribute("sitter", sitter);
		model.addAttribute("avgRating", avgRating != null ? avgRating : 0.0);
		model.addAttribute("randomCareTime", randomCareTime);
		model.addAttribute("randomCareTime2", randomCareTime2);
		model.addAttribute("emotionCount", randomCareTime / 4);
		model.addAttribute("emotionCount2", randomCareTime / 51);
		model.addAttribute("reviewList3", reviewList3);
		return "SitterDetail";
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
	public String Info(Model model, HttpSession session) {
		String infoParentNickname = (String) session.getAttribute("parentNickname");
		int infoCareTime = new Random().nextInt(50 + 1) + 5;
		int RandPoint = new Random().nextInt(500 + 1) + 10;
		int infoPoint = 100 * RandPoint;
		int infoCoupon = new Random().nextInt(3 + 1) + 1;
		//System.out.println("세션 parentId: " + session.getAttribute("parentId"));
		//System.out.println("세션 parentNickname: " + session.getAttribute("parentNickname"));
		
		model.addAttribute("infoCareTime", infoCareTime);
		model.addAttribute("infoPoint", infoPoint);
		model.addAttribute("infoCoupon", infoCoupon);
		model.addAttribute("infoParentNickname", infoParentNickname);
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
	
	@PostMapping("/Kakaopay") // 카카오페이결제 이후 창
	public String Kakaopay() {
		return "Kakaopay";
	}
	
	
	
	@GetMapping("/ChatDetail2")
	public String ChatDetail2() {
		return "ChatDetail2";
	}
	
	
	
}
