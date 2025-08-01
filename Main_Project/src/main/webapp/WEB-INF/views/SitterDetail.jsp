<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시터 디테일</title>
<link rel="stylesheet" href="${cpath}/css/SitterDetail.css">
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
				<div class="name">${sitter.sitterName}돌보미</div>
				<div class="university">${sitter.sitterEducation}</div>
				<div class="tags">
					<c:forEach var="tag"
						items="${fn:split(sitter.sitterCareTypeTag, ',')}">
						<span class="tag"># ${tag}</span>
					</c:forEach>
				</div>
			</div>
			<div class="profile-img">
				<img src="${cpath}/${sitter.sitterPhotoImg}" alt="프로필 이미지">
			</div>
		</div>



		<div class="profile-container">


			<!-- 누적 돌봄 시간 박스 -->
			<div class="stat-container">
				<div class="stat-box">
					<div class="stat-value">
						<span class="highlight">${randomCareTime}</span><span class="unit">시간</span>
					</div>
					<div class="stat-label">누적 돌봄 시간</div>
				</div>

				<!-- 평점 박스 -->
				<div class="stat-box" style="left: 225px; top: 20px;">
					<div class="stat-value">
						<span class="highlight">${avgRating}</span><span class="unit">
							/ 10</span>
					</div>
					<div class="stat-label">평점</div>
				</div>
			</div>



			<!-- 인용 부호 -->
			<div class="comment-box">
				<div class="quote-left">“</div>
				<div class="comment">${sitter.sitterIntroduction}</div>
				<div class="quote-right">”</div>
			</div>


			<!-- 확인 안내 -->
			<div class="confirmation-box">같이키움이 꼼꼼히 확인했어요</div>
			<img class="illustration"
				src="${cpath}/images/female support person.svg" alt="illustration" />

			<!-- 인증 리스트 -->
			<div class="check-container">
				<div class="check-item">
					<img class="check-icon" src="${cpath}/images/check2-square.svg" />
					<div class="check-text">
						<div class="check-title">신원 증명 서류 확인</div>
						<div class="check-sub">시스템으로 1차, 증빙 서류로 2차 신원을 확인합니다</div>
					</div>
				</div>
				<div class="check-item">
					<img class="check-icon" src="${cpath}/images/check2-square.svg" />
					<div class="check-text">
						<div class="check-title">학력 및 경력 증명서 확인</div>
						<div class="check-sub">돌보미가 제출한 증빙 서류 통해 직접 확인합니다</div>
					</div>
				</div>
				<div class="check-item">
					<img class="check-icon" src="${cpath}/images/check2-square.svg" />
					<div class="check-text">
						<div class="check-title">행동 강령 서약서 확인</div>
						<div class="check-sub">아동 보호/학대/괴롭힘 방지 행동 강령에 서명합니다</div>
					</div>
				</div>

			</div>

			<div class="divider"></div>

			<!-- 부모님 리뷰 -->
			<div class="section-title" style="top: 540px;">최근 부모님 리뷰</div>
			<c:forEach var="review" items="${reviewList3}">
				<div class="review-card">
					<div class="review-header">
						<div class="review-category">${randomCareTime2}시간</div>
						<div class="review-info">${review.parentNickname}님•
							${review.childName} ${review.childAge}세 ${review.childGender}</div>
						<div class="review-stars">
							<span class="star">★</span> <span class="star">★</span> <span
								class="star">★</span> <span class="star">★</span> <span
								class="star">★</span>
						</div>
					</div>
					<div class="review-body">${review.reviewOpinion}</div>
				</div>
			</c:forEach>

			<!-- 아이 감정리뷰 -->
			<div class="section-title" style="top: 1061px;">아이 감정리뷰</div>

			<div class="emotion-container">
				<div class="emotion-box">
					<img src="${cpath}/images/happy emoji with hearts.svg" />
					<div class="emotion-text">${emotionCount}번이상 선택</div>
				</div>
				<div class="emotion-box">
					<img src="${cpath}/images/Sad Emoji.svg" />
					<div class="emotion-text">${emotionCount2}번이하 선택</div>
				</div>
			</div>


			<button onclick="location.href='${cpath}/CareApplyFinal'"
				class="select-button">돌봄 신청하기</button>


		</div>

	</div>


</body>
</html>