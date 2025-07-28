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
<title>Insert title here</title>
<link rel="stylesheet" href="/css/Startpage.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<!-- 임시 테스트용 버튼 -->
	<!--  
	<button onclick='location.href="${cpath}/LoginParent"'>저는 부모예요</button>
	<button onclick='location.href="${cpath}/LoginSitter"'>저는
		돌보미예요</button>
	<button onclick='location.href="${cpath}/Mainpage"'>메인페이지로</button>
	-->

	<!-- 앱 시작 화면 -->
	<div class="start-screen">

		<!-- 상단 로고 및 질문 문구 -->
		<!-- 로고 + 텍스트 묶기 -->
		<div class="start-logo-group">
			<img class="start-logo-image" src="/images/같이키움 로고2.svg" alt="로고" />
			<div class="start-logo-text">같이키움</div>
		</div>

		<div class="start-question">어떤 돌봄을 시작해볼까요?</div>

		<!-- 부모님 카드 -->
		<form action="${cpath}/LoginParent" method="get"
			class="card parent-card">
			<button type="submit" class="card-button">
				<div class="card-subtext">돌봄을 맡길</div>
				<div class="card-title">
					부모님으로<br />시작하기
				</div>
				<img class="card-image-parent" src="/images/Happy family with a child.svg"
					alt="부모 이미지" />
			</button>
		</form>

		<!-- 돌보미 카드 -->
		<form action="${cpath}/LoginSitter" method="get"
			class="card caregiver-card">
			<button type="submit" class="card-button">
				<div class="card-subtext">아이를 돌봐줄</div>
				<div class="card-title">
					돌보미로<br />시작하기
				</div>
				<img class="card-image-sitter"
					src="/images/Colleagues reinforcing agreement with a handshake.svg"
					alt="돌보미 이미지" />
			</button>
		</form>

	</div>
</body>
</html>