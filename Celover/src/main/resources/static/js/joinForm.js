/* 회원정보수정 페이지 script */
$(document).on("keyup", "#createAccountArea #userId", function() {

	let regexId = /^[a-z0-9_-]{5,20}$/;
	let userId = $("#createAccountArea #userId").val();
	let $userId = $("#createAccountArea #userId");

	$('[id^="state"]').css("display", "none");

	if (userId.length != 0) { // 값이 있을때

		if (!regexId.test(userId)) { // 조건에 맞지 않는 경우
			$("#checkIcon .fa-xmark").css("display", "");
			$("#checkIcon .fa-check").css("display", "none");

		} else {  // 조건에 맞는 경우
			// 아이디 중복검사 ajax 실행            	
			$.ajax({
				type: "GET",
				url: "/auth/users/id/" + userId + "/exists",
				success: function(result) {
					console.log("아이디 중복체크 ajax 성공!");

					if (result) { // 중복된 아이디 
						$("#checkIcon .fa-xmark").css("display", "");
						$("#checkIcon .fa-check").css("display", "none");
					} else {
						$("#checkIcon .fa-xmark").css("display", "none");
						$("#checkIcon .fa-check").css("display", "");
					}
				}, error: function() {
					console.log(userId);
					console.log("아이디 중복체크 ajax 실패!");
				}
			})
		}
	}
});

$(document).on("blur", "#createAccountArea #userId", function() {

	let regexId = /^[a-z0-9_-]{5,20}$/;
	let userId = $("#createAccountArea #userId").val();
	let $userId = $("#createAccountArea #userId");

	$('#msgArea1 [id^="id"]').css("display", "none");

	if (userId.length == 0) { // 값이 없을때
		$("#msgArea1 #id1").css("display", "block");
		$("#checkIcon .fa-xmark").css("display", "");
		$("#checkIcon .fa-check").css("display", "none");
		$userId.parent().removeClass("success");
		$userId.parent().addClass("error");
	} else { // 값이 있을때

		if (!regexId.test(userId)) { // 조건에 맞지 않는 경우
			$("#msgArea1 #id2").css("display", "block");
			$("#checkIcon .fa-xmark").css("display", "");
			$("#checkIcon .fa-check").css("display", "none");
			$userId.parent().removeClass("success");
			$userId.parent().addClass("error");

		} else { // 조건에 맞는 경우

			// 아이디 중복검사 ajax 실행            	
			$.ajax({
				type: "GET",
				url: "/auth/users/id/" + userId + "/exists",
				success: function(result) {
					console.log("아이디 중복체크 ajax 성공!");

					if (result) { // 중복된 아이디 
						$("#msgArea1 #id3").css("display", "block");
						$("#checkIcon .fa-xmark").css("display", "");
						$("#checkIcon .fa-check").css("display", "none");
						$userId.parent().removeClass("success");
						$userId.parent().addClass("error");
					} else {
						$("#checkIcon .fa-xmark").css("display", "none");
						$("#checkIcon .fa-check").css("display", "");
						$userId.parent().removeClass("error");
						$userId.parent().addClass("success");
					}
				}, error: function() {
					console.log("아이디 중복체크 ajax 실패!");
				}
			})
		}
	}
})

$(document).on("click", "#eyeBtn .fa-eye", function() {
	// 텍스트로 타입변환
	$(this).parent().prev().attr("type", "text");
	$(this).css("display", "none");
	$("#eyeBtn .fa-eye-slash").css("display", "")
})

$(document).on("click", "#eyeBtn .fa-eye-slash", function() {
	// 텍스트로 타입변환
	$(this).parent().prev().attr("type", "password");
	$(this).css("display", "none");
	$("#eyeBtn .fa-eye").css("display", "")
})

