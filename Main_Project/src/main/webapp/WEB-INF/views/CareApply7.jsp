<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
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

		<!-- 상태바 -->
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/CareApply6"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <a
					href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>
		<div class="title">방문 날짜 등록</div>

		<form action="${cpath}/CareApply8" method="get">
			<!-- 날짜선택 -->
			<div class="date-container">
				<label class="label" for="date">날짜선택</label> <input type="date"
					class="date" id="date" />
			</div>

			<!-- 시간선택 -->
			<label class="label" for="gender">시간선택</label>
			<div class="time-buttons">
				<div class="time-button active" data-gender="male"
					onclick="toggleTime(this)">오전</div>
				<div class="time-button" data-gender="female"
					onclick="toggleTime(this)">오후</div>
			</div>
				<div class="date-input-wrapper">
				  <div class="date-input-container">
				    <input type="text" placeholder="부터">
				  </div>
				  <div class="date-input-container">
				    <input type="text" placeholder="까지">
				  </div>
				</div>
			<div class="notice-box">
				<div class="notice-title">주의사항</div>
				<div class="notice-line"></div>
				<div class="notice-content">
					2시간 미만의 수업 신청 시 선생님 이동 거리에 따라서 <br> 추가비용(5,000원)이 발생할 수 있습니다.<br>
					수업 신청 후 시간 연장 시 환불되지 않습니다.
				</div>
				<img class="warning-icon"src="${cpath}/images/Icon.png" alt="주의사항" />
			</div>
			<a href="${cpath}/CareApply3"><button type="submit"
					class="btn-next">다음</button></a>
		</form>
	</div>
	<script>
    function toggleTime(element) {
      // 모든 성별 버튼에서 active 제거
      document.querySelectorAll('.time-button').forEach(btn => {
        btn.classList.remove('active');
      });
      // 선택한 버튼만 active
      element.classList.add('active');
    }
  </script>
</body>
</html>
