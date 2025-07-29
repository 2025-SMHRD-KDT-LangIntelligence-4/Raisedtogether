package com.smhrd.web.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Alarm {
    private int alarm_idx;
    private int cctv_idx; // 선택적으로 사용
    private String parent_id;
    private String alarm_content;
    private String alarm_video_file;
    private LocalDateTime alarm_created_at;
    private String alarm_is_received;
}
