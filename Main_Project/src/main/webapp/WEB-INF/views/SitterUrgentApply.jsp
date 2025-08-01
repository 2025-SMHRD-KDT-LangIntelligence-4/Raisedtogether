<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${cpath}/css/SitterUrgentApply.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Kakao 지도 시작하기</title>
<!-- Kakao Maps API -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b"></script>
<!-- 외부 JS 파일 포함 -->
<script type="text/javascript" src="${cpath}/js/Kakaomap.js"></script>

</head>
<body>

<div class = "content-container">

		<div class="start-screen">
			<div class="logoAlert">
				<img class="logo-image" src="${cpath}/images/같이키움 로고.svg" alt="로고" />
				<span style="font-weight: 800;">근처 돌보미 지도</span>
				<a href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>


		<!-- 지도를 표시할 div -->
		
			<div id="map"  style=" max-width: 430px; height:782px; border-radius: 15px;  "></div>


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
			<img src="/images/User.svg" alt="내정보 아이콘"> <span
				class="nav-text">내정보</span>
		</button>
	</div>
</div>

</body>
</html>
