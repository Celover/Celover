<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">


<!-- fontawesome -->
<!-- <link rel="stylesheet" href="/Celover/src/main/webapp/resources/css/all.min.css"> -->
<link rel="stylesheet" type="text/css" href="/fontawesome-free-6.5.1-web/css/all.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<meta name=" viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

<link rel="stylesheet" type="text/css" href="/css/header.css">

</head>
<body>
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${ alertMsg }");
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>

	<div class="container-fluid header-nav">
		<div class="container">


			<div class="d-flex justify-content-between">

				<div class="mainLogo p-4">
					<a href="/"> <img src="/img/로고-Bruno_Ace.png">
					</a>
				</div>

				<div class="p-4">
					<ul class="nav">
						<div id="searchArea" style="width: 260px; height: 45px; border: 0px; background-color: #f4f6f8; border-radius: 20px; margin-right: 20px;'">
							<table style="border: 0px solid red;" align="center">
								<tr style="line-height: 37px;">
									<td style="width: 30px;"><img src="/img/돋보기.png" style="height: 20px; width: 20px;" alt=""></td>
									<td><input type="text" style="background-color: #f4f6f8; border: 0;" placeholder="아티스트 검색"></td>
								</tr>
							</table>
						</div>
						<c:choose>
							<c:when test="${ empty principal }">
								<li class="nav-item sign-in-btn"><a href="/auth/login-form">Sign-in</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item mx-930"><a href="/board-form"><img class="header_btn" src="/img/게시판.png" alt=""></a></li>
								<li class="nav-item mx-930"><a href="#"><img class="header_btn" src="/img/랭킹.png" alt=""></a></li>
								<li class="nav-item mx-930"><a href="/mypage/info"><img class="header_btn" src="/img/사람.png" alt=""></a></li>
								<!-- 							<li class="nav-item mx-930"><a href="/logout">임시로그아웃버튼</a></li>
 -->
								<li class="nav-item mx-930"><a href="/cs/csmain"><img class="header_btn" src="/img/고객센터.png" alt=""></a></li>
								<li class="nav-item mn-930"><a href="#"><img class="header_btn" src="/img/햄버거.png" alt=""></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>

		</div>
		<div class="dropdown-area">
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#"> <img class="header_btn" src="/img/알림.png" alt=""> <span>알림관리</span>
				</a></li>
				<li><a class="dropdown-item" href="#"> <img class="header_btn" src="/img/게시판.png" alt=""> <span>게시판</span>
				</a></li>
				<li><a class="dropdown-item" href="#"> <img class="header_btn" src="/img/랭킹.png" alt=""> <span>랭킹</span>
				</a></li>
				<li><a class="dropdown-item" href="#"> <img class="header_btn" src="/img/사람.png" alt=""> <span>마이페이지</span>
				</a></li>
				<li><a class="dropdown-item" href="#"> <img class="header_btn" src="/img/고객센터.png" alt=""> <span>고객센터</span>
				</a></li>

			</ul>
		</div>
	</div>
	<script type="text/javascript" src="/js/header.js"></script>
	<!-- 헤더 끝 -->