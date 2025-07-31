<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>카카오페이 결제</title>
  <link rel="stylesheet" href="${cpath}/css/카카오페이결제.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="popup2">
  <div class="popup-header">
    <button class="close-btn" onclick="backToPrevious()">×</button>
  </div>

  <div class="image-box">
    <img src="/images/Paying online while shopping on smartphone.svg" alt="카카오페이 이미지">
  </div>

  <div class="text-box">
    <span>결제는 카카오페이로 진행해요!</span>
    <p>최소 금액으로 선결제 후 돌봄 매칭이 모두 끝난 뒤,<br>추가비용 및 돌봄비 시급에 맞추어 추가 결제가 진행돼요</p>
  </div>

  <form action="${cpath}/Kakaopay" method="post">
    <button class="pay-btn">결제하기</button>
  </form>
</div>

<script>
  function backToPrevious() {
    $('#popupContainer').empty();       // 현재 팝업 제거
    $('#mainPopup').show();             // 이전 팝업 다시 보여주기
  }
</script>

</body>
</html>
