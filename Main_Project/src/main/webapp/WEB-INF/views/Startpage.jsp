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
	<button onclick='location.href="${cpath}/LoginParent"'>저는 부모예요</button>
	<button onclick='location.href="${cpath}/LoginSitter"'>저는 돌보미예요</button>
	<button onclick='location.href="${cpath}/Mainpage"'>메인페이지로(추후 삭제 후 세션확인해서 자동으로 메인연결예정)</button>
</body>
</html>