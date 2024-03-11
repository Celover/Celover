<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="stylesheet" type="text/css" href="/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="/css/loginForm.css">

</head>
<body>

	<div class="container-fluid">
		<div id="loginArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="login-header">
					<a href="/"> 
						<img id="logo" class="mb-3" style="height: 45px; width: auto" src="/img/로고-Bruno_Ace2.png">
					</a>
					<p class="sub-title text-secondary">Celover는 아티스트와 팬들의 소통을 위한 팬 커뮤니티 플랫폼입니다.</p>
				</div>
				<div class="login-body py-2 px-4">
					<form action="/auth/login" method="post" id="loginForm">
						<div id="idArea" class="input-group flex-nowrap my-1">
							<span class="input-group-text" id="addon-wrapping"> <img src="/img/id_icon.png" alt="">
							</span> <input id="userId" name="userId" type="text" class="form-control" placeholder="아이디">
						</div>
						<div id="pwdArea" class="input-group flex-nowrap my-2">
							<span class="input-group-text" id="addon-wrapping"> <img src="/img/password_icon.png" alt="">
							</span> <input id="password" name="password" type="password" class="form-control" placeholder="비밀번호">
						</div>
						<div class="d-grid mt-4">
<!-- 							<div class="find-account mb-2">
								<a href="/auth/find-id">아이디 찾기</a> / <a href="/auth/find-password">비밀번호 찾기</a>
							</div> -->
							<div class="login-account d-grid gap-2">
								<button class="btn btn-primary" id="signIn">로그인</button>
							</div>
							<span class="mt-3"> <c:if test="${error}">
									<p id="valid" style="font-size: small" class="alert alert-danger">
										<i class="fa-solid fa-triangle-exclamation">&nbsp;${exception}</i>
									</p>
								</c:if>
							</span>
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
								<div id="googleBtn" class="social-btn p-2">
									<div class="img-area">
										<img src="/img/구글로그인버튼.png" style="border: 1px solid #dee2e6; border-radius: 50%;" alt="">
									</div>
									<div class="text-area mt-1">구글로 로그인</div>
								</div>
							</div>
							<div class="col-md-3">
								<div id="naverBtn" class="social-btn p-2">
									<div class="img-area">
										<img src="/img/네이버로그인버튼.png" alt="">
									</div>
									<div class="text-area mt-1">네이버로 로그인</div>
								</div>
							</div>
							<div class="col-md-3">
								<div id="kakaoBtn" class="social-btn p-2">
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

	<script type="text/javascript" src="/js/loginForm.js"></script>
</body>
</html>