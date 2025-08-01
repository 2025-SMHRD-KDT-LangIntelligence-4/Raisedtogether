<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${cpath}/css/Info.css">
<title>내 정보 페이지</title>
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="backAlert">
				<a href="${cpath}/Mainpage"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <span
					style="font-weight: 800;">내 정보</span> <img class="alert-image"
					src="${cpath}/images/설정버튼.svg" alt="설정하기" />
			</div>
		</div>


		<!-- 프로필 영역 -->
		<div class="profile-container">
			<div class="profile-top">
				<div class="user-name">${infoParentNickname } 부모님</div>
				<div class="care-time">돌봄 ${infoCareTime }시간</div>
			</div>
			<div class="info-box">
				<div class="info-set">
					<div class="info-label">쿠폰함</div>
					<div class="info-value">${infoCoupon }장</div>
				</div>
				<div class="info-set">
					<div class="info-label">포인트</div>
					<div class="info-value">${infoPoint }P</div>
				</div>
			</div>
		</div>

		<!-- 리스트 타일 -->
		<div class="list-tile" onclick="'#'">
			<div class="list-label">내 아이 정보</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile" onclick="'#'"> 
			<div class="list-label">방문 돌봄 장소</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile"  onclick="location.href='${cpath}/PaymentHistory'">
			<div class="list-label">결제 내역</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile"  onclick="'#'">
			<div class="list-label">자주 묻는 질문</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile" onclick="'#'"> 
			<div class="list-label">회원 혜택</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile"  onclick="location.href='${cpath}/Logout'">
			<div class="list-label">로그아웃</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>
		<div class="list-tile" onclick="location.href='${cpath}/'">
			<div class="list-label">회원탈퇴</div>
			<img class="list-icon" src="/images/Chevron right.svg">
		</div>

		<div style="padding-top: 80px"></div>

		<!-- 프터 -->

		<footer class="footer">
			<div class="footer-content">
				<div class="footer-links">
					<a href="#">이용약관</a> <a href="#">개인정보 처리방침</a> <a href="#">고객센터</a>
				</div>
				<div class="footer-info">
					<p>&copy; 2025 같이키움. All rights reserved.</p>
				</div>
			</div>
		</footer>
	</div>








	<!-- 바텀 네비 -->
	<div class="bottom-nav">
		<button class="nav-item" onclick="location.href='${cpath}/Mainpage'">
			<img src="/images/Home-nocolor.svg" alt="홈 아이콘"> <span
				class="nav-text ">홈</span>
		</button>
		<button class="nav-item"
			onclick="location.href='${cpath}/Reservation'">
			<img src="/images/Calendar.svg" alt="나의예약 아이콘"> <span
				class="nav-text">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Chat'">
			<img src="/images/Message square.svg" alt="채팅 아이콘"> <span
				class="nav-text">채팅</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Info'">
			<img src="/images/User-pocus.svg" alt="내정보 아이콘"> <span
				class="nav-text active">내정보</span>
		</button>
	</div>




</body>
</html>