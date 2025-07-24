<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <title>부모 회원가입</title>
  <link rel="stylesheet" href="/css/RegisterParent.css">
  <!-- NanumSquare Neo 폰트 임포트 -->
  <link href="https://cdn.jsdelivr.net/gh/wan2land/d2coding@latest/nanum-square-neo.css" rel="stylesheet">
</head>
<body>
  <div class="container">
  	
    <div class="logo">같이키움</div>
    <img class="profile-image" src="/image/같이키움 로고.png" alt="프로필이미지"/>

    <div class="title">부모 회원가입</div>

    <!-- 이메일 -->
    <div class="label" style="top: 191px">이메일</div>
    <div class="input-box small" style="top: 214px">
      <input type="email" name="email" placeholder="eeemail@gacikium.com">
    </div>
    <button type="button" class="check-btn" style="top: 217px">중복확인</button>

    <!-- 비밀번호 -->
    <div class="label" style="top: 271px">비밀번호</div>
    <div class="input-box large" style="top: 294px">
      <input type="password" name="password" placeholder="영문, 숫자, 특수문자를 사용한 8~20자">
    </div>

    <!-- 비밀번호 확인 -->
    <div class="label" style="top: 351px">비밀번호 확인</div>
    <div class="input-box large" style="top: 374px">
      <input type="password" name="confirmPassword" placeholder="위의 비밀번호를 다시 입력해주세요.">
    </div>

    <!-- 닉네임 -->
    <div class="label" style="top: 431px">닉네임</div>
    <div class="input-box small" style="top: 454px">
      <input type="text" name="nickname" placeholder="닉네임을 입력해주세요">
    </div>
    <button type="button" class="check-btn" style="top: 457px">중복확인</button>

    <!-- 전화번호 -->
    <div class="label" style="top: 511px">전화번호</div>
    <div class="input-box large" style="top: 534px">
      <input type="tel" name="phone" placeholder="01012345678">
    </div>

    <!-- 가입하기 버튼 -->
    <button type="submit" class="submit-btn">가입하기</button>
  </div>
</body>
</html>