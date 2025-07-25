<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>같이키움이 콕 집은 돌보미</title>
  <style>
    body {
      margin: 0;
      font-family: 'NanumSquare Neo', sans-serif;
      background: #F7F7FF;
    }
    .container {
      width: 430px;
      padding: 40px 20px 20px;
      position: relative;
    }
    .title {
      font-size: 20px;
      font-weight: 700;
    }
    .title .highlight {
      color: #534DFA;
      font-weight: 800;
    }
    .more {
      position: absolute;
      top: 36px;
      right: 20px;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 16px;
      color: #6E6E6E;
      font-weight: 700;
    }
    .more-icon {
      width: 7px;
      height: 14px;
      border-left: 2px solid #6E6E6E;
      border-bottom: 2px solid #6E6E6E;
      transform: rotate(-45deg);
      margin-top: 2px;
    }
    .cards-wrapper {
      margin-top: 30px;
      display: flex;
      gap: 20px;
      flex-wrap: nowrap;
      overflow-x: scroll;
    }
    .card {
      flex: 0 0 auto;
      width: 300px;
      height: 140px;
      background: white;
      border-radius: 16px;
      position: relative;
      padding: 15px 12px;
      box-sizing: border-box;
    }
    .card img {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      position: absolute;
      top: 15px;
      left: 16px;
    }
    .card .location {
      background: rgba(6, 131, 0, 0.2);
      border-radius: 4px;
      padding: 2px 6px;
      font-size: 10px;
      font-weight: 700;
      color: #078300;
      position: absolute;
      top: 108px;
      left: 17px;
    }
    .card .caregiver {
      font-size: 12px;
      position: absolute;
      top: 87px;
      left: 12px;
      font-weight: 400;
    }
    .card .parent {
      font-size: 12px;
      color: #4C4C4C;
      position: absolute;
      top: 111px;
      left: 101px;
    }
    .card .time {
      font-size: 12px;
      color: #6E6E6E;
      position: absolute;
      top: 111px;
      right: 12px;
    }
    .card .content {
      font-size: 12px;
      color: black;
      position: absolute;
      top: 20px;
      left: 101px;
      width: 182px;
      line-height: 18px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="title">
      같이키움이 <span class="highlight">콕</span> 집은 돌보미
    </div>
    <div class="more">
      더보기 <div class="more-icon"></div>
    </div>
    <div class="cards-wrapper">
      <!-- 반복 카드 구조 -->
      <div class="card">
        <img src="https://placehold.co/64x64" alt="돌보미 이미지">
        <div class="location">순천 풍덕동</div>
        <div class="caregiver">임성윤 돌보미</div>
        <div class="parent">세레비 부모님</div>
        <div class="time">11시간 전 작성</div>
        <div class="content">제가 부탁드린 점 반영하셔서 아이 돌봄 해주셨어요~ 다양한 놀이 패턴으로 풍부하게 놀아주셔서 애들이 심심할 틈이 없었어요!! 늘 최선을 ...</div>
      </div>
      <!-- 위 카드 복사해서 원하는 만큼 추가 -->
    </div>
  </div>
</body>
</html>
