package com.smhrd.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import com.smhrd.web.service.AlertService;  // ✅ 정확한 경로로 수정

import java.util.HashMap;
import java.util.Map;

@Controller
public class AlarmController {

    private final AlertService alertService;

    public AlarmController(AlertService alertService) {
        this.alertService = alertService;
    }

    @PostMapping("/api/alerts")
    @ResponseBody
    public String receiveAlert(@RequestBody Map<String, String> payload) {
        String msg = payload.get("message");
        alertService.addAlert(msg);
        return "Alert received";
    }

    @GetMapping("/api/alerts/latest")
    @ResponseBody
    public Map<String, Object> getLatestAlerts() {
        Map<String, Object> response = new HashMap<>();
        response.put("messages", alertService.getAlerts());
        return response;
    }

    @GetMapping("/Alarm")
    public String alarmPage(Model model) {
        model.addAttribute("alerts", alertService.getAlerts());
        return "Alarm";
    }
}
