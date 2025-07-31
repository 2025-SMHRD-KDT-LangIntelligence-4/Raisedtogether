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
<link rel="stylesheet" href="${cpath}/css/Chat.css">
<title>Insert title here</title>
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="logoAlert">
				<img class="logo-image" src="${cpath}/images/같이키움 로고.svg" alt="로고" />
				<span style="font-weight: 800;">채팅</span> <a href="${cpath}/Alert"><img
					class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
			<div class="reservation-tabs">
				<div class="tab active" data-target="chat">일정 조율</div>
				<div class="tab" data-target="chat-end">조율 종료</div>
			</div>
		</div>



		<div class="tab-content" id="chat">
			<!-- 채팅타일 -->
			<div class="chat-tile" onclick="location.href='${cpath}/ChatDetail'">
				<div class="profile-img">
					<img src="https://placehold.co/42x42" alt="Profile">
				</div>

				<div class="chat-content">
					<div class="chat-top">
						<div class="chat-name">정세린 돌보미</div>
						<div class="chat-time">10:25</div>
					</div>
					<div class="chat-bottom">
						<div class="chat-preview">감사합니다! 좋은하루 보내세요~</div>
					</div>
				</div>
			</div>

		</div>



		<div class="tab-content" id="chat-end" style="display: none;">
		<!-- 반복문 써야할 듯 -->
		<div class="chat-tile">
				<div class="profile-img">
					<img src="https://placehold.co/42x42" alt="Profile">
				</div>

				<div class="chat-content">
					<div class="chat-top">
						<div class="chat-name">이희자 돌보미</div>
						<div class="chat-time">10:25</div>
					</div>
					<div class="chat-bottom">
						<div class="chat-preview">감사합니다! 좋은하루 보내세요~</div>
						
					</div>
				</div>
			</div><div class="chat-tile">
				<div class="profile-img">
					<img src="https://placehold.co/42x42" alt="Profile">
				</div>

				<div class="chat-content">
					<div class="chat-top">
						<div class="chat-name">이희자 돌보미</div>
						<div class="chat-time">10:25</div>
					</div>
					<div class="chat-bottom">
						<div class="chat-preview">감사합니다! 좋은하루 보내세요~</div>
						
					</div>
				</div>
			</div><div class="chat-tile">
				<div class="profile-img">
					<img src="https://placehold.co/42x42" alt="Profile">
				</div>

				<div class="chat-content">
					<div class="chat-top">
						<div class="chat-name">이희자 돌보미</div>
						<div class="chat-time">10:25</div>
					</div>
					<div class="chat-bottom">
						<div class="chat-preview">감사합니다! 좋은하루 보내세요~</div>
						
					</div>
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
				class="nav-text ">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='#top'">
			<img src="/images/Message square pocus.svg" alt="채팅 아이콘"> <span
				class="nav-text active">채팅</span>
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