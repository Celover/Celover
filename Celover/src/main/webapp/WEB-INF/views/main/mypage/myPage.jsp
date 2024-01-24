<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/myPage.css">

<div class="container">
	<div class="row">
		<!-- 사이드바 영역 -->
		<div class="col-md-2" id="myPageMenu">
			<div class="panel">
				<div class="panel-heading">
					<h2 class="panel-title">My Page</h2>
				</div>
				<ul class="list-group">
					<li class="list-group-item d-flex justify-content-between act"><a class="p-2">회원 정보 수정</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">나의 아티스트</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">내 글 관리</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">알림 관리</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">장바구니</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">구매내역</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">신고내역</a> <i class="fas fa-chevron-right p-2"></i></li>
					<li class="list-group-item d-flex justify-content-between"><a class="p-2">문의내역</a> <i class="fas fa-chevron-right p-2"></i></li>
				</ul>
			</div>
		</div>
		<!-- 사이드바 영역 끝 -->
		<div class="col-md-9" id="myPageContent">
			<div id="">
				<h4>회원 정보 수정</h4>
				<hr>

			</div>
		</div>
		<!-- 마이페이지 본문 영역 끝 -->
	</div>

</div>

<script type="text/javascript" src="/js/myPage.js"></script>

<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
