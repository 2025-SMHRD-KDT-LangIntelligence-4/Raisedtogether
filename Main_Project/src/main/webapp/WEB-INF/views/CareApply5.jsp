<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>방문 장소 등록</title>
    <link rel="stylesheet" href="/css/CareApply5.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
	<!-- 상태바 -->
    	<div class="start-screen">
      		<div class="logoAlert">
         	<a href="${cpath}/CareApply4"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
         	<a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
      		</div>
   		</div>

    <div class="title">방문 장소 등록</div>

    <div class="input-group">
        <label>방문 장소 명칭</label>
        <div class="input-box">방문 장소의 명칭을 입력해주세요</div>
    </div>

    <div class="input-group address-group">
        <label>주소</label>
        <div class="input-with-button">
            <div class="input-box">우편번호 검색</div>
            <div class="search-btn">
            <a href="${cpath}/#">
            <img class="search-icon" src="${cpath}/images/Search.svg" alt="검색하기" />
            </a>
        </div>
        </div>
    </div>

    <div class="input-box detail-address">상세 주소 입력</div>

    <div class="input-group">
        <label>특이사항</label>
        <div class="textarea-box">
            예) CCTV가 있어요, 강아지가 있어요 등
        </div>
    </div>
	<a href="${cpath}/CareApply6">
		<button class="confirm-btn">다음</button>
	</a>
</div>
</body>
</html>
