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
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath}/css/ReservationDetail.css">
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="backAlert">
				<a href="${cpath}/Mainpage"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <span
					style="font-weight: 800;">나의 예약</span> <img class="alert-image"
					src="${cpath}/images/수정하기.svg" alt="수정하기" />
			</div>
		</div>


		<div style="padding: 20px">
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

				<div class="reservation-container">
					<div class="reservation-date-box">
						<div class="reservation-label">방문 날짜</div>
					</div>
					<div class="reservation-date">2025년 07월 23일</div>
				</div>


				<div class="reservation-container" style="padding-bottom: 20px;">
					<div class="reservation-time-box">
						<div class="reservation-label">수업 시간</div>
					</div>
					<div class="reservation-time">12 : 00 ~ 15 : 00</div>
				</div>

			</div>
		</div>



		<div class="reservation-section">
			<div class="reservation-group">
				<div class="reservation-title">주의사항</div>
				<div class="reservation-card2">당근 알러지가 있고, 파프리카를 싫어해요.</div>
			</div>
			<div class="reservation-group">
				<div class="reservation-title">특이사항</div>
				<div class="reservation-card2">CCTV가 있어요.</div>
			</div>
			<div class="reservation-group">
				<div class="reservation-title">성향</div>
				<div class="reservation-card2">많이 활동적이예요.</div>
			</div>
		</div>


<div style = "padding:20px">
		<div class="payment-info-card">
			<div class="info-row">
				<div class="info-label">결제한 금액</div>
				<div class="info-value">60,000원</div>
			</div>
			<div class="info-row">
				<div class="info-label">받은 포인트</div>
				<div class="info-value">1,200P</div>
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
		<button class="nav-item" onclick="location.href='${cpath}/Reservation'">
			<img src="/images/Calendar-pocus.svg" alt="나의예약 아이콘"> <span
				class="nav-text active">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Chat'">
			<img src="/images/Message square.svg" alt="채팅 아이콘"> <span
				class="nav-text">채팅</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Info'">
			<img src="/images/User.svg" alt="내정보 아이콘"> <span
				class="nav-text">내정보</span>
		</button>
	</div>



</body>
</html>