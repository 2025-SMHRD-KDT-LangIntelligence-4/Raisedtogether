<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!-- 우빈 : 현재 줄 기준, 위 항목 복사해서 view 페이지에 기본으로 넣을 것 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>돌보미 회원가입</title>
<link rel="stylesheet" href="/css/RegisterSitter.css" />
</head>
<body>

	<div class="container">
		<!-- 상태바 -->
		
		<div class="start-screen">
			<div class="backAlert">
         			<a href="${cpath}/"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
      			</div>
		</div>

		<div class="container2">
			<div class="logo-title">같이키움</div>
			<img class="profile-image" src="/image/같이키움 로고.png" alt="프로필이미지" />
			<div class="page-title">돌보미 회원가입</div>

			<label class="label" for="sitterId">이메일</label>
			<div class="email-row">
				<input type="email" name="sitterId" class="input"
					placeholder="eeemail@gacikium.com" />
				<button class="check-btn">중복확인</button>
			</div>

			<label class="label" for="sitterPw">비밀번호</label> <input
				type="password" name="sitterPw" class="input"
				placeholder="영문, 숫자, 특수문자를 사용한 8~20자" /> <label class="label"
				for="sitterPw">비밀번호 확인</label> <input type="password"
				name="sitterPw" class="input" placeholder="위의 비밀번호를 다시 입력해주세요." />

			<label class="label" for="sitterName">이름</label> <input type="text"
				name="sitterName" class="input" placeholder="이름을 입력해주세요" /> <label
				class="label" for="sitterPhone">전화번호</label> <input type="tel"
				name="sitterPhone" class="input" placeholder="01012345678" /> <label
				class="label" for="sitterCareType">희망 돌봄 유형</label> <select
				name="sitterCareType" class="input">
				<option value="">선택해주세요</option>
				<option value="놀이시간">놀이시간</option>
				<option value="학습시간">학습시간</option>
				<option value="창의미술">창의미술</option>
				<option value="영어">영어</option>
			</select> <label class="label" for="sitterPhotoImg">프로필 사진 등록</label>
			<div class="profile-upload">
				<div class="profile-upload">
					<div class="image-frame">
						<img id="previewImage" src="" alt="미리보기" />
					</div>
					<input type="file" id="profileInput" accept="image/*" />
				</div>
			</div>

			<label class="label for "tag">태그 선택</label>
			<div class="tag-container">
				<input type="checkbox" id="tag1" name="tags" value="노래하기" /> <label
					for="tag1" class="tag">노래하기</label> <input type="checkbox"
					id="tag2" name="tags" value="그림그리기" /> <label for="tag2"
					class="tag">그림그리기</label> <input type="checkbox" id="tag3"
					name="tags" value="한글공부" /> <label for="tag3" class="tag">한글공부</label>
				<input type="checkbox" id="tag4" name="tags" value="학습지 풀이" /> <label
					for="tag4" class="tag">학습지 풀이</label> <input type="checkbox"
					id="tag5" name="tags" value="영어돌봄" /> <label for="tag5"
					class="tag">영어돌봄</label> <input type="checkbox" id="tag6"
					name="tags" value="종이접기" /> <label for="tag6" class="tag">종이접기</label>
				<input type="checkbox" id="tag7" name="tags" value="레고" /> <label
					for="tag7" class="tag">레고</label> <input type="checkbox" id="tag8"
					name="tags" value="책읽기" /> <label for="tag8" class="tag">책읽기</label>
				<input type="checkbox" id="tag9" name="tags" value="독후활동" /> <label
					for="tag9" class="tag">독후활동</label> <input type="checkbox"
					id="tag10" name="tags" value="역할놀이" /> <label for="tag10"
					class="tag">역할놀이</label> <input type="checkbox" id="tag11"
					name="tags" value="구연동화" /> <label for="tag11" class="tag">구연동화</label>
				<input type="checkbox" id="tag12" name="tags" value="만들기" /> <label
					for="tag12" class="tag">만들기</label> <input type="checkbox"
					id="tag13" name="tags" value="한글공부" /> <label for="tag13"
					class="tag">한글공부</label> <label class="label"
					for="sitterIntroduction">한 줄 자기소개</label>

				<textarea name="sitterIntroduction" class="textarea"
					placeholder="아이들이나 부모님들에게 자신을 소개해주세요"></textarea>



				<a href="${cpath}/">
				<button class="submit-btn" onclick="/Mainpage">가입하기</button>
				</a>

			</div>


			<!-- 프터 -->
			<footer class="footer">
				<div class="footer-content">
					<div class="footer-links">
						<a href="#">이용약관</a> <a href="#">개인정보 처리방침</a> <a href="#">고객센터</a>
					</div>
					<div class="footer-info">
						<p>© 2025 같이키움. All rights reserved.</p>
					</div>
				</div>
			</footer>


		</div>
		<script>
			const input = document.getElementById("profileInput");
			const preview = document.getElementById("previewImage");

			input.addEventListener("change", function() {
				const file = this.files[0];
				if (file) {
					const reader = new FileReader();
					reader.onload = function(e) {
						preview.src = e.target.result;
					};
					reader.readAsDataURL(file);
					reader.onload = function(e) {
						preview.src = e.target.result;
						preview.style.display = "block"; // ← 이미지 있으면 보여줌
					};
				}
			});
		</script>
</body>
</html>