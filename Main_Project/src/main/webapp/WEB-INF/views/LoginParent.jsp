<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>부모 로그인 - 같이키움</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="/css/LoginParent.css">
</head>

<body class="page">

  <header class="status-bar">
    <div class="status-left">
      <span class="time">9:41</span>
    </div>
    <div class="status-spacer"></div>
    <div class="status-right">
      <span class="icon signal"></span>
      <span class="icon wifi"></span>
      <span class="icon battery-outline"></span>
      <span class="icon battery-notch"></span>
      <span class="icon battery-fill"></span>
    </div>
  </header>

  <main>
    <section class="login-card">…</section>
  </main>

  <footer class="contact-section">
    <div class="inner">
      <h2 class="title">고객센터</h2>
      <p class="phone">
        전화 <a href="tel:010-8970-1864">010-8970-1864</a>
      </p>
      <p class="hours">운영시간 10:00 ~ 18:00 (토·일·공휴일 휴무)</p>
      <p class="lunch">점심 시간 12:30 ~ 14:00</p>

      <ul class="inquiries">
        <li>
          <span class="label">광고 문의</span>
          <a href="mailto:98haram@gmail.com">98haram@gmail.com</a>
        </li>
        <li>
          <span class="label">제휴 문의</span>
          <a href="mailto:gkfaktkddka@naver.com">gkfaktkddka@naver.com</a>
        </li>
      </ul>

      <div class="policies">
        <a href="#">이용약관</a>
        <span class="sep">|</span>
        <a href="#">개인정보 처리방침</a>
      </div>
    </div>
  </footer>

  <div class="login-container">
    <!-- 1. 상단 로고 -->
    <img src="/images/같이키움 로고.svg" alt="같이키움 로고" class="brand-logo">
    <div class="brand">같이키움</div>

    <br><br>
    <h1 class="title">부모 로그인</h1>

    <!-- 로그인 메시지 출력 -->
    <c:if test="${not empty message}">
      <div style="color: red; text-align: center; margin-bottom: 10px;">${message}</div>
    </c:if>

    <form action="${cpath}/login" method="post">
      <div class="form-group">
        <label for="email">이메일</label>
        <input type="email" id="email" name="parentId" placeholder="eeemail@gacikium.com" required>
      </div>

      <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="parentPw" placeholder="영문, 숫자, 특수문자를 사용한 8~20자" required>
      </div>

      <div class="options">
        <label class="checkbox">
          <input type="checkbox" id="remember">
          아이디 저장
        </label>
      </div>

      <button type="submit" class="btn btn-primary">로그인</button>

      <div class="link-group">
        <a href="#">비밀번호 찾기</a>
        <span class="separator">ㅣ</span>
        <a href="#">회원가입</a>
      </div>

      <div class="divider"></div>

      <!-- 소셜 로그인 버튼 -->
      <button type="button" class="btn btn-social btn-kakao">
        <img src="/images/Kakao Talk.svg" alt="카카오 로고" class="btn-icon">카카오로 시작하기
      </button>
      <button type="button" class="btn btn-social btn-naver">
        <img src="/images/Nintendo.svg" alt="네이버 로고" class="btn-icon">네이버로 시작하기
      </button>
      <button onclick="location.href='${cpath}/FindPassword';" class="btn btn-social btn-apple">
        <img src="/images/Apple Inc.svg" alt="Apple 로고" class="btn-icon">Apple로 시작하기
      </button>
    </form>

    <footer class="login-footer">
      <small>Copyright ⓒ 24.5 Corp. All rights reserved.</small>
    </footer>
  </div>

</body>
</html>
