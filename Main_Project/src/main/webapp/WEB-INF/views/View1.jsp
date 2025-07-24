<%-- /MainProject/src/main/webapp/WEB-INF/views/View1.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b1fc2610a3c9415f64affd1fc92ced5b&autoload=false"></script>

<script src="${cpath}/js/KakaoMap.js"></script>

  <script>
    window.onload = function() {
      if (typeof kakao === "undefined") {
        console.error("kakao 객체가 정의되지 않았습니다.");
        return;
      }

      kakao.maps.load(function() {
        console.log("카카오맵 SDK 로드 완료");
        loadMap(); // KakaoMap.js의 함수 호출
      });
    };
  </script>
</head>
<body>
    <p>뷰 연습용 페이지1</p>
    <div id="map" style="width:500px;height:400px;"></div>
</body>
</html>