// 비밀번호 유효성 검사
/* $(document).on("blur", "#createAccountArea #password", function () {

	let pw = $("#createAccountArea #password").val();
	let $pw = $("#createAccountArea #password");
	let regexPw = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<ㄴ>,.?~\\-]).{8,}$/;

	// 초기화
	$('#msgArea1 [id^="pwd"]').css("display", "none");

	if (pw.length == 0) { // 값이 비어있을때
		// 비밀번호: 필수 정보입니다. 메시지 출력
		$("#msgArea1 #pwd1").css("display", "block");
		$pw.parent().removeClass("success");
		$pw.parent().addClass("error");

	} else { // 값이 있을때

		if (!regexPw.test(pw)) { // 사용불가능한 비밀번호
			$("#msgArea1 #pwd2").css("display", "block");
			$pw.parent().removeClass("success");
			$pw.parent().addClass("error");
		} else { // 사용가능한 비밀번호
			$('#msgArea1 [id^="pwd"]').css("display", "none");
			$pw.parent().removeClass("error");
			$pw.parent().addClass("success");
		}
	}
}) */

$(document).on("blur", "#createAccountArea #nickname", function() {

	let nickname = $("#createAccountArea #nickname").val();
	let $nickname = $("#createAccountArea #nickname");
	let regexNickname = /^[a-zA-Z0-9_]{3,16}$/;

	$('#msgArea2 [id^="nickname"]').css("display", "none");

	if (nickname.length == 0) { // 값이 없을때
		$("#msgArea2 #nickname1").css("display", "block");
		$nickname.parent().removeClass("success");
		$nickname.parent().addClass("error");
	} else { // 값이 있을때

		if (!regexNickname.test(nickname)) { // 조건에 맞지 않는 경우
			$("#msgArea2 #nickname2").css("display", "block");
			$nickname.parent().removeClass("success");
			$nickname.parent().addClass("error");

		} else { // 조건에 맞는 경우
			console.log("ajax실행");

			$.ajax({
				type: "GET",
				url: "/auth/users/nickname/" + nickname + "/exists",
				success: function(result) {
					console.log("닉네임 중복체크 ajax 성공!");

					if (result) { // 중복된 닉네임 
						$("#msgArea2 #nickname3").css("display", "block");
						$("#msgArea2 #nickname3").css("display", "block");
						$nickname.parent().removeClass("success");
						$nickname.parent().addClass("error");
					} else {
						$nickname.parent().removeClass("error");
						$nickname.parent().addClass("success");
					}
				}, error: function() {
					console.log("닉네임 중복체크 ajax 실패!");
				}
			})
		}
	}
})

function isValidDate(dateString, format = "YYYYMMDD") {
	return moment(dateString, format, true).isValid();
}

$(document).on("blur", "#createAccountArea #birth", function() {

	let birth = $("#createAccountArea #birth").val();
	let $birth = $("#createAccountArea #birth");
	// let regexbirth = /^[a-zA-Z0-9_]{3,16}$/;

	let regexbirth = /^\d{8}/;
	$('#msgArea2 [id^="birth"]').css("display", "none");

	if (birth.length == 0) { // 값이 없을때
		$("#msgArea2 #birth1").css("display", "block");
		$birth.parent().removeClass("success");
		$birth.parent().addClass("error");

	} else { // 값이 있을때

		// . 임시 제거
		let rawBirth = birth.replace(/\./g, "");

		if (!regexbirth.test(parseInt(rawBirth))) { // 조건에 맞지 않는 경우 (숫자8자리)

			console.log(rawBirth)
			$("#msgArea2 #birth2").css("display", "block");
			$birth.parent().removeClass("success");
			$birth.parent().addClass("error");

		} else { // 조건에 맞는 경우 (숫자 8자리)

			let currentDate = moment();

			let today = currentDate.format("YYYY.MM.DD");
			let one_hundred_ten_year_ago = currentDate.subtract(110, 'years').format("YYYY.MM.DD");

			// 진짜 날짜형식일때만 형식 변환해준다. yyyy.mm.dd
			if (isValidDate(rawBirth)) {

				let formattedDate2 = rawBirth.replace(/(\d{4})(\d{2})(\d{2})/, '$1.$2.$3')
				$birth.val(formattedDate2);

				console.log("formattedDate2 : " + formattedDate2);
				console.log("one_hundred_ten_year_ago : " + one_hundred_ten_year_ago);
				console.log("today : " + today);

				if ((formattedDate2 > one_hundred_ten_year_ago) && (formattedDate2 < today)) {
					$birth.parent().removeClass("error");
					$birth.parent().addClass("success");
				} else {
					$("#msgArea2 #birth3").css("display", "block");
					$birth.parent().removeClass("success");
					$birth.parent().addClass("error");
				}

			} else {
				$("#msgArea2 #birth3").css("display", "block");
				$birth.parent().removeClass("success");
				$birth.parent().addClass("error");
			}



		}
	}
})

