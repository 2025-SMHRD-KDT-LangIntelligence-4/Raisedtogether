<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>긴급 돌봄</title>
<link rel="stylesheet" href="${cpath}/css/SitterUrgent.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="content-container">

		<div class="start-screen" >
			<div class="backAlert">
				<a href="${cpath}/Mainpage"> <img class="back"
					src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a> <img
					class="alert-image" src="${cpath}/images/알림버튼.svg" alt="알림버튼" />
			</div>
		</div>


		<!-- 돌봄 유형 선택 + 검색창 -->
		<div class="emergency-container">
			<div class="emergency-title">📢 긴급 돌봄 신청!</div>
			<div class="emergency-subtitle">지도 상 가까운 위치에 대기 중인 돌보미와 자동으로 연결해요</div>
			
				<button class="next-button" onclick="location.href='${cpath}/SitterUrgentApply'">긴급 돌봄 신청</button>
			
		</div>

		<div class="caregiver-card-list">
			<c:forEach items="${sitterList}" var="s">
				<div class="caregiver-card" onclick="location.href='${cpath}/SitterDetail/${s.sitterId}'">
					<div class="caregiver-name">${s.sitterName}</div>
					<div class="caregiver-school">${s.sitterEducation}</div>
					<div class="caregiver-desc">${s.sitterIntroduction}</div>
					<div class="caregiver-tags">
						<c:forEach var="tag" items="${fn:split(s.sitterCareTypeTag, ',')}">
							<span># ${tag}</span>
						</c:forEach>
					</div>
					<div class="divider"></div>
					<div class="caregiver-footer">
						<div class="price">
							<span class="amount">${s.sitterPrice}</span> <span class="unit">/
								시급</span>
						</div>
						<div class="more">
							<span>더보기</span>
							<img src="${cpath}/images/Chevron right.svg" alt="더보기 아이콘" />
						</div>
					</div>
					<div class="caregiver-image">
						<img src="${cpath}/${s.sitterPhotoImg}" alt="caregiver-profile" />
					</div>
				</div>
			</c:forEach>
		</div>
	</div>




			<!-- 실제 코드로 사용할 때 
<div class="caregiver-container">
    <c:forEach var="caregiver" items="${caregiverList}">
        <div class="caregiver-card">
            <div class="card-header">
                <div class="card-title">${caregiver.name} 돌보미</div>
                <div class="card-subtitle">${caregiver.univ} • ${caregiver.major}</div>
                <div class="card-image">
                    <img src="${caregiver.image}" alt="돌보미 이미지">
                </div>
            </div>
            <div class="card-desc">${caregiver.description}</div>
            <div class="card-tags">
                <c:forEach var="tag" items="${caregiver.tags}">
                    <span class="tag"># ${tag}</span>
                </c:forEach>
            </div>
            <div class="card-divider"></div>
            <div class="card-footer">
                <span class="price">${caregiver.price}</span>
                <span class="per-hour">/ 시급</span>
                <span class="more">더보기</span>
            </div>
        </div>
    </c:forEach>
</div>
-->


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
			</div></body>
</html>