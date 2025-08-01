<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>아이 선택</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="${cpath}/css/CareApply4.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
		<!-- 상태바 -->
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/Mainpage"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <a
					href="${cpath}/Alert"> <img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" />
				</a>
			</div>
		</div>

		<div class="main-content">
			<!-- 타이틀 -->
			<div class="title">돌보미와 만날 장소를 선택하세요</div>


			<!-- 각 장소를 카드로 출력 -->
			<div class="card-list">
				<c:forEach var="place" items="${carePlace}">
					<div class="child-card" data-care-idx="${place.careIdx}">
						<!-- 체크 버튼 -->
						<button class="check-btn" onclick="toggleCheck(this)">
							<svg viewBox="0 0 24 24" fill="none" class="check-icon">
	        				<path d="M5 13L9 17L19 7" stroke-width="3"
									stroke-linecap="round" stroke-linejoin="round" />
	      				</svg>
						</button>

						<!-- 장소 정보 -->
						<div class="child-info">
							<div class="child-name">${place.carePlace}</div>
							<div class="child-sub">
								<c:out value="${place.careAddress}" />
							</div>
						</div>

						<!-- 수정/삭제 버튼 -->
						<div class="icon-group">
							<button class="icon-btn">
								<img class="icon" src="${cpath}/images/Edit 3.svg" alt="수정하기" />
							</button>
							<form action="${cpath}/deletePlace" method="get"
								onsubmit="return confirm('${place.carePlace} 정보를 정말 삭제하시겠습니까?');"
								style="display: inline;">
								<input type="hidden" name="careIdx" value="${place.careIdx}" />
								<button type="submit" class="icon-btn">
									<img class="icon" src="${cpath}/images/Trash 2.svg" alt="지우기" />
								</button>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- 장소 등록 버튼 -->
			<div class="child-register"
				onclick="location.href='${cpath}/CareApply5'">
				<img class="register-icon" src="${cpath}/images/Plus.svg" alt="아이등록" />
				<div class="register-text">장소 등록</div>
			</div>






			<!-- 다음 버튼 -->
			<button class="next-btn"
				onclick="location.href='${cpath}/CareApply7'">다음</button>



		</div>
	</div>




	<script>
		function toggleCheck(button) {
			button.classList.toggle("selected");
			const card = button.closest(".child-card");
			if (card) {
				card.classList.toggle("selected");
			}
		}
	</script>
</body>
</html>
