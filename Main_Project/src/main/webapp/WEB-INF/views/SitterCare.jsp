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
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath}/css/SitterCare.css">
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
			<div class="emergency-title">돌봄 유형을 선택하세요</div>
			<div class="emergency-subtitle">예상 금액은 쿠폰 적용 전 금액이에요</div>

			<form class="search-bar"
				action="${pageContext.request.contextPath}/search" method="get">
				<input type="text" name="keyword" class="search-input"
					placeholder="돌보미 이름, 돌봄 유형, 태그">
				<button type="submit" class="search-button">
					<img alt="검색버튼" src="${cpath}/images/Search.svg">
				</button>
			</form>

			<div class="sort-wrapper">
				<div class="sort-button">
					<div class="sort-text">가까운 순</div>
					<div class="sort-icon">
						<div class="sort-arrow"></div>
					</div>
				</div>
			</div>
		</div>



		<!-- 7/30 여기부터 하면 됨. sitter컨트롤러 없애고 메인에 추가할 예정 -->
		<!-- 돌보미 카드 --> 
		<div class="caregiver-card-list">
			<c:forEach items="${sitterList}" var="s">
			<div class="caregiver-card" onclick="location.href='${cpath}/SitterDetail/${s.sitter_id}'">
				<div class="caregiver-name">${s.sitter_id}</div>
				<div class="caregiver-school">${s.sitter_education}</div>
				<div class="caregiver-desc">${s.sitter_introduction}</div>
				<div class="caregiver-tags">
			        <c:forEach var="tag" items="${fn:split(s.sitter_care_type_tag, ',')}">
			          <span># ${tag}</span>
			        </c:forEach>
				</div>
				<div class="divider"></div>
				<div class="caregiver-footer">
					<div class="price">
						<span class="amount">${s.sitter_price}</span> <span class="unit">/ 시급</span>
					</div>
					<div class="more">
						<span>더보기</span> <img src="${cpath}/images/Chevron right.svg"
							alt="더보기 아이콘" />
					</div>
				</div>
				<div class="caregiver-image">
					<img src="${s.sitter_photo_img}" alt="caregiver-profile" />
				</div>
			</div>
			</c:forEach>
<!-- 
			다른 카드들
			<div class="caregiver-card">
				<div class="caregiver-name">조윤미 돌보미</div>
				<div class="caregiver-school">특기교사</div>
				<div class="caregiver-desc">상냥하고 재미있는 엄마같은 돌보미 조윤미입니다</div>
				<div class="caregiver-tags">
					<span># 독후활동</span> <span># 숙제지도</span> <span># 영어</span>
				</div>
				<div class="divider"></div>
				<div class="caregiver-footer">
					<div class="price">
						<span class="amount">20,000원</span> <span class="unit">/ 시급</span>
					</div>
					<div class="more">
						<span>더보기</span> <img src="${cpath}/images/Chevron right.svg"
							alt="더보기 아이콘" />
					</div>
				</div>
				<div class="caregiver-image">
					<img src="https://placehold.co/60x60" alt="caregiver-profile" />
				</div>
			</div>

			필요 시 계속 반복
			<div class="caregiver-card"
				onclick="location.href='${cpath}/SitterDetailUrgent'">
				<div class="caregiver-name">임성윤 돌보미</div>
				<div class="caregiver-school">순천대학교 • 유아교육과</div>
				<div class="caregiver-desc">화창하게 밝고 계획적이며 다재다능한 돌보미입니다!</div>
				<div class="caregiver-tags">
					<span># 노래하기</span> <span># 한글공부</span> <span># 학습지풀이</span>
				</div>
				<div class="divider"></div>
				<div class="caregiver-footer">
					<div class="price">
						<span class="amount">18,000원</span> <span class="unit">/ 시급</span>
					</div>
					<div class="more">
						<span>더보기</span> <img src="${cpath}/images/Chevron right.svg"
							alt="더보기 아이콘" />
					</div>
				</div>
				<div class="caregiver-image">
					<img src="https://placehold.co/60x60" alt="caregiver-profile" />
				</div>
			</div>
 -->
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
	</div>



</body>
</html>