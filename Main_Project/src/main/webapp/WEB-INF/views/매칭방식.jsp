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
<title>돌보미 매칭 방식 오버레이</title>
<link rel="stylesheet" href="${cpath}/css/매칭방식.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- 오버레이 배경 -->
<div class="overlay" id="matchingOverlay">
  <!-- 팝업 박스 -->
  <div class="popup">
    <div class="popup-header">
      <span>돌보미 매칭 방식</span>
      <button class="close-btn" onclick="closeOverlay()">×</button>
    </div>
    <div class="option active" onclick="selectOption(this)">
      <img src="/images/Stars.svg" alt="추천" />
      <div>
        <div class="title">추천 받고 선택할게요</div>
        <div class="desc">수업 신청 → 돌보미 추천 순으로 진행돼요</div>
      </div>
    </div>
    <div class="option" onclick="selectOption(this)">
      <img src="/images/Stars-1.svg" alt="직접 선택" />
      <div>
        <div class="title">콕 찍어서 선택할게요</div>
        <div class="desc">돌보미 선택 → 수업 신청 순으로 진행돼요</div>
      </div>
    </div>
    <button class="next-btn">다음</button>
  </div>
</div>




<script>

function closeOverlay() {
	  document.getElementById("matchingOverlay").style.display = "none";
	}

	function selectOption(elem) {
	  const allOptions = document.querySelectorAll(".option");
	  allOptions.forEach(opt => opt.classList.remove("active"));
	  elem.classList.add("active");
	}



</script>
</body>
</html>