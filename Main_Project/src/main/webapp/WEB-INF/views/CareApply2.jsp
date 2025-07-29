<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
    <title>아이 정보 입력</title>
    <link rel="stylesheet" href="/css/CareApply2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  <div class="container">
  
  <!-- 상태바 -->
    <div class="start-screen">
      <div class="logoAlert">
         <a href="${cpath}/Mainpage"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
         <a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
      </div>
   </div>
  
    <h2>아이 정보 등록</h2>

    <form action="${cpath}/child/register" method="post">
      <!-- 이름 -->
      <input type="text" name="childName" placeholder="아이의 이름을 입력해주세요" required />

      <!-- 생년월일 -->
      <div class="date-container">
        <input type="text" id="birthInput" placeholder="아이의 생년월일을 선택해주세요" readonly />
        <img src="https://img.icons8.com/ios/24/000000/calendar--v1.png" class="calendar-icon" onclick="openDatePicker()" />
        <input type="date" id="hiddenDate" style="display:none" />
      </div>

      <!-- 성별 -->
      <div class="gender-buttons">
        <div class="gender-button active" data-gender="male" onclick="toggleGender(this)">남아</div>
        <div class="gender-button" data-gender="female" onclick="toggleGender(this)">여아</div>
      </div>

      <!-- 주의사항 및 성향 -->
      <textarea name="notes" placeholder="예) 알러지가 있어요, 먹는 약이 있어요 등"></textarea>
      <textarea name="behavior" placeholder="예) 처음에 낯을 많이 가려요, 예민해요 등"></textarea>

      <button type="submit" class="btn-next">다음</button>
    </form>
  </div>

  <!-- JavaScript: JSP 내부 스크립트 -->
  <script>
    function openDatePicker() {
      const dateInput = document.getElementById('hiddenDate');
      dateInput.click();
      dateInput.onchange = function () {
        document.getElementById('birthInput').value = this.value;
      };
    }

    function toggleGender(element) {
      // 모든 성별 버튼에서 active 제거
      document.querySelectorAll('.gender-button').forEach(btn => {
        btn.classList.remove('active');
      });
      // 선택한 버튼만 active
      element.classList.add('active');
    }
  </script>
</body>
</html>
