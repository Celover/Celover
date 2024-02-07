/* 이메일 유효성 검사 */
$(document).on("blur", "#createAccountArea #email", function(){

	let email = $("#createAccountArea #email").val();
	let $email = $("#createAccountArea #email");
	let regexEmail = /^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/;	
	
	$('#msgArea1 [id^="email"]').css("display", "none");

	
	if(email.length == 0){
		$("#msgArea1 #email1").css("display", "none");
		$email.parent().removeClass("error");
	}else{
		
		if(!regexEmail.test(email)){ // 조건에 맞지 않는 경우
			$("#msgArea1 #email1").css("display", "block");
			$email.parent().removeClass("success");
			$email.parent().addClass("error");
		} else {
			$("#msgArea1 #email1").css("display", "none");
			$email.parent().removeClass("error");
			$email.parent().addClass("success");
		}
	}
	
})



/* 닉네임 유효성 검사 */
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

/* 생년월일 유효성 검사 */
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

/* 전화번호 입력시 자동 하이픈 */
let autoHyphen = (e) => {
	e.value = e.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}

/* 전화번호 유효성검사 */
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

/* 인증 약관 체크 검사 */
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

/* 인증 약관 체크버튼 클릭시 */
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
			userId: $("#hiddenUserId").val(),
			password: $("#hiddenPassword").val(),
			email: $("#email").val(),
			nickname: $("#nickname").val(),
			birth: $("#birth").val(),
			gender: $("#gender input:checked").val(),
			nationality: $("#nationality input:checked").val(),
			phone: $("#phone").val(),
		};
		
		
		// 추가 정보 입력 ajax 실행
		$.ajax({
			type: "PUT",
			url: "/visitor/users",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success: function(resp){
				
				if (resp.status === 500) {
					alert("추가 정보 입력이 실패했습니다.")
				} else {
					alert("추가 정보 입력이 완료되었습니다.");
					location.href = "/";
				}
				console.log("회원가입 ajax 통신 성공 !");
				
			},error:function(error){
				alert(JSON.stringify(error));
				console.log("추가정보입력 ajax 실패!")
			}
			
		})
	}
})