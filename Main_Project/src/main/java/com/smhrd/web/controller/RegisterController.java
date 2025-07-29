package com.smhrd.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.web.entity.Parent;
import com.smhrd.web.entity.Sitter;
import com.smhrd.web.mapper.RegisterMapper;

import jakarta.validation.Valid;


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
		return count > 0 ? "중복입니다." : "사용가능합니다.";
	}
	
	@PostMapping("/insertParent")
	public String insertParent(
	    @Valid Parent parent,
	    BindingResult bindingResult,
	    @RequestParam("parentPwCheck") String pwCheck,
	    Model model) {

	    if (bindingResult.hasErrors()) {
	        // 에러 메시지와 입력값을 모델에 담아 포워드
	        model.addAttribute("message", "입력값을 다시 확인해주세요.");
	        model.addAttribute("parent", parent);  // 입력한 값 유지
	        return "RegisterParent";
	    }

	    if (!parent.getParentPw().equals(pwCheck)) {
	        model.addAttribute("message", "비밀번호가 일치하지 않습니다.");
	        model.addAttribute("parent", parent);
	        return "RegisterParent";
	    }

	    mapper.insertParent(parent);
	    model.addAttribute("message", "회원가입이 완료되었습니다.");
	    return "LoginParent";
	}
	
	// 로그인 정보 db에 잘 전달됨. 로그인 오류시 메시지 띄우는 거 해야함
	/* Login.jsp에 추가해야함
	<c:if test="${not empty message}">
	  <div style="color: red;">${message}</div>
	</c:if>
    */
	
//------------------------------------------------------------------------------------
	@PostMapping("/sitterDuplicate") //뷰에서 jquery불러오고 js와 연결해야함
	@ResponseBody
	public String sitterDuplicate(@RequestBody Map<String, String> body) {
		String type = body.get("type");
		String value = body.get("value");
		
		int count = 0;
		
		if ("id".equals(type)) {
			count = mapper.isSitterIdExists(value);
		}else if ("nickname".equals(type)) {
			//count = mapper.isParentNicknameExists(value);
		}
		return count > 0 ? "중복입니다." : "사용가능합니다.";
	}
	
	@PostMapping("/insertSitter")
	public String insertSitter(
	    @Valid Sitter sitter,
	    BindingResult bindingResult,
	    @RequestParam("sitterPwCheck") String pwCheck,
	    Model model) {

	    if (bindingResult.hasErrors()) {
	        // 에러 메시지와 입력값을 모델에 담아 포워드
	        model.addAttribute("message", "입력값을 다시 확인해주세요.");
	        model.addAttribute("sitter", sitter);  // 입력한 값 유지
	        return "RegisterSitter";
	    }

	    if (!sitter.getSitterPw().equals(pwCheck)) {
	        model.addAttribute("message", "비밀번호가 일치하지 않습니다.");
	        model.addAttribute("sitter", sitter);
	        return "RegisterSitter";
	    }

	    mapper.insertSitter(sitter);
	    model.addAttribute("message", "회원가입이 완료되었습니다.");
	    return "LoginSitter";
	}
}
