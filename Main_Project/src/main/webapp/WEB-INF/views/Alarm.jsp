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
    <title>실시간 분석 로그</title>
</head>
<body>



<div class="content-container">
  <div class="start-screen">
    <div class="backAlert">
      <a href="${cpath}/Mainpage"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> 
      <span style="font-weight: 800;">실시간 영상</span>
				<a href="${cpath}/Alert"><img class="alert-image"
					src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
    </div>
  </div>
  
  
 

<div id="logBox">알림을 불러오는 중...</div>

  
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
    function fetchLog() {
        fetch("/api/log")
            .then(res => res.text())
            .then(data => {
                const logBox = document.getElementById("logBox");
                logBox.textContent = data || "📭 현재 기록된 로그가 없습니다.";
                logBox.scrollTop = logBox.scrollHeight;
            })
            .catch(err => {
                document.getElementById("logBox").textContent = "🚫 로그 불러오기 실패";
                console.error("로그 불러오기 실패:", err);
            });
    }

    setInterval(fetchLog, 3000);
    fetchLog();
</script>

</body>
</html>
