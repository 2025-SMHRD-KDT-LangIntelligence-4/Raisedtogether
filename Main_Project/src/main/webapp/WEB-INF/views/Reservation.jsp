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
<link rel="stylesheet" href="${cpath}/css/Reservation.css">
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="logoAlert">
				<img class="logo-image" src="${cpath}/images/같이키움 로고.svg" alt="로고" />
				<span style="font-weight: 800;">나의 예약</span> <a
					href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
			<div class="reservation-tabs">
				<div class="tab active" data-target="current">수업 신청 내역</div>
				<div class="tab" data-target="past">지난 신청 내역</div>
			</div>
		</div>






		<div class="tab-content" id="current">
			<!--  수업 신청 내역 카드 HTML -->
			<div class="reservation-card" onclick="location.href='${cpath}/ReservationDetail'">
				<div class="reservation-card-container">
					<div>
						<div class="reservation-name">정세린</div>
						<div class="reservation-info">덕성여자대학교•아동가족학과</div>
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
					<div class="reservation-date">2025년 07월 17일</div>
				</div>


				<div class="reservation-container" style="padding-bottom: 20px;">
					<div class="reservation-time-box">
						<div class="reservation-label">수업 시간</div>
					</div>
					<div class="reservation-time">12 : 00 ~ 18 : 00</div>
				</div>

			</div>
		</div>



		<div class="tab-content" id="past" style="display: none;">
			<!-- 지난 예약 카드 HTML -->
			<div class="reservation-card" onclick="location.href='${cpath}/ReservationDetail'">
				<div class="reservation-card-container">
					<div>
						<div class="reservation-name">조지민</div>
						<div class="reservation-info">성신여자대학교 • 유아교육과</div>
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


		<!-- 예약 리스트 -->
		<!-- jsp
  <div class="reservation-list">
    <c:forEach var="reservation" items="${reservationList}">
      <div class="reservation-card">
        <div class="card-header">
          <div class="title">${reservation.classTitle}</div>
          <div class="status ${reservation.status}">${reservation.status}</div>
        </div>
        <div class="card-body">
          <div class="datetime">${reservation.date} / ${reservation.time}</div>
          <div class="location">${reservation.location}</div>
        </div>
      </div>
    </c:forEach>
  </div>
-->



	</div>


	<!-- 바텀 네비 -->
	<div class="bottom-nav">
		<button class="nav-item" onclick="location.href='${cpath}/Mainpage'">
			<img src="/images/Home-nocolor.svg" alt="홈 아이콘"> <span
				class="nav-text ">홈</span>
		</button>
		<button class="nav-item"
			onclick="location.href='#top'">
			<img src="/images/Calendar-pocus.svg" alt="나의예약 아이콘"> <span
				class="nav-text active" >나의예약</span>
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




	<script>
			  const tabs = document.querySelectorAll('.tab');
			  const contents = document.querySelectorAll('.tab-content');
			
			  tabs.forEach(tab => {
			    tab.addEventListener('click', () => {
			      // 1. 탭 active 처리
			      tabs.forEach(t => t.classList.remove('active'));
			      tab.classList.add('active');
			
			      // 2. 탭 내용 전환
			      const target = tab.getAttribute('data-target');
			      contents.forEach(content => {
			        if (content.id === target) {
			          content.style.display = 'block';
			        } else {
			          content.style.display = 'none';
			        }
			      });
			    });
			  });
			</script>


</body>
</html>