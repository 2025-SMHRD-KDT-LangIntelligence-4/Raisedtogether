<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄 유형 선택</title>
<link rel="stylesheet" href="/css/CareApply8.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container">
	<!-- 상태바 -->
		<div class="start-screen">
			<div class="logoAlert">
				<a href="${cpath}/CareApply5"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
				<a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
			</div>
		</div>
    <h2 class="title">돌봄 유형을 선택하세요</h2>

    <div class="card-list">
        <div class="card" onclick="selectCard(0)">
            <div class="checkbox">
                <div class="checkmark">✔</div>
            </div>
            <div class="card-title">놀이시간</div>
            <div class="card-desc-bold">돌보미와 함께하는 창작놀이</div>
            <ul class="card-desc">
                <li>블록놀이</li>
                <li>보드게임</li>
                <li>말놀이</li>
            </ul>
        </div>

        <div class="card" onclick="selectCard(1)">
            <div class="checkbox">
                <div class="checkmark">✔</div>
            </div>
            <div class="card-title">창의미술</div>
            <div class="card-desc-bold">돌보미와 함께하는 오감발달</div>
            <ul class="card-desc">
                <li>그림그리기</li>
                <li>색깔놀이</li>
                <li>종이접기</li>
            </ul>
        </div>

        <div class="card" onclick="selectCard(2)">
            <div class="checkbox">
                <div class="checkmark">✔</div>
            </div>
            <div class="card-title">학습시간</div>
            <div class="card-desc-bold">돌보미 선생님이 학습해요</div>
            <ul class="card-desc">
                <li>독서 습관 기르기</li>
                <li>한글놀이</li>
                <li>학습지 풀이</li>
            </ul>
        </div>

        <div class="card" onclick="selectCard(3)">
            <div class="checkbox">
                <div class="checkmark">✔</div>
            </div>
            <div class="card-title">영어</div>
            <div class="card-desc-bold">돌보미와 함께하는 신나는 영어</div>
            <ul class="card-desc">
                <li>알파벳 놀이</li>
                <li>영어노래 듣고 따라부르기</li>
                <li>영어 그림책 보기</li>
            </ul>
        </div>
    </div>
		<div class="next-button" id="nextBtn">다음</div>
		
		<div id="popupPage" class="popup-hidden"></div>
	</div>
<script>
	function selectCard(index) {
	    const cards = document.querySelectorAll('.card');
	    cards.forEach((card, i) => {
	        if (i === index) {
	            card.classList.add('selected');
	        } else {
	            card.classList.remove('selected');
	        }
	    });
}
	$('#nextBtn').click(function () {
	      $.ajax({
	        url: '/매칭방식',
	        success: function (data) {
	          $('#popupPage').html(data).removeClass('popup-hidden').addClass('popup-visible');
	        }
	      });
	    });
</script>

</body>
</html>