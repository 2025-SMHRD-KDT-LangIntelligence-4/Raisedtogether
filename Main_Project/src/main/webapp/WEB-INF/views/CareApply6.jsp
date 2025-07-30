<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>방문할 장소 선택</title>
<link rel="stylesheet" href="${cpath}/css/CareApply6.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
	<body>
		<div class="container">
		<!-- 상태바 -->
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/CareApply5"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
				<a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>
		<!-- 타이틀 -->	
		<div class="title">방문할 장소를 선택하세요</div>

<div class="child-card">
    <!-- 체크 버튼 -->
    <button class="check-btn" id="checkBtn">
      <svg viewBox="0 0 24 24" fill="none" class="check-icon">
        <path d="M5 13L9 17L19 7" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
    </button>

    <!-- 아이 정보 -->
     <div class="place-card selected">
            <div class="place-name">마이홈</div>
            <div class="place-address">유동 3길 28 석영빌</div>
     </div>

    <!-- 수정 버튼 -->
    <button class="icon-btn">
        <img class="icon" src="${cpath}/images/Edit 3.svg" alt="수정하기" />
    </button>

    <!-- 삭제 버튼 -->
    <button class="icon-btn">
        <img class="icon" src="${cpath}/images/Trash 2.svg" alt="지우기" />
    </button>


		<!-- 아이 등록 버튼 -->
		<a href="${cpath}/CareApply5">
		<div class="place-register">	
			<img class="place-icon"src="${cpath}/images/Plus.svg" alt="아이등록" />
			<div class="place-text">아이 등록</div>
			
		</div>
</a>
		<!-- 안내사항 -->
		
			
		</div>

		<!-- 다음 버튼 -->
		<button class="next-button">다음</button>

	</div>
	<script>
    document.addEventListener("DOMContentLoaded", function () {
      const checkBtn = document.getElementById("checkBtn");

      checkBtn.addEventListener("click", function () {
        checkBtn.classList.toggle("selected");
      });
    });
  </script>
</body>
</html>
