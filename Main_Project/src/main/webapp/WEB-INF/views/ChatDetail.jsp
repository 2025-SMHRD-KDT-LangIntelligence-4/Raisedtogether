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
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${cpath}/css/ChatDetail.css">
<title>Insert title here</title>
</head>
<body>
	<div class="content-container">


		<div class="start-screen" id=".top">
			<div class="backAlert">
				<a href="${cpath}/Mainpage"><img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <span
					style="font-weight: 800;">이희자 돌보미</span> <img class="alert-image"
					src="${cpath}/images/설정버튼.svg" alt="설정하기" />
			</div>
		</div>


		<!-- 💬 채팅 전체 컨테이너 -->
		<div class="chat-container">


			<!-- 💭 채팅 말풍선 영역 -->
			<div class="chat-messages" id="chatMessages">
				<!-- 여기에 메시지들이 추가됩니다 -->
			</div>


		</div>
		
		
		
		<!-- ✅ 채팅 하단 입력창 (Flexbox 기반) -->
		<div class="chat-input-wrapper">
			<div class="add-button">
				<img src="/images/Button Md.svg" alt="Add" />
			</div>

			<div class="input-box">
				<input type="text" id="chatInput" class="chat-input"
					placeholder="메세지를 입력해주세요" />
			</div>

			<div class="send-button" id="sendBtn">
				<img src="/images/send.svg" alt="Send" />
			</div>
		</div>
		
		
	</div>



	<!-- 바텀 네비 -->
	<div class="bottom-nav">


		<button class="nav-item" onclick="location.href='${cpath}/Mainpage'">
			<img src="/images/Home-nocolor.svg" alt="홈 아이콘"> <span
				class="nav-text ">홈</span>
		</button>
		<button class="nav-item"
			onclick="location.href='${cpath}/Reservation'">
			<img src="/images/Calendar.svg" alt="나의예약 아이콘"> <span
				class="nav-text ">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='#top'">
			<img src="/images/Message square pocus.svg" alt="채팅 아이콘"> <span
				class="nav-text active">채팅</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Info'">
			<img src="/images/User.svg" alt="내정보 아이콘"> <span
				class="nav-text">내정보</span>
		</button>
	</div>


	<script>
  const sendBtn = document.getElementById('sendBtn');
  const chatInput = document.getElementById('chatInput');
  const chatMessages = document.getElementById('chatMessages');

  // 전송 함수
  function sendMessage() {
    const text = chatInput.value.trim();
    if (text === '') return;

    // 채팅 말풍선 생성
    const bubble = document.createElement('div');
    bubble.classList.add('chat-bubble');
    bubble.textContent = text;

    chatMessages.appendChild(bubble);        // 말풍선 추가
    chatInput.value = '';                    // 입력창 비우기
    chatMessages.scrollTop = chatMessages.scrollHeight; // 스크롤 맨 아래로
  }

  // 클릭 이벤트
  sendBtn.addEventListener('click', sendMessage);

  // 엔터키로도 전송 가능
  chatInput.addEventListener('keydown', (e) => {
    if (e.key === 'Enter') {
      sendMessage();
    }
  });
</script>




</body>
</html>