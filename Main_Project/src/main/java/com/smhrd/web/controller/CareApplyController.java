package com.smhrd.web.controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Care;
import com.smhrd.web.entity.Child;
import com.smhrd.web.mapper.CareApplyMapper;

import jakarta.servlet.http.HttpSession;



@Controller
public class CareApplyController {

    private final LoginController loginController;
	@Autowired
	CareApplyMapper mapper;
	
	private static final Logger logger = LoggerFactory.getLogger(CareApplyController.class);

    CareApplyController(LoginController loginController) {
        this.loginController = loginController;
    }
	
	@GetMapping("/CareApply2")
	public String CareApply2() {
		return "CareApply2";
	}
//----------------------------------------------------------------------------------------	
	@GetMapping("/CareApply3")
	public String SelectChildInfo(HttpSession session, Model model) {
	    String parentId = (String) session.getAttribute("parentId");

	    if (parentId == null) {
	        model.addAttribute("message", "로그인이 필요합니다.");
	        return "redirect:/LoginParent";
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
//----------------------------------------------------------------------------------------
	@PostMapping("/CareApply3")
	public String CareApply3(Child child, HttpSession session, Model model) {
		// 세션에서 parent_id 가져오기
		String parentId = (String) session.getAttribute("parentId");
		if (parentId == null) {
			model.addAttribute("message", "로그인이 필요합니다.");
	        return "redirect:/LoginParent";
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
//----------------------------------------------------------------------------------------
	@GetMapping("/deleteChild")
	public String deleteChild(@RequestParam("childIdx") int childIdx) {
		mapper.deleteCareByChildIdx(childIdx);
		mapper.deleteChild(childIdx);
		return "redirect:/CareApply3";
	}
//----------------------------------------------------------------------------------------
//	@GetMapping("/CareApply4")
//	public String CareApply4(@RequestParam(name = "childIdx", required = false) String childIdxStr, Model model) {
//		logger.info("받은 childIdx 파라미터: {}", childIdxStr);
//	    if (childIdxStr != null && !childIdxStr.isEmpty()) {
//	        // "94,107" => ["94", "107"]
//	        String[] childIdxArray = childIdxStr.split(",");
//	        
//	        // 뷰로 넘기기 위해 모델에 추가
//	        model.addAttribute("selectedChildIdxs", childIdxArray);
//	    } else {
//	        // 선택값 없을 때 처리
//	        model.addAttribute("selectedChildIdxs", new String[0]);
//	    }
//	    
//	    return "CareApply4";  // JSP 이름 (뷰 이름)
//	}
//----------------------------------------------------------------------------------------	
	@GetMapping("/CareApply4") // 등록한 장소 불러오기 
	public String selectCarePlace(Care care, Model model, HttpSession session) {
		String parentId = (String) session.getAttribute("parentId");
		if (parentId == null) {
			model.addAttribute("message", "로그인이 필요합니다.");
	        return "redirect:/LoginParent";
		}else {	
		care.setParentId(parentId);
		List<Care> carePlace = mapper.selectCarePlace(care);
		model.addAttribute("carePlace", carePlace);
		return "CareApply4";
		}
	}
//----------------------------------------------------------------------------------------
//	@PostMapping("/CareApply4") // 등록한 아이 정보 가지고 가는 로직
//	public String careApply4Post(@RequestParam(name = "childIdx", required = false) List<String> childIdxList, Model model) {
//	    logger.info("받은 childIdx 리스트: {}", childIdxList);
//
//	    if (childIdxList != null && !childIdxList.isEmpty()) {
//	        model.addAttribute("selectedChildIdxs", childIdxList.toArray(new String[0]));
//	    } else {
//	        model.addAttribute("selectedChildIdxs", new String[0]);
//	    }
//
//	    return "CareApply4";
//	}
//----------------------------------------------------------------------------------------
	@PostMapping("/CareApply4") // 등록한 아이 정보 가지고 가는 로직
	public String careApply4Post(@RequestParam(name = "childIdx", required = false) List<String> childIdxList,
			Model model, Care care, HttpSession session) {
		logger.info("받은 childIdx 리스트: {}", childIdxList);
		String parentId = (String) session.getAttribute("parentId");
		if (parentId == null) {
			model.addAttribute("message", "로그인이 필요합니다.");
			return "redirect:/LoginParent";
		} else {
			care.setParentId(parentId);
			List<Care> carePlace = mapper.selectCarePlace(care);
			model.addAttribute("carePlace", carePlace);

			if (childIdxList != null && !childIdxList.isEmpty()) {
				model.addAttribute("selectedChildIdxs", childIdxList.toArray(new String[0]));
			} else {
				model.addAttribute("selectedChildIdxs", new String[0]);
			}

		}
		return "CareApply4";
	}
//----------------------------------------------------------------------------------------
	@PostMapping("CareApplyPlace")
	public String CareApplyPlace(Care care, Model model, HttpSession session) {
		String parentId = (String) session.getAttribute("parentId");
		if (parentId == null) {
			model.addAttribute("message", "로그인이 필요합니다.");
			return "redirect:/LoginParent";
		} else {
			care.setParentId(parentId);
			logger.info("CareApplyPlace - childIdx: {}", care.getChildIdx());
			mapper.insertCarePlace(care);
			List<Care> CarePlace = mapper.selectCarePlace(care);
			model.addAttribute("CarePlace", CarePlace);
			return "redirect:/CareApply4";
		}
	}
//----------------------------------------------------------------------------------------
	@GetMapping("deletePlace")
	public String deletePlace(@RequestParam("careIdx") int careIdx) {
		mapper.deletePlace(careIdx);
		return "redirect:/CareApply4";
	}
//----------------------------------------------------------------------------------------
	@GetMapping("/CareApply5")
	public String CareApply5() {
		return "CareApply5";
	}
//----------------------------------------------------------------------------------------
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

	@GetMapping("/CareApplyFinal")
	public String CareApplyFinal(RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("message", "신청이 완료되었습니다!");
		return "redirect:/Mainpage";
	}
}