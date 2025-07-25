<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>아이 선택</title>
    <link rel="stylesheet" href="/css/CareApply.css">
</head>
<body>
<div class="container">
    <!-- 상태바 -->
    <div class="status-bar">
        <div class="status-top">
            
            <div class="status-center"></div>
            
        </div>
        <div class="icon top-right">
            <div class="icon-outer"></div>
            <img class="icon-outer" src="/images/알림버튼.svg" alt="알림버튼"/>
        </div>
        <div class="icon top-left">
            <div class="icon-inner-small"></div>
            <img class="icon-inner-small" src="/images/Arrow left.png" alt="알림버튼"/>
        </div>
    </div>

    <!-- 제목 -->
    <div class="title">돌보미와 만날 아이를 선택하세요</div>

    <!-- 아이 등록 박스 -->
    <div class="register-box">
        <div class="register-text">아이 등록</div>
        <div class="checkbox">
            <div class="checkbox-inner"></div>
        </div>
    </div>

    <!-- 안내사항 -->
    <div class="info-box">
        <div class="info-title">안내사항</div>
        <div class="info-line"></div>
        <div class="info-description">
            • 동생 또는 친구가 같이 수업 받기를 원할때는 추가비용이<br>
            &nbsp;&nbsp;&nbsp;발생할 수 있습니다.(5000원)<br>
            • 돌보미 한명당 최대 3명의 아이까지 돌봐줄 수 있습니다.<br>
            &nbsp;&nbsp;&nbsp;(선생님 재량에 따라 다를 수 있습니다)
        </div>
        <div class="info-icon">
            <img class="icon-icon" src="/images/Icon.png" alt="아이콘"/>
        </div>
    </div>
</div>
</body>
</html>
