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


</head>
<body>

	<button onclick='location.href="${cpath}/Alert"'>알림확인</button>
	<button onclick='location.href="${cpath}/CareApply"'>돌봄 신청하기</button>
	<button onclick='location.href="${cpath}/Urgent"'>긴급돌봄</button>
	<button onclick='location.href="${cpath}/CCTV"'>실시간 영상</button>
	<button onclick='location.href="${cpath}/SitterCare"'>같이키움이 콕 집은 돌보미</button>
	<button onclick='location.href="${cpath}/SitterUrgent"'>긴급돌봄이 가능한 돌보미</button>
	<button onclick='location.href="${cpath}/Mainpage"'>홈</button>
	<button onclick='location.href="${cpath}/Reservation"'>나의예약</button>
	<button onclick='location.href="${cpath}/Chat"'>채팅</button>
	<button onclick='location.href="${cpath}/Info"'>내정보</button>
	<div id="map" style="width:500px; height:400px;"></div>

</body>
</html>