let autoHyphen = (e) => {
	e.value = e.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}

$(document).on("blur", "#createAccountArea #phone", function() {
	let phone = $("#createAccountArea #phone").val();
	let $phone = $("#createAccountArea #phone");

	$('#msgArea2 [id^="phone"]').css("display", "none");

	if (phone.length == 0) {
		$("#msgArea2 #phone1").css("display", "block");
		$phone.parent().removeClass("success");
		$phone.parent().addClass("error");

	} else if (phone.length == 13) {
		$phone.parent().removeClass("error");
		$phone.parent().addClass("success");
	} else {
		$("#msgArea2 #phone2").css("display", "block");
		$phone.parent().removeClass("success");
		$phone.parent().addClass("error");
	}
})


$(document).on("click", "#termsOfAuthentication input", function() {
	$("#msgArea3 #terms").css("display", "");

	if ($(this).prop("checked")) {
		$(".accordion-body .fa-check").addClass("checked");
		$(".accordion-item").removeClass("error")
	} else {
		$(".accordion-body .fa-check").removeClass("checked");
		$(".accordion-item").addClass("error")
		$("#msgArea3 #terms").css("display", "block");

	}
})
$(document).on("click", ".accordion-body .fa-check", function() {

	$(this).toggleClass("checked");

})

// check 박스 클릭시
$(document).on("click", ".accordion-body .fa-check", function() {
	let checkNum = $(".accordion-body .fa-check.checked").length;
	$("#msgArea3 #terms").css("display", "");

	if (checkNum == $(".accordion-body .fa-check").length) {
		$("#termsOfAuthentication input").prop("checked", true);
		$(".accordion-item").removeClass("error")

	} else {
		$("#termsOfAuthentication input").prop("checked", false)
		$(".accordion-item").addClass("error")
		$("#msgArea3 #terms").css("display", "block");
	}

})


$("#submit").click(function() {
	$("#createAccountArea input").trigger("blur");
	$("#termsOfAuthentication input").trigger("click");
	$("#termsOfAuthentication input").trigger("click");

	if ($(".error").length == 0) {

		let data = {
			userId: $("#userId").val(),
			password: $("#password").val(),
			email: $("#email").val(),
			nickname: $("#nickname").val(),
			birth: $("#birth").val(),
			gender: $("#gender input:checked").val(),
			nationality: $("#nationality input:checked").val(),
			phone: $("#phone").val(),
		};

		console.log(data);

		// 회원가입 ajax 실행
		$.ajax({
			type: "POST",
			url: "/auth/users",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json"
			, success: function(resp) {

				if (resp.status === 500) {
					alert("회원가입에 실패하였습니다.")
				} else {
					alert("회원가입이 완료되었습니다.");
					console.log(resp);
					location.href = "/";
				}
				console.log("회원가입 ajax 통신 성공 !");


			}, error: function(error) {
				alert(JSON.stringify(error));
				console.log("회원가입 ajax 통신 실패 !");
			}
		})


	}
})
