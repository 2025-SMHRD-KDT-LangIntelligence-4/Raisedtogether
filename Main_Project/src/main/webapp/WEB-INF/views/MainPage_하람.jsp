<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>돌봄 서비스</title>
  <style>
    body {
      font-family: sans-serif;
      background-color: #f3f3f3;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 430px;
      margin: 0 auto;
      padding: 16px;
    }

    .greeting-card, .feature-card, .review-card, .caregiver-card {
      background-color: #ffffff;
      border-radius: 12px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      margin-bottom: 16px;
      padding: 16px;
    }

    .greeting-card h2 {
      font-size: 20px;
      margin-bottom: 8px;
    }

    .apply-button {
      background-color: #4461f2;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 16px;
    }

    .scroll-container {
      overflow-x: auto;
      white-space: nowrap;
    }

    .review-card, .caregiver-card {
      display: inline-block;
      vertical-align: top;
      width: 280px;
      margin-right: 12px;
    }

    .card-title {
      font-weight: bold;
      margin-bottom: 4px;
    }

    .card-desc {
      font-size: 14px;
      color: #555;
    }

    .feature-grid {
      display: flex;
      justify-content: space-between;
      gap: 12px;
    }

    .feature-button {
      flex: 1;
      background-color: #e7f0ff;
      padding: 16px;
      border-radius: 8px;
      text-align: center;
      font-weight: bold;
      color: #333;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="container">
    <!-- 인삿말 및 신청 버튼 -->
    <div class="greeting-card">
      <h2>돌봄이 필요할 땐 언제든지</h2>
      <p>안심하고 맡길 수 있는 돌봄이 준비되어 있어요!</p>
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
    