<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>


<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>부모 로그인 – 같이키움</title>
  <link rel="stylesheet" href="styles.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="/css/LoginParent.css">
  
</head>
<body>
  <div class="container">
    <!-- 상태바 -->
    <header class="status-bar">
      <div class="time">9:41</div>
      <div class="icons">
        <span class="signal"></span>
        <span class="wifi"></span>
        <span class="battery"></span>
      </div>
    </header>

    <!-- 로그인 카드 -->
    <main>
	<div class="login-card">
	  <div class="logo">같이키움</div>
	  <h1 class="title">부모 로그인</h1>
	  <form class="login-form">
	    <label for="email" class="label">이메일</label>
	    <input type="email" id="email" class="input" placeholder="eeemail@gacikium.com" />
	
	    <label for="password" class="label">비밀번호</label>
	    <input type="password" id="password" class="input" placeholder="영문, 숫자, 특수문자를 사용한 8~20자" />
	
	    <div class="options">
	      <label><input type="checkbox" class="checkbox" checked /> 아이디 저장</label>
	    </div>
	
	    <button type="submit" class="btn login-btn">로그인</button>
	  </form>
	
	  <div class="links">
	    <a href="#" class="link">비밀번호 찾기</a>
	    <a href="#" class="link signup">회원가입</a>
	  </div>
	
	  <div class="social-login">
	    <button class="btn naver-btn"><img src="naver-icon.svg" alt="네이버 로고" /> 네이버로 시작하기</button>
	    <button class="btn kakao-btn"><img src="kakao-icon.svg" alt="카카오 로고" /> 카카오로 시작하기</button>
	    <button class="btn apple-btn"><img src="apple-icon.svg" alt="Apple 로고" /> Apple로 시작하기</button>
	  </div>
	</div>
        <div class="divider"></div>
        <div class="footer">Copyright ⓒ 24.5 Corp. All rights reserved.</div>
    </div>
    
    </main>
    <!-- 고객센터 -->
    <footer class="contact-info">
      <div class="contact-header">고객센터</div>
      <div class="contact-item">전화 010-8970-1864</div>
      <div class="hours">운영시간 10:00 ~ 18:00 (토·일·공휴일 휴무)</div>
      <div class="lunch">점심시간 12:30 ~ 14:00</div>
      <div class="divider horizontal"></div>
      <div class="inquiry"><strong>광고 문의</strong> 98haram@gmail.com</div>
      <div class="inquiry"><strong>제휴 문의</strong> gkfaktkddka@naver.com</div>
      <div class="policies">
        <a href="#">이용약관</a> | <a href="#">개인정보 처리방침</a>
      </div>
    </footer>
  </div>
</body>
</html>