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

<!-- 카카오 SDK 불러오기 -->
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script>
<!-- 카카오지도 로드된 JS파일과 연결 -->
<script src="${cpath}/js/KakaoMap.js"></script>

</head>
<body>
	<p>뷰 연습용 페이지2</p>
	
	<!-- 1. 카카오지도 불러올 공간 div -->
	<div id="map" style="width:500px;height:400px;"></div>
	
	<!-- 2. 카카오지도 함수 호출 -->
	<script>
    window.onload = () => kakao.maps.load(loadMap);
  </script>
</body>
</html>