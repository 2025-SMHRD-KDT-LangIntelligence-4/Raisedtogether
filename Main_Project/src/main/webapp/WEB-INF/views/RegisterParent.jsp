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
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>부모 회원가입</title>
<link rel="stylesheet" href="/css/RegisterParent.css">
<!-- NanumSquare Neo 폰트 임포트 -->
<link
	href="https://cdn.jsdelivr.net/gh/wan2land/d2coding@latest/nanum-square-neo.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery 연결 -->

<script src="${cpath}/js/register.js"></script>
<!-- 중복체크 JS 로딩 -->

</head>
<body>
	<div class="container">
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
			</div>
		</div>

		<div class="container2">
			<div class="logo">같이키움</div>
			<img class="profile-image" src="/images/같이키움 로고.svg" alt="프로필이미지" />

			<div class="title">부모 회원가입</div>
=======
<!-- 사용자에게 메시지 띄우기 (회원가입, 로그인 등) -->
<c:if test="${not empty message}">
  <script>
    alert("회원가입실패\n"+"${message}");
  </script>
</c:if>
	
		<div class="title">부모 회원가입</div>
			<form action="/insertParent" method="post">
				<!-- 이메일 -->
				<div class="label" style="top: 191px">이메일</div>
				<div class="input-box small" style="top: 214px">
					<input type="email" id="id" name="parentId" maxlength="50"
						placeholder="eeemail@gacikium.com"
						value="${parent.parentId != null ? parent.parentId : ''}">
				</div>
				<button onclick="parentDuplicate('id')" type="button"
					class="check-btn" style="top: 217px">중복확인</button>

				<!-- 비밀번호 -->
				<div class="label" style="top: 271px">비밀번호</div>
				<div class="input-box large" style="top: 294px">
					<input type="password" id="pw" name="parentPw" maxlength="20"
						placeholder="영문, 숫자, 특수문자를 사용한 8~20자" value="">
				</div>

				<!-- 비밀번호 확인 -->
				<div class="label" style="top: 351px">비밀번호 확인</div>
				<div class="input-box large" style="top: 374px">
					<input type="password" id="pwCheck" name="parentPwCheck"
						maxlength="20" placeholder="위의 비밀번호를 다시 입력해주세요." value="">
				</div>

				<!-- 비밀번호 중복여부체크 div : 우빈 넣음 -->
				<div id="pwMsg"
					style="position: absolute; top: 420px; left: 130px; font-size: 12px;"></div>

				<!-- 닉네임 -->
				<div class="label" style="top: 431px">닉네임</div>
				<div class="input-box small" style="top: 454px">
					<input type="text" id="nickname" name="parentNickname"
						maxlength="20" placeholder="닉네임을 입력해주세요"
						value="${parent != null ? parent.parentNickname : ''}">
				</div>
				<button onclick="parentDuplicate('nickname')" type="button"
					class="check-btn" style="top: 457px">중복확인</button>

				<!-- 전화번호 -->
				<div class="label" style="top: 511px">전화번호</div>
				<div class="input-box large" style="top: 534px">
					<input type="tel" id="phone" name="parentPhone" maxlength="11"
						placeholder="01012345678"
						value="${parent != null ? parent.parentPhone : ''}">
				</div>

				<!-- 가입하기 버튼 -->
				<button type="submit" class="submit-btn">가입하기</button>
			</form>

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
		<form action="${cpath }/insertParent" method="post">
			<!-- 이메일 -->
			<div class="label" style="top: 191px">이메일</div>
			<div class="input-box small" style="top: 214px">
				<input type="email" id="id" name="parentId"
					maxlength="50" placeholder="eeemail@gacikium.com"
					value="${parent.parentId != null ? parent.parentId : ''}">
			</div>
			</form>
		</footer>
	</div>
	

</body>
</html>