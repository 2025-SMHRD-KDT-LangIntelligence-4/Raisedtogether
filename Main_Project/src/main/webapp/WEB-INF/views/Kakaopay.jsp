<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>방문 날짜 등록</title>
<link rel="stylesheet" href="/css/CareApply7.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
   <div class="container">

      <!-- 상태바 -->
      <div class="start-screen">
         <div class="logoAlert">
            <a href="${cpath}/CareApply6"><img class="back"
               src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <a
               href="${cpath}/Alert"><img class="alert-image"
               src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
         </div>
      </div>
	<img src="${cpath}/images/카카오페이 QR창.png" style="width: 400px; height: auto;">


         
         <div class="notice-box">
            <div class="notice-title">환불 규정</div>
            <div class="notice-line"></div>
            <div class="notice-content">
               무통장입금 : 계좌환불 또는 적립금 환불이 가능합니다. (접수일부터 1~3영업일)
카드결제 : 카드취소 또는 적립금 환불이 가능합니다. 카드취소 후 취소일로부터 완료까지 주말 제외 3~5영업일 정도 소요됩니다.
휴대폰결제 : 휴대폰 취소 시 약 1~2영업일 정도의 처리기간이 소요되며, 휴대폰 청구서에서 내용확인이 가능합니다.
            </div>
            <img class="warning-icon"src="${cpath}/images/Icon.png" alt="주의사항" />
         </div>
         <a href="${cpath}/Reservation"><button type="submit"
               class="btn-next">다음</button></a>
      </form>
   </div>
   <script>
    function toggleTime(element) {
      // 모든 성별 버튼에서 active 제거
      document.querySelectorAll('.time-button').forEach(btn => {
        btn.classList.remove('active');
      });
      // 선택한 버튼만 active
      element.classList.add('active');
    }
  </script>
</body>
</html>
