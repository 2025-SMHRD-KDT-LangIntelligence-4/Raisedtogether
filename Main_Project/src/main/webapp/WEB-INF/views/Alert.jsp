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
<link rel="stylesheet" href="${cpath}/css/Alert.css">
<title>알림 확인하는 페이지</title>
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="logoAlert">
				<img class="logo-image" src="${cpath}/images/같이키움 로고.svg" alt="로고" />
				<a href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>

<div style = "padding:20px">

<div class="notification-tile" onclick="location.href='${cpath}/ChatDetail'">
  <div class="notification-avatar">
    <img src="https://placehold.co/38x38" alt="프로필">
  </div>
  <div class="notification-main">
    <div class="notification-top">
      <div class="notification-name">이희자 돌보미</div>
      <div class="notification-meta">
        <div class="notification-time">9:41 AM</div>
        <div class="notification-badge">N</div>
      </div>
    </div>
    <div class="notification-message">네 그럼 그때 뵙겠습니다~!</div>
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


</body>
</html>