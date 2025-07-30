package com.smhrd.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CareApplyController {

@GetMapping("/CareApply2")
public String showDatePage() {
        return "CareApply2";
    }
@PostMapping("/CareApply3")
public String careApplyPage() {
    return "CareApply3"; 
}
@GetMapping("/CareApply2-1")
public String showDatePage1() {
    return "CareApply2-1"; 
}
@GetMapping("/CareApply4")
public String firstPage() {
    return "CareApply4"; 
}
@GetMapping("/CareApply5")
public String place() {
    return "CareApply5"; 
}
@GetMapping("/CareApply6")
public String place2() {
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