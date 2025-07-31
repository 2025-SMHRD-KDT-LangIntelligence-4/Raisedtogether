<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>방문 장소 등록</title>
    <link rel="stylesheet" href="/css/CareApply5.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="container">
	<!-- 상태바 -->
    	<div class="start-screen">
      		<div class="logoAlert">
         	<a href="${cpath}/CareApply4"><img class="back" src="${cpath}/images/Arrow left.png" alt="뒤로가기버튼" /></a>
         	<a href="${cpath}/Alert"><img class="alert-image" src="${cpath}/images/알림버튼.svg" alt="로고" /> </a>
      		</div>
   		</div>

    <div class="title">방문 장소 등록</div>


<form action="${cpath}/CareApply4" method="post"> 
    <div class="input-group">
        <label>방문 장소 명칭</label>
        <input type="text" class="input-box" placeholder="방문장소의 명칭을 입력해주세요"required />
    </div>

        <label class="part2">주소</label>
        <input type="text" class="postcode" id="sample3_postcode" placeholder="우편번호"/>
		<button type="button" class="search-btn" onclick="sample3_execDaumPostcode()">
			<img class="search-icon" src="${cpath}/images/Search.svg"/>
		</button><br>
		<input type="text" class="address" id="sample3_address" placeholder="주소"><br>
		<input type="text" class="extraAddress" id="sample3_extraAddress" placeholder="참고항목">
		<input type="text" class="detailAddress" id="sample3_detailAddress" placeholder="상세주소">
		
		<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
    </div>

    <div class="input-group">
         <label>특이사항</label>
		<textarea class="textarea-box" placeholder="예) CCTV가 있어요, 강아지가 있어요 등"></textarea>
    </div>
	
		<button class="confirm-btn" type="submit" >다음</button>
	
	
	 </form>
	
	
</div>






	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample3_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; 
            var extraAddr = ''; 

            if (data.userSelectedType === 'R') {
                addr = data.roadAddress;
            } else {
                addr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                document.getElementById("sample3_extraAddress").value = extraAddr;
            } else {
                document.getElementById("sample3_extraAddress").value = '';
            }

            document.getElementById('sample3_postcode').value = data.zonecode;
            document.getElementById("sample3_address").value = addr;
            document.getElementById("sample3_detailAddress").focus();
        }
    }).open(); // 👈 여기서 팝업창으로 실행
}
</script>
</body>
</html>
