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
    <link rel="stylesheet" href="/css/CareApply4.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
    <!-- 상태바 -->
    <div class="start-screen">
      <div class="logoAlert">
         <a href="${cpath}/Mainpage"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
         <a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
      </div>
   </div>

    <!-- 제목 -->
    <div class="title">돌보미와 만날 아이를 선택하세요</div>

    <!-- 장소 등록 박스 -->
    <a href="${cpath}/CareApply5">
    <div class="place-box">
        <div class="place-text">장소 등록</div>
        <img class="next" src="${cpath}/images/Plus.svg" alt="추가하기" />
    </div>
	</a>

</div>
</body>
</html>
