<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문 날짜 등록</title>
<link rel="stylesheet" href="/css/CareApply7.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
    <div class="title">방문 날짜 등록</div>

    <div class="section-label" style="top: 196px;">날짜 선택</div>
    <div class="date-box">
        <div class="date-text">방문 날짜를 선택해주세요</div>
        <div class="calendar-icon"></div>
    </div>

    <div class="section-label" style="top: 291px;">시간 선택</div>
    <div class="time-option selected" style="left: 20px;"></div>
    <div class="time-option selected" style="left: 161px;"></div>
    <div class="time-label" style="left: 66px;">오전</div>
    <div class="time-label" style="left: 207px;">오후</div>

    <div class="time-range" style="left: 20px;">부터</div>
    <div class="time-range" style="left: 226px;">까지</div>

    <div class="notice-box">
        <div class="notice-title">주의사항</div>
        <div class="notice-line"></div>
        <div class="notice-content">
            2시간 미만의 수업 신청 시 선생님 이동 거리에 따라서 <br>
            추가비용(5,000원)이 발생할 수 있습니다.<br>
            수업 신청 후 시간 연장 시 환불되지 않습니다.
        </div>
        <div class="warning-icon"></div>
    </div>

    <button class="next-button">다음</button>
</div>
</body>
</html>