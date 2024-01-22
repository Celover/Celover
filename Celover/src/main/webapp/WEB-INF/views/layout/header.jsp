<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Celover</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


<!-- fontawesome -->
<!-- <link rel="stylesheet" href="/Celover/src/main/webapp/resources/css/all.min.css"> -->
<link rel="stylesheet" type="text/css" href="/fontawesome-free-6.5.1-web/css/all.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<meta name=" viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">


<style>
/* header css start */
@media screen and (min-width: 930px) {
	/* 930px 이상 */
	.dropdown-area .dropdown-menu {
		display: none;
	}
	.header-nav .mn-930 {
		display: none;
	}
	.dropdown-area:has(.dm-active) {
		height: 0px;
	}
}

@media screen and (max-width: 930px) {
	/* 930px 이하 */
	.header-nav .mx-930 {
		display: none;
	}
	.dropdown-area:has(.dm-active) {
		height: 301px;
	}
}

@media screen and (max-width: 610px) {
	/* 930px 이하 */
	#searchArea {
		display: none;
	}
}

body {
	padding: 0px;
}

.container-fluid {
	padding: 0 !important;
}

.header-nav {
	position: sticky;
	top: 0px;
	z-index: 10;
	background-color: white;
}

.header-nav a {
	text-decoration: none;
	color: black;
}

.header-nav .nav-item {
	width: 70px;
	text-align: center;
	padding: 6.5px 0px;
}

.header-nav .sign-in-btn {
	width: auto;
	padding: 0;
}

.header-nav .sign-in-btn a{
	display:inline-block;
	line-height: 45px; 
	font-size: 18px;
	border: none;
	border-radius: 20px;
	color: #fff;
	font-weight: 800;
	padding: 0px 24px;
	background: linear-gradient(134deg,#07d8e2 54.07%,#35e99d 99.24%);
}

.header-nav .nav-item img {
	width: 32px;
	height: 32px;
}

.mx-930 .header_btn:hover {
	transform: scale(1.2);
}

.header-nav input:focus {
	outline: none;
}

.mainLogo:hover {
	cursor: pointer;
}

.dm-active {
	display: block;
}

.dropdown-area .dropdown-menu {
	width: 100%;
	border: none;
}

.dropdown-area .dropdown-menu li {
	padding: 7px;
	font-size: 20px;
	border-bottom: 1px solid #dee2e6;
}

.dropdown-area .dropdown-menu li a {
	font-weight: 800;
}

.dropdown-areav .dropdown-menu li:hover {
	background-color: #dee2e6;
}

.dropdown-area .dropdown-menu li a:hover {
	background-color: #dee2e6;
}

.dropdown-area .dropdown-menu li .dropdown-item img {
	width: 32px;
	height: 32px;
}

/* header css end */
</style>

</head>
<body>
	<div class="container-fluid header-nav">


		<div class="d-flex justify-content-between">


			<div class="mainLogo p-4" style="font-family: 'Bruno Ace', serif; margin-left: 26px;">
				<h2 style="font-weight: 800; margin: 0px; font-size: 32px;">Celover</h2>
			</div>


			<div class="p-4" style="margin-right: 26px;">
				<ul class="nav">
					<div id="searchArea" style="width: 260px; height: 45px; border: 0px; background-color: #f4f6f8; border-radius: 20px; margin-right:20px;'">
						<table style="border: 0px solid red;" align="center">
							<tr style="line-height: 37px;">
								<td style="width: 30px;"><img src="img/돋보기.png" style="height: 20px; width: 20px;" alt=""></td>
								<td><input type="text" style="background-color: #f4f6f8; border: 0;" placeholder="아티스트 검색"></td>
							</tr>
						</table>

					</div>
					<c:choose>
						<c:when test="${ empty principal }">
							<li class="nav-item sign-in-btn"><a href="/auth/login-form">Sign-in</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item mx-930"><a href="#"><img class="header_btn" src="img/게시판.png" alt=""></a></li>
							<li class="nav-item mx-930"><a href="#"><img class="header_btn" src="img/랭킹.png" alt=""></a></li>
							<li class="nav-item mx-930"><a href="#"><img class="header_btn" src="img/사람.png" alt=""></a></li>
							<li class="nav-item mx-930"><a href="/logout">임시로그아웃버튼</a></li>
							<li class="nav-item mx-930"><a href="#"><img class="header_btn" src="img/고객센터.png" alt=""></a></li>
							<li class="nav-item mn-930"><a href="#"><img class="header_btn" src="img/햄버거.png" alt=""></a></li>
						</c:otherwise>
					</c:choose>
				</ul>


			</div>

		</div>

	</div>
	<div class="dropdown-area">
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#"> <img class="header_btn" src="sampleImg/알림.png" alt=""> <span>알림관리</span>
			</a></li>
			<li><a class="dropdown-item" href="#"> <img class="header_btn" src="sampleImg/게시판.png" alt=""> <span>게시판</span>
			</a></li>
			<li><a class="dropdown-item" href="#"> <img class="header_btn" src="sampleImg/랭킹.png" alt=""> <span>랭킹</span>
			</a></li>
			<li><a class="dropdown-item" href="#"> <img class="header_btn" src="sampleImg/사람.png" alt=""> <span>마이페이지</span>
			</a></li>
			<li><a class="dropdown-item" href="#"> <img class="header_btn" src="sampleImg/고객센터.png" alt=""> <span>고객센터</span>
			</a></li>

		</ul>
	</div>

	<script>
	
		$(document).on("click", ".header-nav .mn-930", function() {

			$(".dropdown-area .dropdown-menu").toggleClass("dm-active")
		})
	</script>
	<!-- 헤더 끝 -->