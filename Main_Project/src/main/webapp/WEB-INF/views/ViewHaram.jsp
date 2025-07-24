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
    <div class="greeting-card">
      <h2>안녕하세요!</h2>
      <p>오늘의 당신에게는 휴식을, <br>아이에게는 특별한 하루를 선물하세요!</p>
      <button class="apply-button">돌봄 신청하기</button>
    </div>

    <!-- 기능 카드 -->
    <div class="feature-card">
      <div class="feature-grid">
        <div class="feature-button">긴급돌봄 신청</div>
        <div class="feature-button">실시간 영상 확인</div>
      </div>
    </div>

    <!-- 후기 카드 -->
    <h3>돌보미 후기</h3>
    <div class="scroll-container">
      <div class="review-card">
        <div class="card-title">임성윤 돌보미</div>
        <div class="card-desc">아이를 친자식처럼 잘 챙겨주셔서 믿음이 갑니다.</div>
      </div>
      <div class="review-card">
        <div class="card-title">권유미 돌보미</div>
        <div class="card-desc">정성껏 놀아주셔서 아이가 너무 좋아했어요.</div>
      </div>
      <div class="review-card">
        <div class="card-title">이희자 돌보미</div>
        <div class="card-desc">아이 눈높이에 맞춰주셔서 마음에 들어요.</div>
      </div>
    </div>

    <!-- 긴급돌봄 가능 돌보미 -->
    <h3>긴급돌봄 가능</h3>
    <div class="scroll-container">
      <div class="caregiver-card">
        <div class="card-title">최서윤 돌보미</div>
        <div class="card-desc">활동지역: 서초구, 송파구<br />가능한 놀이: 실외활동, 만들기</div>
      </div>
      <div class="caregiver-card">
        <div class="card-title">김진아 돌보미</div>
        <div class="card-desc">활동지역: 강남구, 용산구<br />가능한 놀이: 실내활동, 책읽기</div>
      </div>
    </div>
  </div>
</body>
</html>
