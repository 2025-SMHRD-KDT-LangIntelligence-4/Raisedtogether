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
<title>결제/쿠폰 등록 오버레이</title>
<link rel="stylesheet" href="${cpath}/css/결제_쿠폰_등록하기.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div id="popupContainer" class="popup1";></div>
<!-- 오버레이 배경 -->
  <div class="popup1">
    <div class="popup-header">
      <span>결제 / 쿠폰등록</span>
      	<button class="close-btn" onclick="closeOverlay()">×</button>
    </div>

    <!-- 쿠폰 선택 -->
    <div class="section">
      <label class="section-title">할인 쿠폰</label>
      <div class="coupon-box">
        <div class="left">
          <img src="/images/Coupon.svg" alt="쿠폰 아이콘" />
          <span>쿠폰 선택</span>
        </div>
        <div class="right">총 <span class="highlight">3장</span></div>
      </div>
    </div>

    <!-- 보유 포인트 -->
    <div class="section-point-box">
      <div class="point-label">보유 포인트</div>
      <div class="point-value">0P</div>
    </div>

    <ul class="info-text">
      <li>• 쿠폰과 포인트는 둘 중 하나만 사용 가능</li>
      <li>• 포인트는 결제 시 자동 적용</li>
    </ul>

    <!-- 가격 정보 -->
    <div class="price-info">
      <span>1회당</span>
      <div class="price">
        <img src="/images/Alert circle.svg" alt="정보" />
        <span>60,000원 ~</span>
      </div>
    </div>

    <!-- 다음 버튼 -->

    <button class="next-btn" onclick="loadPopup2()">다음</button>
</div>

<!-- 다음 팝업이 들어올 영역 -->
<div id="popupContainer"></div>


<script>
function loadPopup2() {
	  $('#mainPopup').hide(); // 기존 팝업 숨기기
	  $('#popupContainer').load('${cpath}/카카오페이결제', function(response, status, xhr) {
	    if (status === "error") {
	      console.error("AJAX 로드 실패:", xhr.status, xhr.statusText);
	    } else {
	    }
	  });
	}
</script>


</body>
</html>