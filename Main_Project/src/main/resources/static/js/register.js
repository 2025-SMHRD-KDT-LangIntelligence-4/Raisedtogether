// 부모 아이디, 닉네임 중복체크 함수
function parentDuplicate(type){
	let value;
	
	// type이 id인지 nickname인지에 따라 적절한 input값을 가져옴
	if (type === "id") {
		value = $("#id").val().trim();
	} else if (type === "nickname") {
		value = $("#nickname").val().trim();
	}
	
	// 값이 비어있으면 값을 입력하라고 알려줌
	if (!value) {
		alert("값을 입력해주세요.");
		return;
	}
	
	$.ajax({
		url : "/parentDuplicate",
		type : "POST",
		contentType : "application/json",
		data : JSON.stringify({type : type, value : value}),
		success : function(msg){
			alert(msg);
		},
		error: function() {
			alert("중복확인 중 오류 발생");
		}
	});
}

// 비밀번호 === 비밀번호확인 같은지 확인 후 메시지 띄워주는 함수
$(document).ready(function () {

	function isPasswordMatch() {
		const pw = $("#pw").val();
		const pwCheck = $("#pwCheck").val();

		if (pwCheck === "") {
			$("#pwMsg").text(""); // 입력 안 했을 때는 메시지 X
		} else if (pw === pwCheck) {
			$("#pwMsg").text(" * 비밀번호가 일치합니다.").css("color", "green");
		} else {
			$("#pwMsg").text(" * 비밀번호가 일치하지 않습니다.").css("color", "red");
		}
	}

	// pw, pwCheck에 input 들어올 때마다 isPasswordMatch 실행
	$("#pw, #pwCheck").on("input", isPasswordMatch);
});

// 휴대폰에 숫자만 가능하게 하는 함수 -> 다른 문자를 지워버림
$(document).ready(function() {

	$("#phone").on("input", function() {
		this.value = this.value.replace(/[^0-9]/g, "");
	});
});

//--------------------------------------------------------------------------
// 돌보미 아이디 중복 확인
function sitterDuplicate(type){
	let value;
	
	// type이 id인지 nickname인지에 따라 적절한 input값을 가져옴
	if (type === "id") {
		value = $("#id").val().trim();
	} else if (type === "nickname") {
		value = $("#nickname").val().trim();
	}
	
	// 값이 비어있으면 값을 입력하라고 알려줌
	if (!value) {
		alert("값을 입력해주세요.");
		return;
	}
	
	$.ajax({
		url : "/sitterDuplicate",
		type : "POST",
		contentType : "application/json",
		data : JSON.stringify({type : type, value : value}),
		success : function(msg){
			alert(msg);
		},
		error: function() {
			alert("중복확인 중 오류 발생");
		}
	});
}