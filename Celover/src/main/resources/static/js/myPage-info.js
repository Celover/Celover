/*$(function() {
	$("#myPageMenu ul li").click(function() {
		$("#myPageMenu ul li").children().removeClass("act");
		$(this).children().addClass("act");
	})

})*/

$(function(){
	$('#myPageMenu ul li').children().eq(0).addClass("act");
})


/* 회원정보수정 페이지 script */

let autoHyphen = (e) => {
	e.value = e.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}

$(function() {

	let birth = $("#hiddenBirth").val();

	$('#datePicker').datepicker({
		format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		startDate: '-120y',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		endDate: '+1d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		autoclose: true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		clearBtn: true, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		// datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		// daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		// daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
		disableTouchKeyboard: false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		// multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		templates: {
			leftArrow: '&laquo;',
			rightArrow: '&raquo;'
		}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		showWeekDays: true,// 위에 요일 보여주는 옵션 기본값 : true
		// title: "테스트",	//캘린더 상단에 보여주는 타이틀
		todayHighlight: true,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		toggleActive: false,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		weekStart: 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		language: "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

	});
	$('#datePicker').datepicker('setDate', birth);
});


$(function() {

	let originGender = $("#hiddenGender").val();
	console.log(originGender)

	if (originGender == 'm') {
		$("#maleGender").prop("checked", true);
	} else if (originGender == 'f') {
		$("#femaleGender").prop("checked", true);
	} else {
		$("#noGender").prop("checked", true);
	}

	let $currentPwd = $("#password");
	let $newPwd = $("#newPassword");
	let $newPwd2 = $("#newPassword2");

	// 변경할 비밀번호 입력 함수
	$(document).on("keyup", "#newPassword", function() {

		let regexPw = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]).{8,}$/;

		$newPwd.next().removeClass(); // 초기화

		$newPwd2.trigger("keyup");

		if ($newPwd.val().length == 0) { // 값이 비어있을때

			return;

		} else { // 값이 들어있을때

			if (!regexPw.test($newPwd.val())) { // 유효성 검사 실패시
				$newPwd.next().text("비밀번호는 8자 이상이어야 하며, 숫자/영문자/특수문자를 모두 포함해야 합니다.");
				$newPwd.next().addClass("error");

			} else { // 유효성 검사 성공시

				$newPwd.next().addClass("success"); // 초기화
				$newPwd.next().text("좋은 비밀번호네요 !");

			}

		}

	})

	// 변경할 비밀번호 재입력 함수
	$(document).on("keyup", "#newPassword2", function() {

		$newPwd2.next().removeClass();

		if ($newPwd2.val().length == 0) {

			return;

		} else {

			if ($newPwd.val() != $newPwd2.val()) {
				$newPwd2.next().text("비밀번호가 일치하지 않습니다.");
				$newPwd2.next().addClass("error");
			} else {
				$newPwd2.next().addClass("success"); // 초기화
				$newPwd2.next().text("비밀번호가 일치합니다.")
			}
		}


	})

	// 비밀번호 변경 버튼 활성화 함수
	$(document).on("keyup", ".password", function() {

		if ($currentPwd.val().length && $newPwd.next().hasClass("success") && $newPwd2.next().hasClass("success")) {
			// 버튼 활성화
			$("#submitChangePwd").prop("disabled", false);
		} else {
			$("#submitChangePwd").prop("disabled", true);
		}

	})

	// 비밀번호 변경 버튼 클릭시
	$("#submitChangePwd").click(function() {
		let data = {
			currentPassword: $currentPwd.val(),
			newPassword: $newPwd.val(),
			newPassword2: $newPwd2.val()
		}

		$.ajax({
			url: "/mypage/users/password",
			type: "PUT",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success: function(resp) {

				console.log(JSON.stringify(resp));

				if (resp.status === 500) {
					alert(resp.data);
				} else {
					alert("비밀번호가 변경되었습니다.");
					$newPwd.next().removeClass();
					$newPwd2.next().removeClass();
					$(".password").val("");
					$(".password").trigger("keyup");
					$('#changePasswordModal').modal('hide');
				}


			}, error: function(error) {
				console.log(error)
				console.log("비밀번호 변경 ajax 실패 !")
			}

		})
	})

	let originNickname = $("#nickname").val();

	// 닉네임에 키보드 입력이 감지됐을 경우
	$("#nickname").keyup(function() {

		let regexNickname = /^[a-zA-Z0-9_]{3,16}$/;
		let nickname = $(this).val();

		$("#nickname").next().removeClass(); // 메시지 초기화

		if (originNickname != nickname && nickname != "") { // 닉네임의 값이 변경됐을 경우 (처음과 다른 경우)

			if (!regexNickname.test(nickname)) { // 조건에 맞지 않는 경우

				$("#nickname").next().addClass("error");
				$("#nickname").next().text("3~16자의 영문 대소문자, 숫자, 밑줄(_)만 사용가능합니다.");

				return;
			}

			$.ajax({
				type: "GET",
				url: "/mypage/users/nickname/" + nickname + "/exists",
				success: function(result) {

					console.log(result);

					if (result) { // 존재하는 닉네임 인 경우
						$("#nickname").next().addClass("error");
						$("#nickname").next().text("이미 사용중인 닉네임입니다.");
					} else { // 존재하지 않는 경우
						$("#nickname").next().addClass("success");
						$("#nickname").next().text("사용가능한 닉네임입니다.");
					}


				},
				error: function() {
					console.log("닉네임 중복체크 ajax 실패!");
				}
			})
		} else {
			return;
		}
	})

	let originEmail = $("#email").val();

	// 이메일에 키보드 입력이 감지됐을 경우
	$("#email").keyup(function() {
		let email = $(this).val();
		let regexEmail = /^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/;

		$("#email").next().removeClass(); // 메시지 초기화

		if (originEmail != email && email != "") { // 닉네임의 값이 변경됐을 경우 (처음과 다른 경우)

			if (!regexEmail.test(email)) { // 조건에 맞지 않는 경우

				$("#email").next().addClass("error");
				$("#email").next().text("올바른 이메일 형식이 아닙니다.");

				return;
			}

			$.ajax({
				type: "GET",
				url: "/mypage/users/email/" + email + "/exists",
				success: function(result) {

					console.log(result);

					if (result) { // 존재하는 닉네임 인 경우
						$("#email").next().addClass("error");
						$("#email").next().text("이미 사용중인 이메일입니다.");
					} else { // 존재하지 않는 경우
						$("#email").next().addClass("success");
						$("#email").next().text("사용가능한 이메일입니다.");
					}


				},
				error: function() {
					console.log("이메일 중복체크 ajax 실패!");
				}
			})
		} else {
			return;
		}
	})
	
	$("#withdrawal").click(function(){
		if(confirm("정말로 탈퇴하시겠습니까 ?")){
			$.ajax({
				type: "DELETE",
				url: "/mypage/users",
				contentType: "application/json; charset=UTF-8",
				dataType: "json",
				success: function(resp) {
					alert("회원탈퇴가 완료되었습니다.");
					location.href="/logout";
				}
			})
		}
	})

	$("#submitChangeInfo").click(function() {
		let data = {
			nickname: $("#nickname").val(),
			phone: $("#phone").val(),
			gender: $("#genderArea input:checked").val(),
			birth: $("#datePicker").val(),
			email: $("#email").val()
		}

		$.ajax({
			type: "PUT",
			url: "/mypage/users",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success: function(resp) {

				console.log(resp.data);

				console.log("회원정보 수정 ajax 통신 성공!")

				if (resp.status === 500) {
					alert(resp.data);
				} else {
					alert("회원정보가 변경되었습니다.");
					location.reload();

				}

			}, error: function() {
				console.log("회원정보 수정 ajax 통신 실패!")
			}

		})
	})

})






/* 회원정보수정 페이지 script 끝 */
