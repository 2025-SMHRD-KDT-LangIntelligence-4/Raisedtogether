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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>돌보미 로그인 - 같이키움</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="/css/LoginSitter.css">
</head>

<!-- 사용자에게 메시지 띄우기 (회원가입, 로그인 등) -->
<c:if test="${not empty message}">
  <script>
    alert("${message}");
  </script>
</c:if>

<body class="page">

  <div class="login-container">
    <!-- 1. 상단 로고 -->
    <div class="start-screen">
      <div class="logoAlert">
         <img class="logo-image" src="${cpath}/images/같이키움 로고.svg" alt="로고" />
      </div>
   </div>

    <br><br>

    <h1 class="title">돌보미 로그인</h1>
    <form class="login-form" action="${cpath}/GoLoginSitter"  method="post">

      <div class="form-group">
        <label for="email">이메일</label>
        <input type="email" id="id" name="sitterId" placeholder="eeemail@gacikium.com" required>
      </div>

      <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" id="pw" name="sitterPw" 
        placeholder="영문, 숫자, 특수문자를 사용한 8~20자" required>
      </div>

      <div class="options">
        <label class="checkbox">
          <input type="checkbox" id="remember">
          아이디 저장
        </label>
      </div>

      <button type="submit" class="btn btn-primary">로그인</button>

      <div class="link-group">
        <a href="${cpath}/FindPassword">비밀번호 찾기</a>
        <span class="separator">ㅣ</span>
        <a href="${cpath}/RegisterSitter">회원가입</a>
      </div>


      <div class="divider"></div>

      <!-- 소셜 로그인 버튼 -->
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