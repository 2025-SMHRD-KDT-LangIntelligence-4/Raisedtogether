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
<title>긴급돌봄 시터 디테일 </title>
<link rel="stylesheet" href="${cpath}/css/SitterDetailUrgent.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<div class="content-container">

		<div class="start-screen">
			<div class="backAlert">
				<a href="${cpath}/Mainpage"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <a
					href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="알림버튼" /> </a>
			</div>
		</div>


		<div class="caregiver-profile">
			<div class="info-section">
				<div class="name">임성윤 돌보미</div>
				<div class="university">순천대학교 • 유아교육과</div>
				<div class="tags">
					<div class="tag"># 노래하기</div>
					<div class="tag"># 그림그리기</div>
					<div class="tag"># 한글공부</div>
					<div class="tag"># 학습지풀이</div>
				</div>
			</div>
			<div class="profile-img">
				<img src="https://placehold.co/150x150" alt="프로필 이미지">
			</div>
		</div>




	<div class="profile-container">


		<!-- 누적 돌봄 시간 박스 -->
		<div class="stat-container">
			<div class="stat-box">
				<div class="stat-value">
					<span class="highlight">339</span><span class="unit">시간</span>
				</div>
				<div class="stat-label">누적 돌봄 시간</div>
			</div>

			<!-- 평점 박스 -->
			<div class="stat-box" style="left: 225px; top: 20px;">
				<div class="stat-value">
					<span class="highlight">9.5</span><span class="unit"> / 10</span>
				</div>
				<div class="stat-label">평점</div>
			</div>
		</div>



		<!-- 인용 부호 -->
		<div class="comment-box">
			<div class="quote-left">“</div>
			<div class="comment">
				화창하게 밝고 계획적이며 다재다능한 <br />돌보미입니다!
			</div>
			<div class="quote-right">”</div>
		</div>


		<!-- 확인 안내 -->
		<div class="confirmation-box">같이키움이 꼼꼼히 확인했어요</div>
		<img class="illustration" src="images/female support person.svg"
			alt="illustration" />

		<!-- 인증 리스트 -->
		<div class="check-container">
			<div class="check-item">
				<img class="check-icon" src="images/check2-square.svg" />
				<div class="check-text">
					<div class="check-title">신원 증명 서류 확인</div>
					<div class="check-sub">시스템으로 1차, 증빙 서류로 2차 신원을 확인합니다</div>
				</div>
			</div>
			<div class="check-item">
				<img class="check-icon" src="images/check2-square.svg" />
				<div class="check-text">
					<div class="check-title">학력 및 경력 증명서 확인</div>
					<div class="check-sub">돌보미가 제출한 증빙 서류 통해 직접 확인합니다</div>
				</div>
			</div>
			<div class="check-item">
				<img class="check-icon" src="images/check2-square.svg" />
				<div class="check-text">
					<div class="check-title">행동 강령 서약서 확인</div>
					<div class="check-sub">아동 보호/학대/괴롭힘 방지 행동 강령에 서명합니다</div>
				</div>
			</div>

		</div>

		<div class="divider"></div>

		<!-- 부모님 리뷰 -->
		<div class="section-title" style="top: 540px;">부모님 리뷰</div>

		<%-- 여기에 리뷰 반복문 또는 직접 삽입 --%>
		<div class="review-card">
			<div class="review-header">
				<div class="review-category">학습시간</div>
				<div class="review-info">김 * 주 부모님 • 여아 6세</div>
				<div class="review-stars">
					<span class="star">★</span> <span class="star">★</span> <span
						class="star">★</span> <span class="star">★</span> <span
						class="star">★</span>
				</div>
			</div>
			<div class="review-body">
				아이가 첫 만남이지만 친근함을 느꼈나봐요~ 낯선사람을 장난감 방에 들어가게 하지 않거든요. 나중에는 선생님, 이모
				섞어가면서 말할만큼 많이 따랐던 것도 좋았습니다^^ <br />아이가 깔깔대며 웃는 소리를 들으니 아이를 많이
				좋아하시는구나를 느꼈습니다
			</div>
		</div>
		<!-- jsp -->
		<!-- 
		<c:forEach var="review" items="${reviewList}">
			<div class="review-card">
				<div class="review-header">
					<div class="review-category">${review.category}</div>
					<div class="review-info">${review.parentName}•
						${review.childGender} ${review.childAge}세</div>
					<div class="review-stars">
						<c:forEach var="i" begin="1" end="${review.rating}">
							<span class="star">★</span>
						</c:forEach>
					</div>
				</div>
				<div class="review-body">${review.content}</div>
			</div>
		</c:forEach>
 		-->




		<!-- 아이 감정리뷰 -->
		<div class="section-title" style="top: 1061px;">아이 감정리뷰</div>

		<div class="emotion-container">
			<div class="emotion-box">
				<img src="images/happy emoji with hearts.svg" />
				<div class="emotion-text">100번 이상 선택</div>
			</div>
			<div class="emotion-box">
				<img src="images/Sad Emoji.svg" />
				<div class="emotion-text">10번 이하 선택</div>
			</div>
		</div>


<button onclick="location.href='${cpath}/CareApply'"  class="select-button">돌봄 신청하기</button>


	</div>

	</div>


</body>
</html>