<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${cpath}/css/Alarm.css">
<title>실시간 알림 로그 확인</title>

</head>
<body>
<div class="content-container">
  <div class="start-screen">
    <div class="backAlert">
      <a href="${cpath}/Mainpage"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> 
      <img class="alert-image" src="${cpath}/images/설정버튼.svg" alt="설정하기" />
    </div>
  </div>
  
  <h2 style="font-weight: 700; padding: 20px;">실시간 알림</h2>

  <div id="alertLog">알림을 불러오는 중...</div>
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
				class="nav-text">나의예약</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Chat'">
			<img src="/images/Message square.svg" alt="채팅 아이콘"> <span
				class="nav-text">채팅</span>
		</button>
		<button class="nav-item" onclick="location.href='${cpath}/Info'">
			<img src="/images/User.svg" alt="내정보 아이콘"> <span
				class="nav-text">내정보</span>
		</button>
	</div>




	<script>
		let previousData = "";

		async function fetchAlerts() {
			console.log("📡 fetchAlerts() 호출됨");

			try {
				const res = await
				fetch("${cpath}/api/alerts/latest");
				console.log("🌐 fetch 결과:", res);
				if (!res.ok) {
					console.error("❌ 응답 실패", res.statusText);
					return;
				}

				const data = await
				res.json();
				console.log("📦 받은 데이터:", data);

				const alertLog = document.getElementById("alertLog");
				const newText = data.messages.join("\n");

				if (newText !== previousData) {
					alertLog.textContent = newText;
					alertLog.scrollTop = alertLog.scrollHeight;
					previousData = newText;
				}

			} catch (err) {
				console.error("❌ fetchAlerts 실패:", err);
			}
		}

		setInterval(fetchAlerts, 5000);
		fetchAlerts();
	</script>
</body>
</html>
