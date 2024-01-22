<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>


<!-- fontawesome -->
<!-- <link rel="stylesheet" href="/Celover/src/main/webapp/resources/css/all.min.css"> -->
<link rel="stylesheet" href="/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<!-- momment.js 날짜 라이브러리  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<style>
/* 회원가입 css */
#createAccountArea {
	height: 100vh;
	text-align: center;
}

#createAccountArea>div {
	width: 600px;
}

#createAccountArea .createAccountHeader .title {
	font-family: 'Bruno Ace', serif;
	font-size: 56px;
	font-weight: 800;
}

#createAccountArea .createAccountHeader .title:hover {
	cursor: pointer;
}

#createAccountArea .createAccountHeader .sub-title {
	font-size: small;
	margin: 0%;
}

#createAccountArea .create-account-body>.enroll-sns {
	border-top: 1px solid #dee2e6;
}

#createAccountArea .create-account-body>.enroll-sns .col-md-3 {
	padding: 0px;
}

#createAccountArea .create-account-body>.enroll-sns .col-md-3>div:hover
	{
	border-radius: 7px;
}

#createAccountArea .create-account-body>.enroll-sns .col-md-3>div:hover
	{
	cursor: pointer;
	background-color: #dee2e6;
}

#createAccountArea .create-account-body>.enroll-sns>p {
	font-size: large;
	font-weight: 800;
}

#createAccountArea .create-account-body>.enroll-sns .img-area img {
	width: 35px;
}

#createAccountArea .create-account-body>.enroll-sns .text-area {
	line-height: 35px;
	font-size: small;
}

#createAccountArea .create-account-body .input-area .warning-message {
	font-weight: 600;
	text-align: left;
	color: red;
	display: inline-block;
	font-size: xx-small;
	display: none;
}

#createAccountArea .create-account-body .input-area>form .input-group #eyeBtn i:hover
	{
	cursor: pointer;
}

#createAccountArea .create-account-body .input-area>form .input-group input:focus
	{
	box-shadow: none;
	border-left: none;
}

#createAccountArea .create-account-body .input-area>form .input-group input
	{
	border-left: none;
	border: none;
}

.error {
	position: relative;
	z-index: 1;
	box-shadow: 0 0 2px 2px #ff3f3f;
}

.success:has(input:focus) {
	position: relative;
	z-index: 1;
	box-shadow: 0 0 2px 2px #09aa5c;
}

#createAccountArea .create-account-body .input-area>form .input-group span:has(input:focus)
	{
	z-index: 2;
}

#createAccountArea .create-account-body .input-area>form .input-group span
	{
	background-color: #fff;
	border: none;
}

#createAccountArea .d-table {
	display: table;
	border-radius: 0.375rem;
	box-shadow: 0 0 0 1px #dee2e6;
	width: 100%;
}

#createAccountArea .d-table>.table-row {
	display: table-row;
}

#createAccountArea .d-table .table-row .table-cell {
	display: table-cell;
	border-bottom: 1px solid #dee2e6;
}

#createAccountArea .d-table .table-row:last-child .table-cell {
	border-bottom: none;
}

#createAccountArea .d-table .table-row .table-cell>.top-span {
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

#createAccountArea .d-table .table-row .table-cell>.middle-span {
	border-radius: 0px;
}

#createAccountArea .d-table .table-row .table-cell>.bottom-span {
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
}

#createAccountArea #chkArea>div {
	width: 50%;
}

#createAccountArea #chkArea>div label {
	font-size: 80%;
	width: 48%;
	color: #dee2e6;
	border: 1px solid #dee2e6;
}

#createAccountArea #chkArea>div .left-label {
	border-top-right-radius: 0%;
	border-bottom-right-radius: 0%;
}

#createAccountArea #chkArea>div .right-label {
	border-top-left-radius: 0%;
	border-bottom-left-radius: 0%;
}

.btn-check:checked+.btn {
	font-weight: 600;
	color: #09aa5c !important;
	background-color: #fff;
	border: 1px solid #09aa5c !important;
}

