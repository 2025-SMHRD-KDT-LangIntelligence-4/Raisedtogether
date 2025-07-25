<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!-- templates/care-review.html -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>돌봄 서비스</title>
<link rel="stylesheet" href="/css/ViewHaram.css">
</head>
<body>
	<div class="container">
		<!-- 인삿말 및 신청 버튼 -->
		<div class="care-card">
			<div class="care-button">
				<div class="care-button-text">돌봄 신청하기</div>
			</div>
			<div class="care-description">
				오늘의 당신에게는 휴식을, <br /> 아이에게는 특별한 하루를 선물하세요!
			</div>
			<div class="care-greeting">안녕하세요!</div>
			<img class="care-image" src="/images/cat.svg" alt="케어 이미지" />
		</div>

		<!-- 기능 카드 -->
		<div class="care-options">
			<div class="care-option">
				<div class="option-box">
					<img class="option-icon" src="/images/red and white megaphone.svg"
						alt="긴급 돌봄 아이콘" />
				</div>
				<div class="option-label">긴급 돌봄</div>
			</div>

			<div class="care-option">
				<div class="option-box">
					<img class="option-icon" src="/images/webcam.svg" alt="실시간 영상 아이콘" />
				</div>
				<div class="option-label">실시간 영상</div>
			</div>
		</div>


	</div>
	<!-- 콕 찝은 카드 리스트 -->
	<div style="background: #F7F7FF">
		<div class="container">
			<div class="title">
				같이키움이 <span class="highlight">콕</span> 집은 돌보미
				<div class="more">
					더보기 <img src="/images/Chevron right.svg" alt="실시간 영상 아이콘" />
				</div>
			</div>
		</div>
		<div class="cards-wrapper">
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->
				
				<!-- 반복 카드 구조 -->
				<div class="card">
					<img src="https://placehold.co/64x64" alt="돌보미 이미지">
					<div class="location">순천 풍덕동</div>
					<div class="caregiver">임성윤 돌보미</div>
					<div class="parent">세레비 부모님</div>
					<div class="time">11시간 전 작성</div>
					<div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로
						풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
				</div>
				<!-- 위 카드 복사해서 원하는 만큼 추가 -->

		</div>
		
		<div class="container"></div>
		
	</div>




	<!-- 긴급돌봄 가능 돌보미 -->
	
	<div class="container">
			<div class="title">
				<span class="highlight">긴급돌봄</span>이 가능한 돌보미
				<div class="more">
					더보기 <img src="/images/Chevron right.svg" alt="실시간 영상 아이콘" />
				</div>
			</div>
		</div>
	
	
	<div class="scroll-container2">
  <div class="cards-wrapper2">
    <div class="card-group2">
      <!-- 상단 줄 카드 -->
      <div class="card2">
        <img src="/images/avatar1.png" alt="프로필">
        <div class="name">심지은 돌보미</div>
        <div class="checklist">✅ 신청 응답 서류 확인</div>
        <div class="checklist">✅ 학력 및 경력 증명서 확인</div>
        <div class="checklist">✅ 현장 검증 서면서 확인</div>
        <div class="tags">
          영어놀이 창의미술 그림그리기 #책읽기
        </div>
      </div>
      <!-- 다음 카드 복사해서 추가 -->
    </div>
    
    <div class="card-group2">
      <!-- 하단 줄 카드 -->
      <div class="card2">
        <img src="/images/avatar2.png" alt="프로필">
        <div class="name">김경화 돌보미</div>
        <div class="checklist">✅ 신청 응답 서류 확인</div>
        <div class="checklist">✅ 학력 및 경력 증명서 확인</div>
        <div class="checklist">✅ 현장 검증 서면서 확인</div>
        <div class="tags">
          구연동화 퍼즐놀이 금관놀이
        </div>
      </div>
    </div>
    <!-- 더 많은 card-group 추가 가능 -->
  </div>
</div>


</body>
</html>
