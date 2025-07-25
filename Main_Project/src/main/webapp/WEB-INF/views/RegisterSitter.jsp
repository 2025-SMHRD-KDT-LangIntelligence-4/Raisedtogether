<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>돌보미 회원가입</title>
  <link rel="stylesheet" href="RegisterSitter.css" />
</head>
<body>
  <div class="container">
  	<div class="logo-title">같이키움</div>
  	<img class="profile-image" src="/image/같이키움 로고.png" alt="프로필이미지"/>
    <div class="page-title">돌보미 회원가입</div>

    <label class="label" for="sitterId">이메일</label>
    <div class="email-row">
      <input type="email" name="sitterId" class="input" placeholder="eeemail@gacikium.com" />
      <button class="check-btn">중복확인</button>
    </div>

    <label class="label" for="sitterPw">비밀번호</label>
    <input type="password" name="sitterPw" class="input" placeholder="영문, 숫자, 특수문자를 사용한 8~20자" />

    <label class="label" for="sitterPw">비밀번호 확인</label>
    <input type="password" name="sitterPw" class="input" placeholder="위의 비밀번호를 다시 입력해주세요." />

    <label class="label" for="sitterName">이름</label>
    <input type="text" name="sitterName" class="input" placeholder="이름을 입력해주세요" />

    <label class="label" for="sitterPhone">전화번호</label>
    <input type="tel" name="sitterPhone" class="input" placeholder="01012345678" />

    <label class="label" for="sitterCareType">희망 돌봄 유형</label>
    <select name="sitterCareType" class="input">
      <option value="">선택해주세요</option>
      <option value="유아">유아</option>
      <option value="노인">노인</option>
      <option value="장애인">장애인</option>
    </select>

    <label class="label" for="sitterPhotoImg">프로필 사진 등록</label>
    <div class="profile-upload">
      <input type="file" name="sitterPhotoImg" />
      <span class="img-select-label">이미지 선택</span>
    </div>

    <label class="label" for="sitterIntroduction">한 줄 자기소개</label>
    <textarea name="sitterIntroduction" class="textarea" placeholder="아이들이나 부모님들에게 자신을 소개해주세요"></textarea>

    <button class="submit-btn">가입하기</button>
  </div>
</body>
</html>