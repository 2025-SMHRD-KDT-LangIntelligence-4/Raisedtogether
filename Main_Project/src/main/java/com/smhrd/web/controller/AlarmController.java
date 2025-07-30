package com.smhrd.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import com.smhrd.web.service.AlertService;
import com.smhrd.web.entity.Alarm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AlarmController {

    private final AlertService alertService;

    public AlarmController(AlertService alertService) {
        this.alertService = alertService;
    }

    // ✅ 알림 수신 API (Python 측에서 호출)
    @PostMapping("/api/alerts")
    @ResponseBody
    public String receiveAlert(@RequestBody Map<String, String> payload) {
        String msg = payload.get("message");
        String parentId = payload.get("parentId");

        if (msg == null || parentId == null) {
            return "Invalid request: message and parentId required";
        }

        alertService.addAlert(msg, parentId);
        return "Alert received";
    }

    // ✅ 보호자 ID별 알림 리스트 조회 API (JSP의 JS에서 호출)
    @GetMapping("/api/alerts/{parentId}")
    @ResponseBody
    public Map<String, Object> getAlertsByParent(@PathVariable String parentId) {
        Map<String, Object> response = new HashMap<>();
        List<Alarm> alerts = alertService.getAlertsByParent(parentId);
        response.put("messages", alerts);
        return response;
    }

    // ✅ 알림 JSP 페이지 렌더링
    @GetMapping("/Alarm")
    public String alarmPage(@RequestParam("parentId") String parentId, Model model) {
        List<Alarm> alerts = alertService.getAlertsByParent(parentId);
        model.addAttribute("alerts", alerts);
        model.addAttribute("parentId", parentId); // JS에서 활용됨
        return "Alarm"; // Alarm.jsp 또는 Alarm.html
    }
}
