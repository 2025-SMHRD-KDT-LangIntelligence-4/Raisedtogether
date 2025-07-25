// 아이디, 닉네임 중복체크 함수
function checkDuplicate(type){
	let value;
	
	// type이 id인지 nickname인지에 따라 적절한 input값을 가져옴
	if (type === "id") {
		value = $("#inputId").val().trim();
	} else if (type === "nickname") {
		value = $("#inputNickname").val().trim();
	}
	
	// 값이 비어있으면 값을 입력하라고 알려줌
	if (!value) {
		alert("값을 입력해주세요.");
		return;
	}
	
	$.ajax({
		url : "/checkDuplicate",
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

// 
$(document).ready(function () {
  $("#inputPw, #inputPwConfirm").on("input", function () {
    let pw = $("#inputPw").val();
    let pwConfirm = $("#inputPwConfirm").val();

    if (pw === "" || pwConfirm === "") {
      $("#pwMatchMsg").text("").css("color", "");
      return;
    }

    if (pw === pwConfirm) {
      $("#pwMatchMsg").text("비밀번호가 일치합니다").css("color", "green");
    } else {
      $("#pwMatchMsg").text("비밀번호가 일치하지 않습니다").css("color", "red");
    }
  });
});