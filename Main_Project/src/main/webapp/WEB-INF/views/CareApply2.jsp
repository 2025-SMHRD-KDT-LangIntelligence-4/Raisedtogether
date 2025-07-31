<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/CareApply2.css">
<title>아이 정보 입력</title>
</head>
<body>

	<!-- 필요시 메시지 출력하는 로직 -->
	<c:if test="${not empty message}">
		<script>
    alert("${message}");
  </script>
	</c:if>

	<div class="container">

		<!-- 상태바 -->
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/CareApply"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <a
					href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>
		<div class="title">아이 정보 등록</div>

		<form action="${cpath}/CareApply3" method="post">
			<!-- 이름 -->
			<label class="label" for="childName">이름</label> <input type="text"
				name="childName" placeholder="아이의 이름을 입력해주세요" required />

			<!-- 생년월일 -->
			<div class="date-container">
				<label class="label" for="birth">생년월일</label> <input type="date"
					class="birth" name="childBirthdate" id="birth" />
			</div>

			<!-- 성별 -->
			<input type="hidden" name="childGender" id="childGender" /> <label
				class="label" for="gender">성별</label>
			<div class="gender-buttons">
				<div class="gender-button active" data-gender="male"
					onclick="toggleGender(this)">남자</div>
				<div class="gender-button" data-gender="female"
					onclick="toggleGender(this)">여자</div>
			</div>

			<!-- 주의사항 및 성향 -->
			<label class="label" for="notes">주의사항</label>
			<textarea name="childNotes" placeholder="예) 알러지가 있어요, 먹는 약이 있어요 등"></textarea>
			<label class="label" for="behavior">성향</label>
			<textarea name="childBehavior" placeholder="예) 처음에 낯을 많이 가려요, 예민해요 등"></textarea>
			<div style="position: absolute; bottom:40px;">
				<button onclick="location.href='${cpath}/CareApply3'" type="submit"
					class="btn-next">다음</button>
			</div>
		</form>
	</div>
	<script>
    function toggleGender(element) {
      // 모든 성별 버튼에서 active 제거
      document.querySelectorAll('.gender-button').forEach(btn => {
        btn.classList.remove('active');
      });
      // 선택한 버튼만 active
      element.classList.add('active');
      // 성별값 데이터로 받기
      document.getElementById("childGender").value = element.getAttribute("data-gender");
    }
  </script>
</body>
</html>
