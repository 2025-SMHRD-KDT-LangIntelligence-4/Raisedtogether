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
<div class="login-container">
    <div class="login-header">
      <!-- 1. 상단 로고 -->
      <img src="/images/같이키움 로고.svg" alt="같이키움 로고" class="brand-logo">
      <br>
      <br>
      <br>
      <br>
      <div class="brand">같이키움</div>
    </div>
    <h1 class="title">부모 로그인</h1>
    <form class="login-form">
      <div class="form-group">
        <label for="email">이메일</label>
        <input type="email" id="email" placeholder="eeemail@gacikium.com">
      </div>
      <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" id="password" placeholder="영문, 숫자, 특수문자를 사용한 8~20자">
      </div>
      <div class="options">
        <label class="checkbox">
          <input type="checkbox" id="remember">
          아이디 저장
        </label>
      </div>
      <button type="submit" class="btn btn-primary">로그인</button>
      <div class="divider"></div>
      <!-- 2~4. 소셜 버튼 로고 삽입 -->
      <button type="button" class="btn btn-social btn-kakao">
        <img src="/images/Kakao Talk.svg" alt="카카오 로고" class="btn-icon">카카오로 시작하기
      </button>
      <button type="button" class="btn btn-social btn-naver">
        <img src="/images/Nintendo.svg" alt="네이버 로고" class="btn-icon">네이버로 시작하기
      </button>
      <button type="button" class="btn btn-social btn-apple">
        <img src="/images/Apple Inc.svg" alt="Apple 로고" class="btn-icon">Apple로 시작하기
      </button>
    </form>
    <div class="link-group">
      <a href="#">비밀번호 찾기</a>
      <span class="separator">ㅣ</span>
      <a href="#">회원가입</a>
    </div>
    
    <!-- 프터 -->
   <footer class="footer">
      <div class="footer-content">
         <div class="footer-links">
            <a href="#">이용약관</a> <a href="#">개인정보 처리방침</a> <a href="#">고객센터</a>
         </div>
         <div class="footer-info">
            <p>© 2025 같이키움. All rights reserved.</p>
         </div>
      </div>
   </footer>
    
  </div>
  
</body>

</html>
