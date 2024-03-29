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
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>


<!-- fontawesome -->
<link rel="stylesheet" href="/Celover/src/main/webapp/resources/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="/css/findId.css">

</head>
<body>
	<div class="container-fluid">

		<div id="findAccountArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="header">
					<a class="title" href="/">Celover</a>
					<p class="sub-title text-secondary">Celover는 아티스트와 팬들의 소통을 위한 팬 커뮤니티 플랫폼입니다.</p>
				</div>

				<div class="body py-4 px-4">
					<div>
						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">아이디 찾기</a></li>
							<li class="nav-item"><a class="nav-link" href="/auth/find-password">비밀번호 찾기</a></li>
						</ul>
					</div>



					<div class="p-4" id="findIdArea">

						<div id="authPhone" class="form-check mb-3">
							<input class="form-check-input" type="radio" name="auth_method" id="authPhoneBtn" checked style="zoom: 1.8;"> <label class="form-check-label" for="authPhoneBtn"> 회원정보에 등록한 휴대전화로 인증 <span class="toggle-area">회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</span>
							</label>
						</div>

						<div class="toggle-area" id="authPhoneArea">
							<form action="">

								<div class="mb-3 row">
									<label for="inputUserName1" class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUserName1">
									</div>
								</div>
								<div class="mb-3 row">
									<label for="inputPhone" class="col-sm-2 col-form-label">휴대전화번호</label>
									<div class="col-sm-2">
										<select class="form-select" aria-label="Default select example">
											<option selected>+82</option>
											<option value="1">+81</option>
											<option value="2">+84</option>
										</select>
									</div>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="inputPhone">
									</div>
									<div class="col-sm-3">
										<button type="submit" class="btn btn-primary">인증번호 받기</button>
									</div>
								</div>
								<div class="mb-3 row">
									<label for="inputAuthNumber1" class="col-sm-2 col-form-label"></label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="1" placeholder="인증번호 6자리 숫자 입력">
									</div>
								</div>

							</form>
						</div>


						<div id="authEmail" class="form-check mb-3">
							<input class="form-check-input" type="radio" name="auth_method" id="authEmailBtn" style="zoom: 1.8;"> <label class="form-check-label" for="authEmailBtn"> 본인확인 이메일로 인증 <span class="toggle-area" style="display: none;">본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.</span>
							</label>
						</div>

						<div class="toggle-area" id="authEmailArea" style="display: none;">
							<form action="">

								<div class="mb-3 row">
									<label for="inputUserName2" class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUserName2">
									</div>
								</div>
								<div class="mb-3 row">
									<label for="inputPassword" class="col-sm-2 col-form-label">이메일 주소</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="inputPassword">
									</div>
									<div class="col-sm-3">
										<select class="form-select" id="siteDomain">
											<option selected>@naver.com</option>
											<option value="1">@google.com</option>
											<option value="2">@daum.net</option>
										</select>
									</div>
									<div class="col-sm-3">
										<button type="submit" class="btn btn-primary">인증번호 받기</button>
									</div>
								</div>
								<div class="mb-3 row">
									<label for="inputAuthNumber2" class="col-sm-2 col-form-label"></label>
									<div class="col-sm-7">
										<input type="text" id="inputAuthNumber2" class="form-control" placeholder="인증번호 6자리 숫자 입력">
									</div>
								</div>

							</form>
						</div>

					</div>
				</div>


			</div>

		</div>

	</div>
	<script type="text/javascript" src="/js/findId.js"></script>



</body>
</html>