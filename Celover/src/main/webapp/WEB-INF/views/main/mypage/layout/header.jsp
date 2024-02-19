<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/myPage.css">

<!-- bootstrap date picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<div class="text-bg-secondary">
	<div class="container">
		<div class="p-4">
			<p class="fw-border" style="font-size: 2rem">${ principal.user.nickname }님환영합니다 !</p>
			<a class="fw-border" href="/logout" style="color: #fff;">로그아웃</a>
		</div>
	</div>
</div>
<div class="container-fluid">

	<div class="container">


		<div class="row m-0 p-4">
			<!-- 사이드바 영역 -->
			<div class="col-xl-2" id="myPageMenu">
				<div class="panel">
					<div class="panel-heading mb-4">
						<p class="panel-title">My Page</p>
					</div>
					<ul class="nav flex-column">
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">내 정보 수정</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">나의 아티스트</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">내 글 관리</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">알림 관리</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">장바구니</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">구매내역</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">신고내역</a> <i class="fas fa-chevron-right p-2"></i></li>
						<li class="nav-item d-flex justify-content-between"><a class="nav-link p-3">문의내역</a> <i class="fas fa-chevron-right p-2"></i></li>
					</ul>
				</div>
			</div>
			<!-- 사이드바 영역 끝 -->