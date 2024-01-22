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
<!-- <link rel="stylesheet" href="/Celover/src/main/webapp/resources/css/all.min.css"> -->
<link rel="stylesheet" href="/Celover/src/main/webapp/resources/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<style>
/* 로그인 css */
#findAccountArea {
	height: 100vh;
	text-align: center;
}

#findAccountArea>div {
	width: 600px;
}

#findAccountArea .header .title {
	font-family: 'Bruno Ace', serif;
	font-size: 56px;
	font-weight: 800;
}

#findAccountArea .header .title:hover {
	cursor: pointer;
}

#findAccountArea .header .sub-title {
	margin: 0%;
	font-weight: 800;
	color: black;
}

#findAccountArea .body input:focus {
	box-shadow: none;
	border: 1px solid #dee2e6;
	border-left: none;
	padding-left: 0px;
}

#findAccountArea .body input {
	border-left: none;
	padding-left: 0px;
}

#findAccountArea .body #etcArea a {
	text-decoration: none;
}
/* 로그인 css 끝 */
</style>
</head>
<body>
	<div class="container-fluid">

		<div id="findAccountArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="header">
					<h2 class="title">Celover</h2>
					<p class="sub-title">비밀번호를 찾고자 하는 아이디를 입력해주세요.</p>
				</div>

				<div class="body p-4">

					<div class="row">

						<div class="col-sm-9 mx-auto" style="height: 54px;">

							<div class="input-group input-group-lg mb-2 h-100">
								<span class="input-group-text" id="basic-addon1" style="background-color: #fff;"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
								</span> <input type="text" class="form-control" placeholder="아이디" aria-describedby="basic-addon1">
							</div>
						</div>

					</div>
					<div class="row mt-3">
						<div class="col-sm-9 mx-auto" style="height: 54px;">
							<div class="d-grid gap-2 h-100">
								<button class="btn btn-primary btn-lg" type="button">다음</button>
							</div>

						</div>

					</div>
					<div id="etcArea" class="row mt-5">

						<div class="col-sm-9 mx-auto">

							<span> 아이디가 기억나지 않는다면? <a href="아이디찾기 페이지"> 아이디 찾기 </a>
							</span>
						</div>

					</div>


				</div>

			</div>

		</div>

	</div>

</body>
</html>