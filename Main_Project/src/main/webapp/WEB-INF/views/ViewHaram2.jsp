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
<link rel="stylesheet" href="/css/ViewHaram2.css">
</head>
<body>
	<div class="care-card">
		<div class="care-button">
			<div class="care-button-text">돌봄 신청하기</div>
		</div>
		<div class="care-description">
			오늘의 당신에게는 휴식을, <br /> 아이에게는 특별한 하루를 선물하세요!
		</div>
		<div class="care-greeting">안녕하세요!</div>
		<img class="care-image" src="/images/cat.svg" alt="케어 이미지" />
	</div>

</body>
</html>