.accordion { -
	-bs-accordion-active-bg: var(- -bs-white);
}

.accordion-button:focus {
	box-shadow: var(- -bs-white);
}

#createAccountArea .form-check-input:checked {
	background-color: #09aa5c;
	border-color: #09aa5c;
}

.form-check-input:hover {
	cursor: pointer;
}

.form-check-input:focus {
	border-color: #09aa5c;
	outline: 0;
	box-shadow: 0 0 0 0.25rem rgba(10, 171, 93, .25);
}

.d-flex:has(.accordion-button:not(.collapsed)) {
	color: var(- -bs-accordion-active-color);
	background-color: var(- -bs-accordion-active-bg);
	box-shadow: inset 0 calc(-1 * var(- -bs-accordion-border-width)) 0
		var(- -bs-accordion-border-color);
}

.accordion-button:not(.collapsed) {
	box-shadow: none
}

.accordion-body .fa-check:hover {
	cursor: pointer;
}

.accordion-body a:hover {
	cursor: pointer;
}

.accordion-body .checked {
	color: #09aa5c;
}

/* 회원가입 css 끝 */
</style>
</head>

<body>
	<div class="container-fluid">

		<div id="createAccountArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="createAccountHeader">
					<h2 class="title">Celover</h2>
					<p class="sub-title text-secondary">Celover는 아티스트와 팬들의 소통을 위한 팬 커뮤니티 플랫폼입니다.</p>
				</div>
				<div class="create-account-body py-2 px-4">
					<div class="enroll-sns p-2">
						<p>SNS 회원가입</p>
						<div class="row justify-content-md-center">
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/구글로그인버튼.png" style="border: 1px solid #dee2e6; border-radius: 50%;" alt="">
									</div>
									<div class="text-area mt-1">구글로 회원가입</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/네이버로그인버튼.png" alt="">
									</div>
									<div class="text-area mt-1">네이버로 회원가입</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/카카오로그인버튼.png" alt="">
									</div>
									<div class="text-area mt-1">카카오로 회원가입</div>
								</div>
							</div>
						</div>
					</div>

					<div class="input-area">
						<form action="회원가입.do">
							<div class="combine-area d-table">
								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text top-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg> <input type="text" id="userId" class="form-control top-input" placeholder="아이디" aria-label="userId" aria-describedby="basic-addon1"> <span class="input-group-text" id="checkIcon"> <i class="fas fa-check" id="stateY" style="color: #09aa5c; display: none;"></i> <i class="fas fa-xmark" id="stateN" style="color: #ff3f3f; display: none;"></i>
										</span>
										</span>
									</div>
								</div>

								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text middle-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock">
                                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                            </svg> <input type="password" id="password" class="form-control middle-input" placeholder="비밀번호" aria-label="password" aria-describedby="basic-addon1" style="border-right: none;"> <span class="input-group-text" id="eyeBtn"> <i class="fa-regular fa-eye"></i> <i class="fa-regular fa-eye-slash" style="display: none;"></i>
										</span>
										</span>
									</div>
								</div>

								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text bottom-span success" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail">
                                                <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
                                                </path>
                                                <polyline points="22,6 12,13 2,6"></polyline>
                                            </svg> <input type="text" class="form-control" id="email" placeholder="[선택] 비밀번호 분실 시 확인용 이메일" aria-label="email" aria-describedby="basic-addon1">
										</span>
									</div>
								</div>
							</div>
							<div id="msgArea1" class="mt-1" style="text-align: left;">
								<span class="warning-message" id="id1">* 아이디: 필수 정보입니다. </span> <span class="warning-message" id="id2">* 아이디: 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용가능합니다.</span> <span class="warning-message" id="id3">* 아이디: 사용할 수 없는 아이디입니다. 다른 아이디를 입력해 주세요.</span> <span class="warning-message" id="pwd1">* 비밀번호: 필수 정보입니다. </span> <span class="warning-message" id="pwd2">* 비밀번호: 8자 이상이어야 하며, 숫자/영문자/특수문자를 모두 포함해야 합니다. </span> <span class="warning-message" id="email">* 이메일: 이메일 주소가 정확한지 확인해 주세요. </span>
							</div>




							<div class="combine-area d-table mt-3">
								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text top-span" id="basic-addon1" style="width: auto;"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg> <input type="text" class="form-control top-input" id="nickname" placeholder="닉네임" aria-label="nickname" aria-describedby="basic-addon1">
										</span>
									</div>
								</div>

								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text middle-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg> <input type="text" class="form-control middle-input" id="birth" placeholder="생년월일 8자리" maxlength="10" aria-label="birth" aria-describedby="basic-addon1">
										</span>
									</div>
								</div>

								<div class="table-row">
									<div class="input-group table-cell d-flex" id="chkArea">
										<div class="d-flex justify-content-center py-2" id="gender">
											<input type="radio" class="btn-check" name="gender" id="man" value="m" autocomplete="off" checked> <label class="btn btn-outline-secondary left-label" for="man">남자</label> 
											<input type="radio" class="btn-check" name="gender" id="woman" value="w" autocomplete="off"> <label class="btn btn-outline-secondary right-label" for="woman">여자</label>
										</div>
										<div class="d-flex justify-content-center py-2" id="nationality">
											<input type="radio" class="btn-check" name="nationality" id="local" value="l" autocomplete="off" checked> <label class="btn btn-outline-secondary left-label" for="local">내국인</label> 
											<input type="radio" class="btn-check" name="nationality" id="foreigner" value="f" autocomplete="off"> <label class="btn btn-outline-secondary right-label" for="foreigner">외국인</label>
										</div>
									</div>
								</div>

								<div class="table-row">
									<div class="input-group table-cell">
										<span class="input-group-text bottom-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-smartphone">
                                                <rect x="5" y="2" width="14" height="20" rx="2" ry="2"></rect>
                                                <line x1="12" y1="18" x2="12.01" y2="18"></line>
                                            </svg> <input type="text" class="form-control" id="phone" placeholder="휴대전화번호" aria-label="phone" oninput="autoHyphen(this);" maxlength="13" aria-describedby="basic-addon1">
										</span>
									</div>
								</div>
							</div>
							<div id="msgArea2" class="mt-1" style="text-align: left;">
								<span class="warning-message" id="nickname1">* 닉네임: 필수 정보입니다. </span> <span class="warning-message" id="nickname2">* 닉네임: 3~16자의 영문 대소문자, 숫자, 밑줄(_)만 사용가능합니다.</span> <span class="warning-message" id="nickname3">* 닉네임: 사용할 수 없는 아이디입니다. 다른 아이디를 입력해주세요.</span> <span class="warning-message" id="birth1">* 생년월일: 필수 정보입니다. </span> <span class="warning-message" id="birth2">* 생년월일: 생년월일은 8자리 숫자로 입력해주세요. </span> <span class="warning-message" id="birth3">* 생년월일: 생년월일: 생년월일이 정확한지 확인해 주세요. </span> <span class="warning-message" id="phone1">* 휴대폰번호: 필수 정보입니다. </span> <span class="warning-message" id="phone2">* 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요. </span>
							</div>


							<div class="accordion mt-3" id="termsOfAuthentication">
								<div class="accordion-item">
									<div class="accordion-header">
										<div class="d-flex p-2">
											<div class="w-100" style="text-align: left;">
												<div class="d-flex" style="padding-left: 10px; align-items: center;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" style="zoom: 1.5; border-radius: 50%;"> <label class="form-check-label" for="flexCheckChecked" style="line-height: 33px;"></label>
													<div class="ps-2" style="color: #09aa5c; font-size: small; font-weight: 700;">[필수]</div>
													<div style="font-weight: 700;">&nbsp;인증 약관 전체동의</div>
												</div>
											</div>
											<div class="flex-shrink-1">
												<button class="accordion-button collapsed" type="button" style="padding: 8px 10px;" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"></button>
											</div>
										</div>

									</div>
									<div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<div class="row" style="text-align: left; color: #666a73">
												<div class="col-sm-6 py-1">
													<i class="fas fa-check"></i> <a>개인정보 이용 <i class="fas fa-chevron-right"></i></a>
												</div>
												<div class="col-sm-6 py-1">
													<i class="fas fa-check"></i> <a>고유식별정보처리 <i class="fas fa-chevron-right"></i></a>
												</div>
												<div class="col-sm-6 py-1">
													<i class="fas fa-check"></i> <a>통신사 이용약관 <i class="fas fa-chevron-right"></i></a>
												</div>
												<div class="col-sm-6 py-1">
													<i class="fas fa-check"></i> <a>인증사 이용약관 <i class="fas fa-chevron-right"></i></a>
												</div>
												<div class="col-sm-6 py-1">
													<i class="fas fa-check"></i> <a>네이버 개인정보수집 <i class="fas fa-chevron-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="msgArea3" class="mt-1" style="text-align: left;">
								<span class="warning-message" id="terms">* 필수 약관에 모두 동의해 주세요. </span>
							</div>

							<div class="d-grid gap-2 mt-3">
								<button class="btn btn-success" id="submit" type="button">가입하기</button>
							</div>
						</form>
					</div>

				</div>

			</div>

		</div>

	</div>



