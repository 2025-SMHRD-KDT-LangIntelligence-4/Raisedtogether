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
<title>카카오페이결제 오버레이</title>
<link rel="stylesheet" href="${cpath}/css/카카오페이결제.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<!-- 카카오페이 결제 오버레이 -->
	<div class="overlay" id="kakaoPayOverlay">
		<div class="popup">
			<button class="close-btn" onclick="closeKakaoPay()">×</button>

			<!-- 이미지 -->
			<div class="image-box">
				<img src="/images/Paying online while shopping on smartphone.svg" alt="카카오페이 이미지">
			</div>

			<!-- 텍스트 -->
			<div class="text-box">
				<h2>결제는 카카오페이로 진행해요!</h2>
				<p>
					최소 금액으로 선결제 후 돌봄 매칭이 모두 끝난 뒤,<br>추가비용 및 돌봄비 시급에 맞추어 추가 결제가
					진행돼요
				</p>
			</div>

			<!-- 결제하기 버튼 -->
			<form action="/pay/ready" method="post">
			<button class="pay-btn" >결제하기</button>
			</form>
		</div>
	</div>




	<script>
		function closeKakaoPay() {
			document.getElementById("kakaoPayOverlay").style.display = "none";
		}
	</script>
</body>
</html>