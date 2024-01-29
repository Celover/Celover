<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/boardList.css">
<script type="text/javascript" src="/js/boardList.js"></script>



<!-- 메인페이지 영역 -->
<div class="container-fluid" id="boardMain">

	<div class="container" class="px-5">

		<div id="headerBanner" class="mt-4" style="position: relative;">
			<div id="bannerImg" class="px-4 py-3">

				<div id="bannerContent">
					<div class="text-area">
						<h5 class="fw-bolder">커뮤니티</h5>
						<aside>다양한 사람을 만나고 의견을 나눠보세요.</aside>
					</div>
					<div class="img-area">
						<img src="/img/자유게시판.png" alt="">
					</div>
				</div>

			</div>
		</div>

		<div id="boardNavigation" class="mt-4">
			<div class="row pb-2">
				<div class="col">
					<button class="btn btn-primary">
						<i class="fas fa-pencil"></i> 작성하기
					</button>
				</div>
				<div class="col-8">

					<ul class="nav justify-content-center">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">자유게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
					</ul>

				</div>
				<div class="col" style="text-align: right;">
					<button class="btn btn-outline" style="border: 1px solid #dee2e6;">
						<i class="fas fa-arrow-down-short-wide"></i> 최신순
					</button>
				</div>
			</div>

			<div class="row py-3" style="align-items: center;">
				<div id="refreshArea" class="col-md-2">
					<i class="fa-solid fa-arrows-rotate"></i>
				</div>
				<div id="searchArea" class="col-md-8">
					<div>
						<i class="fas fa-search"></i> <input type="text" placeholder="검색어를 입력하세요">
					</div>
				</div>
				<div id="topPaginationArea" class="col-md-2" style="text-align: right;">
					<div>
						<span> <span id="currentPage">1</span>/<span id="totalPage">3333</span> 페이지 <i class="fa-solid fa-arrow-left disabled"></i>&nbsp; <i class="fa-solid fa-arrow-right"></i>
						</span>
					</div>

				</div>
			</div>

		</div>


		<div id="boardList">

			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>
			<div class="d-flex py-3 boardItem">
				<div class="flex-grow-1 left-area">

					<div class="top-area d-flex">
						<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">관리자</span> <span class="create-date">&bull; 2024-01-18 18:05</span>
					</div>
					<div class="middle-area my-2 d-flex">
						<span>지각하는 프리랜서</span>
					</div>
					<div class="bottom-area d-flex">
						<span>#프리랜서</span> <span>#개꿀</span>
					</div>

				</div>
				<div class="right-area">
					<div>
						<i class="fa-regular fa-eye"> 24</i> <i class="fa-regular fa-comment-dots"> 12</i> <i class="fa-regular fa-thumbs-up"> 30</i>
					</div>
				</div>
			</div>


		</div>


		<div id="bottomArea">
			<div id="bottomPaginationArea" class="d-flex" style="align-items: center;">

				<div>
					<i class="fa-solid fa-arrow-left-long"></i> Previous
				</div>
				<div class="flex-grow-1 pagenation-area text-center">
					<button class="active">1</button>
					<button class="">...</button>
					<button class="">2</button>
					<button class="">3</button>
					<button class="">4</button>
					<button class="">...</button>
					<button class="">7067</button>
				</div>
				<div>
					Next <i class="fa-solid fa-arrow-right-long"></i>
				</div>

			</div>

		</div>



	</div>

</div>



<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