</body>
<script>
    /* 회원정보수정 페이지 script */

    $(document).on("keyup", "#createAccountArea #userId", function () {

        let regexId = /^[a-z0-9_-]{5,20}$/;
        let id = $("#createAccountArea #userId").val();
        let $id = $("#createAccountArea #userId");

        $('[id^="state"]').css("display", "none");

        if (id.length != 0) { // 값이 있을때
        	
            if (!regexId.test(id)) { // 조건에 맞지 않는 경우
                $("#checkIcon .fa-xmark").css("display", "");
                $("#checkIcon .fa-check").css("display", "none");

            } else {  // 조건에 맞는 경우
				// 아이디 중복검사 ajax 실행            	
            	$.ajax({
            		url : '/auth/existsUserId',
            		data: {
            			userId : id
            			},success:function(result){
            				console.log("아이디 중복체크 ajax 성공!");
            				
            				if(result){ // 중복된 아이디 
				                $("#checkIcon .fa-xmark").css("display","");
				                $("#checkIcon .fa-check").css("display","none");
            				}else{
				                $("#checkIcon .fa-xmark").css("display", "none");
				                $("#checkIcon .fa-check").css("display", "");
            				}
            			},error:function(){
            				console.log("아이디 중복체크 ajax 실패!");
            			}
            	})
            }
        }
    });

    $(document).on("blur", "#createAccountArea #userId", function () {

        let regexId = /^[a-z0-9_-]{5,20}$/;
        let id = $("#createAccountArea #userId").val();
        let $id = $("#createAccountArea #userId");

        $('#msgArea1 [id^="id"]').css("display", "none");

        if (id.length == 0) { // 값이 없을때
            $("#msgArea1 #id1").css("display", "block");
            $("#checkIcon .fa-xmark").css("display", "");
            $("#checkIcon .fa-check").css("display", "none");
            $id.parent().removeClass("success");
            $id.parent().addClass("error");
        } else { // 값이 있을때

            if (!regexId.test(id)) { // 조건에 맞지 않는 경우
                $("#msgArea1 #id2").css("display", "block");
                $("#checkIcon .fa-xmark").css("display", "");
                $("#checkIcon .fa-check").css("display", "none");
                $id.parent().removeClass("success");
                $id.parent().addClass("error");

            } else { // 조건에 맞는 경우
            
				// 아이디 중복검사 ajax 실행            	
            	$.ajax({
            		url : '/auth/existsUserId',
            		data: {
            			userId : id
            			},success:function(result){
            				console.log("아이디 중복체크 ajax 성공!");
            				
            				if(result){ // 중복된 아이디 
            	                $("#msgArea1 #id3").css("display", "block");
            	                $("#checkIcon .fa-xmark").css("display","");
            	                $("#checkIcon .fa-check").css("display","none");
            	                $id.parent().removeClass("success");
            	                $id.parent().addClass("error");
            				}else{
            	                $("#checkIcon .fa-xmark").css("display", "none");
            	                $("#checkIcon .fa-check").css("display", "");
            	                $id.parent().removeClass("error");
            	                $id.parent().addClass("success");
            				}
            			},error:function(){
            				console.log("아이디 중복체크 ajax 실패!");
            			}
            	})
            }
        }
    })

    $(document).on("click", "#eyeBtn .fa-eye", function () { 
        // 텍스트로 타입변환
        $(this).parent().prev().attr("type", "text");
        $(this).css("display", "none");
        $("#eyeBtn .fa-eye-slash").css("display", "")
    })

    $(document).on("click", "#eyeBtn .fa-eye-slash", function () {
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

    $(document).on("blur", "#createAccountArea #nickname", function () {

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
	            		url : '/auth/existsNickname',
	            		data: {
	            			nickname : nickname
	            			},success:function(result){
	            				console.log("닉네임 중복체크 ajax 성공!");
	            				
	            				if(result){ // 중복된 닉네임 
	            	                $("#msgArea2 #nickname3").css("display", "block");
	            	                $("#msgArea2 #nickname3").css("display", "block");
	            	                $nickname.parent().removeClass("success");
	            	                $nickname.parent().addClass("error");
	            				}else{
	            	                $nickname.parent().removeClass("error");
	            	                $nickname.parent().addClass("success");
	            				}
	            			},error:function(){
	            				console.log("닉네임 중복체크 ajax 실패!");
	            			}
	            	})
            }
        }
    })

    function isValidDate(dateString, format = "YYYYMMDD") {
        return moment(dateString, format, true).isValid();
    }

    $(document).on("blur", "#createAccountArea #birth", function () {

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

    $(document).on("blur", "#createAccountArea #phone", function () {
        let phone = $("#createAccountArea #phone").val();
        let $phone = $("#createAccountArea #phone");

        $('#msgArea2 [id^="phone"]').css("display", "none");

        if(phone.length == 0){
            $("#msgArea2 #phone1").css("display", "block");
            $phone.parent().removeClass("success");
            $phone.parent().addClass("error");

        }else if(phone.length == 13){
            $phone.parent().removeClass("error");
            $phone.parent().addClass("success");
        }else{
            $("#msgArea2 #phone2").css("display", "block");
            $phone.parent().removeClass("success");
            $phone.parent().addClass("error");
        }
    })


    $(document).on("click", "#termsOfAuthentication input", function () {
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
    $(document).on("click", ".accordion-body .fa-check", function () {

        $(this).toggleClass("checked");

    })

    // check 박스 클릭시
    $(document).on("click", ".accordion-body .fa-check", function () {
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


    $("#submit").click(function(){
        $("#createAccountArea input").trigger("blur");
        $("#termsOfAuthentication input").trigger("click");
        $("#termsOfAuthentication input").trigger("click");

        if($(".error").length == 0){
        	
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
            	url: "/auth/joinProc",
            	data: JSON.stringify(data),
            	contentType: "application/json; charset=UTF-8",
            	dataType: "json"
            	,success:function(resp){
            		
        			if(resp.status === 500){
        				alert("회원가입에 실패하였습니다.")
        			}else{
        				alert("회원가입이 완료되었습니다.");
        				console.log(resp);
        				location.href="/";
        			}
            		console.log("회원가입 ajax 통신 성공 !");
            		
            		
            	},error:function(error){
            		alert(JSON.stringify(error));
            		console.log("회원가입 ajax 통신 실패 !");
            	}
            })
            
            
        }
    })

</script>

</html>