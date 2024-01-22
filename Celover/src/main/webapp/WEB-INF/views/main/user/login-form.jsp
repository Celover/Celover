<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>


<!-- fontawesome -->
<!-- <link rel="stylesheet" href="/Celover/src/main/webapp/resources/css/all.min.css"> -->
<link rel="stylesheet" type="text/css" href="/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">
<style>
/* 로그인 css */
#loginArea {
	height: 100vh;
	text-align: center;
}

#loginArea>div {
	width: 600px;
}

#loginArea .login-header .title {
	font-family: 'Bruno Ace', serif;
	font-size: 56px;
	font-weight: 800;
}

#loginArea .login-header .title:hover {
	cursor: pointer;
}

#loginArea .login-header .sub-title {
	font-size: small;
	margin: 0%;
}

#loginArea .login-body form .input-group {
	height: 60px;
	font-size: large;
}

#loginArea .login-body form .input-group span {
	background-color: #fff;
}

#loginArea .login-body form .input-group span img {
	width: 20px;
	height: 20px;
}

#loginArea .login-body form .input-group input {
	border-left: none;
}

#loginArea .login-body form .find-account {
	text-align: right;
	font-size: small;
}

#loginArea .login-body form .find-account a {
	color: black;
	text-decoration: none;
}

#loginArea .login-body form .login-account button {
	font-size: x-large;
	height: 60px;
}

#loginArea .login-body form .create-accout {
	font-size: small;
}

#loginArea .login-footer>div {
	border-top: 1px solid #dee2e6;
}

#loginArea .login-footer .col-md-3>div:hover {
	border-radius: 7px;
}

#loginArea .login-footer .col-md-3>div:hover {
	cursor: pointer;
	background-color: #dee2e6;
}

#loginArea .login-footer>div>p {
	font-size: large;
	font-weight: 800;
}

#loginArea .login-footer>div .img-area img {
	width: 35px;
}

#loginArea .login-footer>div .text-area {
	line-height: 35px;
	font-size: small;
}

/* 로그인 css 끝 */
</style>
</head>
<body>
	<div class="container-fluid">
		<div id="loginArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="login-header">
					<h2 class="title">Celover</h2>
					<p class="sub-title text-secondary">Celover는 아티스트와 팬들의 소통을 위한 팬 커뮤니티 플랫폼입니다.</p>
				</div>
				<div class="login-body py-2 px-4">
					<form action="/auth/login" method="post">
						<div id="idArea" class="input-group flex-nowrap my-1">
							<span class="input-group-text" id="addon-wrapping"> <img src="/img/id_icon.png" alt="">
							</span> <input id="userId" name="userId" type="text" class="form-control" placeholder="아이디">
						</div>
						<div id="pwdArea" class="input-group flex-nowrap my-2">
							<span class="input-group-text" id="addon-wrapping"> <img src="/img/password_icon.png" alt="">
							</span> <input id="password" name="password" type="password" class="form-control" placeholder="비밀번호">
						</div>
						<div class="d-grid mt-4">
							<div class="find-account mb-2">
								<a href="/auth/find-id">아이디 찾기</a> / <a href="/auth/find-password">비밀번호 찾기</a>
							</div>
							<div class="login-account d-grid gap-2">
								<button class="btn btn-primary" id="signIn">로그인</button>
							</div>
							<div class="create-accout m-4">
								아직 회원이 아니신가요? <a href="/auth/join-form">회원가입</a>
							</div>
						</div>
					</form>
				</div>

				<div class="login-footer pb-2 px-4">
					<div class="p-2">
						<p>SNS 로그인</p>
						<div class="row justify-content-md-center">
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/구글로그인버튼.png" style="border: 1px solid #dee2e6; border-radius: 50%;" alt="">
									</div>
									<div class="text-area mt-1">구글로 로그인</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/네이버로그인버튼.png" alt="">
									</div>
									<div class="text-area mt-1">네이버로 로그인</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="social-btn p-2">
									<div class="img-area">
										<img src="/img/카카오로그인버튼.png" alt="">
									</div>
									<div class="text-area mt-1">카카오로 로그인</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
	<script>
	/* 	$(function(){
			$("#loginForm").submit(function(){
				
				event.preventDefault();
				let data = {
						userId : $("#userId").val(),
						password : $("#password").val()
					};
				if(data.userId == ""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return;
				}
				
				if(data.password ==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return;
				}
				if(data.userId != "" && data.password !=""){

					$.ajax({
						type: "POST",
		            	url: "/auth/login",
		            	data: JSON.stringify(data),
		            	contentType: "application/json; charset=UTF-8",
		            	dataType: "json",
		            	success:function(data){
		            		console.log(data)
		            	}
					})
					console.log(data);	
						
				}
				
				
			})
		}) */
	</script>
	
</body>
</html>