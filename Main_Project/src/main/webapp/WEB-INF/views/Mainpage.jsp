<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>돌봄 서비스</title>
<link rel="stylesheet" href="${cpath}/css/Mainpage.css">
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

		<div class="container" style="padding-top: 20px">
			<!-- 인삿말 및 신청 버튼 -->
			<div class="care-card">
				<div class="care-button" onclick="location.href='${cpath}/CareApply3'">
					<div class="care-button-text">돌봄 신청하기</div>
				</div>
				<div class="care-description">
					오늘의 당신에게는 휴식을,<br />아이에게는 특별한 하루를 선물하세요!
				</div>
				<div class="care-greeting">안녕하세요!</div>
				<img class="care-image" src="${cpath}/images/cat.svg" alt="케어 이미지" />
			</div>

			<!-- 기능 카드 -->
			<div class="care-options">

				<div class="care-option"
					onclick="location.href='${cpath}/SitterUrgent'"
					style="cursor: pointer;">
					<div class="option-box">
						<img class="option-icon"
							src="${cpath}/images/red and white megaphone.svg" alt="긴급 돌봄 아이콘" />
					</div>
					<div class="option-label">긴급 돌봄</div>
				</div>

				<div class="care-option" onclick="location.href='${cpath}/CCTV'"
					style="cursor: pointer;">
					<div class="option-box">
						<img class="option-icon" src="${cpath}/images/webcam.svg"
							alt="실시간 영상 아이콘" />
					</div>
					<div class="option-label">실시간 영상</div>
				</div>

			</div>


		</div>



		<!-- ===== [콕 찝은 카드 리스트] ================================================== -->
		<div class="highlight-section">
			<div class="container"
				style="background: #F7F7FF; padding-right: 0px; padding-bottom: 40px">
				<div class="title">
					같이키움이 <span class="highlight">콕</span> 집은 돌보미 <a class="more"
						href="${cpath}/SitterCare"> 더보기 <img
						src="${cpath}/images/Chevron right.svg" alt="더보기 아이콘" />
					</a>
				</div>

				<div class="cards-wrapper">
					<c:forEach items="${reviewList}" var="r">
						<div class="card"
							onclick="location.href='${cpath}/SitterDetail/${r.sitterId}'">
							<img src="${cpath}/${r.sitterPhotoImg}" alt="돌보미 이미지">
							<div class="location">${r.sitterRegion}</div>
							<div class="caregiver">${r.sitterName} 돌보미</div>
							<div class="parent">${r.parentNickname}</div>
							<div class="time">${r.formattedDate}일자리뷰</div>
							<div class="content">${r.reviewOpinion}</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- ===== [긴급 돌봄이 가능한 돌보미] ================================================== -->
		<div class="container">
			<div class="title">
				<span class="highlight">긴급돌봄</span>이 가능한 돌보미 <a class="more"
					href="${cpath}/SitterUrgent"> 더보기 <img
					src="${cpath}/images/Chevron right.svg" alt="더보기 아이콘" />
				</a>
			</div>
		</div>

		<div class="scroll-container2">
			<div class="cards-wrapper2">
				<c:forEach items="${reviewList}" var="r">
					<div class="card2"
						onclick="location.href='${cpath}/SitterDetailUrgent/${r.sitterId}'">
						<div class="container2">
							<img src="${cpath}/${r.sitterPhotoImg}" alt="돌보미 이미지">
							<div class="name">${r.sitterName} 돌보미</div>
							<img alt="더보기 버튼" src="${cpath}/images/ri_arrow-right-s-line.svg">
						</div>

						<div class="container3">
							<div class="checklist">
								<img class="check-image" src="${cpath}/images/check2-square.svg"
									alt="체크박스"> <span>신청 응답 서류 확인</span>
							</div>
							<div class="checklist">
								<img class="check-image" src="${cpath}/images/check2-square.svg"
									alt="체크박스"> <span>학력 및 경력 증명서 확인</span>
							</div>
							<div class="checklist">
								<img class="check-image" src="${cpath}/images/check2-square.svg"
									alt="체크박스"> <span>행동 강령 서약서 확인</span>
							</div>
							<div class="tags">
								<c:forEach var="tag"
									items="${fn:split(r.sitterCareTypeTag, ',')}">
									<span class="tag"># ${tag}</span>
								</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- 프터 위 빈 공간 -->
		<div class="nothing"></div>

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
			<img src="/images/Home.svg" alt="홈 아이콘"> <span
				class="nav-text  active">홈</span>
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



	<script>
		// 1~10 사이의 랜덤 숫자 생성
		const randomHour = Math.floor(Math.random() * 12) + 1;

		// 텍스트 설정
		document.getElementById("timeBox").textContent = randomHour + "시간 전 작성";
	</script>


</body>
</html>
