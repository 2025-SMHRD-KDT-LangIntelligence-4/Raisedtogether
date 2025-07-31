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
<!-- 오버레이 전체 -->
<div class="overlay" id="matchingOverlay">

  <!-- 팝업 컨테이너 -->
  <div class="popup">
    <!-- 닫기 + 타이틀 -->
    <div class="popup-header">
      <span class="semi">돌보미 매칭 방식</span>
      <button class="close-btn" onclick="closeOverlay()">x</button>
    </div>
    <!-- 선택 영역 -->
    <div class="option active" onclick="selectOption(this)" data-target="결제_쿠폰_등록하기">
      <img src="/images/Stars.svg" alt="추천" />
      <div>
        <div class="title">추천 받고 선택할게요</div>
        <div class="desc">수업 신청 → 돌보미 추천 순으로 진행돼요</div>
      </div>
    </div>
    <div class="option" onclick="selectOption(this)" data-target="SitterCare">
      <img src="/images/Stars-1.svg" alt="직접 선택" />
      <div>
        <div class="title">콕 찍어서 선택할게요</div>
        <div class="desc">돌보미 선택 → 수업 신청 순으로 진행돼요</div>
      </div>
    </div>
    <!-- 다음 버튼 -->
    <button class="next-btn" onclick="loadPopup1()">다음</button>
    
    <!-- Ajax로 로딩될 팝업 내용 -->
    <div id="popupContainer"></div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
let selectedPage = "결제_쿠폰_등록하기"; // 기본값

function closeOverlay() {
  document.getElementById("matchingOverlay").style.display = "none";
}

function selectOption(elem) {
  document.querySelectorAll(".option").forEach(opt => opt.classList.remove("active"));
  elem.classList.add("active");
  selectedPage = elem.getAttribute("data-target");
}

function loadPopup1() {
	  if (selectedPage === "결제_쿠폰_등록하기") {
	    // Ajax로 팝업에 다른 JSP를 로드
	    $("#popupContainer").load("${cpath}/결제_쿠폰_등록하기");
	  } else if (selectedPage === "SitterCare") {
	    // 페이지 이동
	    window.location.href = "${cpath}/SitterCare";
	  }
	}
</script>
</body>
</html>