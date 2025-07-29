package com.smhrd.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CareApplyController {

    @GetMapping("/CareApply2")
    public String showDatePage() {
        return "CareApply2";
    }
@GetMapping("/CareApply3")
public String careApplyPage() {
    return "CareApply3"; // templates/CareApply3.html
}
@GetMapping("/CareApply2-1")
public String showDatePage1() {
    return "CareApply2-1"; // templates/CareApply3.html
}
}