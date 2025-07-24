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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>부모 로그인 - 같이키움</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/css/LoginParent.css">
</head>
<body>
  <div class="login-container">
    <div class="login-header">
      <div class="brand">같이키움</div>
      <h1 class="title">부모 로그인</h1>
    </div>
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
      <div class="text-align: center">
        <a href="#"> <small>비밀번호 찾기</small></a>
        <span class="separator">ㅣ</span>
        <a href="#"><small>회원가입</small></a>
      </div>
      <div class="divider"></div>
      <button type="button" class="btn btn-kakao">
        <img src="kakao-icon.svg" alt="카카오 로고" width="18" height="18">
        카카오로 시작하기
      </button>
      <button type="button" class="btn btn-naver">
        <img src="naver-icon.svg" alt="네이버 로고" width="18" height="18">
        네이버로 시작하기
      </button>
      <button type="button" class="btn btn-apple">
        <img src="apple-icon.svg" alt="Apple 로고" width="18" height="18">
        Apple로 시작하기
      </button>
    </form>
    <footer class="login-footer">
      <small>Copyright ⓒ 24.5 Corp. All rights reserved.</small>
    </footer>
  </div>
</body>
</html>
