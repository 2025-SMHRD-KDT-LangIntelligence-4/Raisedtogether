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
<title>내정보 - 결제 내역</title>
<link rel="stylesheet" href="${cpath}/css/PaymentHistory.css">
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="backAlert">
				<a href="${cpath}/Mainpage"> <img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <img
					class="alert-image" src="${cpath}/images/알림버튼.svg" alt="알림버튼" />
			</div>
		</div>


		<div class="payment-container" onclick = "location.href='${cpath}/PaymentHistoryDetail'" >
			<!-- 지난 예약 카드 HTML -->
			<div class="reservation-card">
				<div class="reservation-card-container">
					<div>
						<div class="reservation-name">김하람</div>
						<div class="reservation-info">2019년 5월 23일 생 • 6세 여아</div>
					</div>
					<div class="reservation-status">
						<div>놀이시간</div>
					</div>
				</div>
				<div class="reservation-address">전라남도 순천시 덕월동 자이아파트 101동 2091호</div>

				<div class="payment-row">
					<div class="payment-label">카카오페이</div>
					<div class="payment-amount">60,000원</div>
					<div class="payment-type">결제</div>
				</div>

			</div>
		</div>


		<div class="payment-container" onclick = "location.href='${cpath}/PaymentHistoryDetail'" >
			<!-- 지난 예약 카드 HTML -->
			<div class="reservation-card">
				<div class="reservation-card-container">
					<div>
						<div class="reservation-name">이솔민</div>
						<div class="reservation-info">2020년 3월 23일 생 • 4세 남아</div>
					</div>
					<div class="reservation-status">
						<div>학습시간</div>
					</div>
				</div>
				<div class="reservation-address">전라남도 순천시 덕월동 덕월현대 1004동 201호</div>

				<div class="payment-row">
					<div class="payment-label">카카오페이</div>
					<div class="payment-amount">80,000원</div>
					<div class="payment-type">결제</div>
				</div>

			</div>
		</div>




	</div>


	<!-- 바텀 네비 -->
	<div class="bottom-nav">
		<button class="nav-item" onclick="location.href='${cpath}/Mainpage'">
			<img src="/images/Home-nocolor.svg" alt="홈 아이콘"> <span
				class="nav-text ">홈</span>
		</button>
		<button class="nav-item"
			onclick="location.href='${cpath}/Reservation'">
			<img src="/images/Calendar-pocus.svg" alt="나의예약 아이콘"> <span
				class="nav-text ">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Chat'">
			<img src="/images/Message square.svg" alt="채팅 아이콘"> <span
				class="nav-text">채팅</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Info'">
			<img src="/images/User-pocus.svg" alt="내정보 아이콘"> <span
				class="nav-text active" >내정보</span>
		</button>
	</div>



</body>
</html>