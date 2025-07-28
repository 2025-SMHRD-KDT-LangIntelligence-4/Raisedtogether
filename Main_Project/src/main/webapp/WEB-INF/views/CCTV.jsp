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
    <title>CCTV 실시간 영상</title>
</head>
<body>
    <h2>CCTV 실시간 스트리밍</h2>
    <img src="http://localhost:8000/video_feed" width="640" height="480" />
</body>
</html>