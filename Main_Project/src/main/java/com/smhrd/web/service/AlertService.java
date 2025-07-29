package com.smhrd.web.service;

import org.springframework.stereotype.Service;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Service
public class AlertService {

    private final List<String> alerts = new ArrayList<>();
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public void addAlert(String message) {
        String timestamp = LocalDateTime.now().format(formatter);
        alerts.add("[" + timestamp + "] " + message);  // ✅ 시간 포함
    }

    public List<String> getAlerts() {
        return new ArrayList<>(alerts);
    }
}
