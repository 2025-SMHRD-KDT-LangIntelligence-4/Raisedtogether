package com.smhrd.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.List;

@RestController
public class AlarmController {

    // 절대 경로 지정
    private static final String LOG_FILE_PATH = "C:/Users/smart/git/Raisedtogether/Main_Project/logs/alert.log";

    @GetMapping("/api/log")
    public String getAlarmLog() {
        Path logPath = Paths.get(LOG_FILE_PATH);

        // 파일 존재 여부 확인
        if (!Files.exists(logPath)) {
            return "🚫 로그 파일이 존재하지 않습니다: " + LOG_FILE_PATH;
        }

        try {
            // UTF-8로 파일 읽기
            List<String> lines = Files.readAllLines(logPath, StandardCharsets.UTF_8);

            if (lines.isEmpty()) {
                return "📭 현재 로그가 없습니다.";
            }

            return String.join("\n", lines);

        } catch (IOException e) {
            e.printStackTrace();  // 서버 로그에 출력
            return "🚫 로그 파일 읽기 중 오류 발생:\n" + e.toString();
        }
    }
}
