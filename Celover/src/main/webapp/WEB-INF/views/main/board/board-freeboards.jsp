<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/boardList.css">



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
					<a id="writeBoard" class="btn btn-primary"> <i class="fas fa-pencil"></i> 작성하기
					</a>
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
						<span> <span id="currentPage">${boards.number}</span>/<span id="totalPage">${boards.totalPages - 1}</span> 페이지 
						<c:choose>
							<c:when test="${!boards.first }">
								<!-- 페이지가 첫번째가 아닐 경우 previous 버튼 활성화 -->
								<a class="prev-next" href="?page=${boards.number - 1}"><i class="fa-solid fa-arrow-left-long"></i></a>&nbsp;
							</c:when>
							<c:otherwise>
								<!-- 페이지가 첫번째가 일 경우 previous 버튼 비활성화 -->
								<a class="prev-next"><i class="fa-solid fa-arrow-left-long disabled"></i></a>&nbsp;
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${!boards.last }">
								<!-- 페이지가 마지막이 아닐 경우 next 버튼 활성화 -->	
								<a class="prev-next" href="?page=${boards.number + 1}"><i class="fa-solid fa-arrow-right"></i></a>
							</c:when>
							<c:otherwise>
								<!-- 페이지가 첫번째가 일 경우 next 버튼 비활성화 -->
								<a class="prev-next"><i class="fa-solid fa-arrow-right disabled"></i></a>
							</c:otherwise>
						</c:choose>
						
						</span>
					</div>

				</div>
			</div>

		</div>


		<div id="boardList">
			<c:forEach var="board" items="${boards.content}">
				<div class="d-flex py-3 boardItem">
					<div class="flex-grow-1 left-area">
						<div class="top-area d-flex">
							<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">${board.nickname }</span> <span class="create-date">&bull; ${board.createDate }</span>
						</div>
						<div class="middle-area my-2 d-flex title">
							<a href="/board/${board.id }">${board.title }</a>
						</div>
						<div class="bottom-area d-flex">
							<c:forEach var="tag" items="${board.boardTags}">
								<span>#${tag.tagObjResponseDto.tagName}</span>&nbsp;
							</c:forEach>
						</div>
					</div>
					<div class="right-area">
						<div>
							<i class="fa-regular fa-eye"> ${board.count }</i> <i class="fa-regular fa-comment-dots"> 0</i> <i class="fa-regular fa-thumbs-up"> 30</i>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>


		<div id="bottomArea">
			<div id="bottomPaginationArea" class="d-flex" style="align-items: center;">
				<div>
					<c:choose>
						<c:when test="${!boards.first }">
							<!-- 페이지가 첫번째가 아닐 경우 previous 버튼 활성화 -->
							<a class="prev-next active" href="?page=${boards.number - 1}"> 
								<i class="fa-solid fa-arrow-left-long"></i> Previous
							</a>
						</c:when>
						<c:otherwise>
							<!-- 페이지가 첫번째가 일 경우 previous 버튼 비활성화 -->
							<a class="prev-next"> 
								<i class="fa-solid fa-arrow-left-long"></i> Previous
							</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="flex-grow-1 pagenation-area text-center">
					<c:choose>
						<c:when test="${boards.totalPages -1 < 5}">
							<!-- 전체 페이지가 4페이지 이하 -->
							<!-- 0 1 2 3 으로 표시 -->
							<c:forEach var="i" begin="0" end="${boards.totalPages -1}">
								<c:choose>
									<c:when test="${ boards.number eq i }">
										<a class="btn active">${i }</a>
									</c:when>
									<c:otherwise>
										<a class="btn" href="?page=${i }">${i }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:when>

						<c:when test="${boards.totalPages -1 > 4 && boards.number < 4}">
							<!-- 전체 페이지가 5이상 일 경우 그리고 현재 페이지가 3페이지 이하 일 경우 -->
							<!-- 0 1 2 3 4 ... 5  -->
							<c:forEach var="i" begin="0" end="4">
								<c:choose>
									<c:when test="${ boards.number eq i }">
										<a class="btn active">${i }</a>
									</c:when>
									<c:otherwise>
										<a class="btn" href="?page=${i }">${i }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<a class="btn">...</a>
							<a class="btn" href="?page=${boards.totalPages -1 }">${boards.totalPages -1 }</a>
						</c:when>

						<c:when test="${boards.totalPages -1 > 4 && boards.number > 3}">
							<!-- 현제페이지가 5이상이고 현재 페이지가 4 이상일 경우 -->
							<c:choose>
								<c:when test="${boards.number > boards.totalPages - 5}">
									<!-- 그 중에서 현재페이지가 마지막페이지 - 4 보다는 클 경우 -->
									<!-- 0 ... 12 13 14 15 16 -->
									<!-- 16페이지 까지 있다면 13부터 실행 -->
									<a class="btn" href="?page=0">0</a>
									<a class="btn">...</a>
									<c:forEach var="i" begin="${boards.totalPages - 5}" end="${boards.totalPages - 1}">
										<c:choose>
											<c:when test="${boards.number eq i}">
												<a class="btn active" href="?page=${i }">${i }</a>
											</c:when>
											<c:otherwise>
												<a class="btn" href="?page=${i }">${i }</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<!-- 그 외 현재페이지가 마지막페이지 - 4 보다는 같거나 작을 경우 -->
									<!-- 0 ... 11 12 13 ... 16 -->
									<!-- 16페이지 까지 있다면 12 부터 실행 -->
									<a class="btn" href="?page=0">0</a>
									<a class="btn">...</a>
									<c:forEach var="i" begin="${boards.number - 1}" end="${boards.number + 1}">
										<c:choose>
											<c:when test="${ boards.number eq i }">
												<a class="btn active">${i }</a>
											</c:when>
											<c:otherwise>
												<a class="btn" href="?page=${i }">${i }</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<a class="btn">...</a>
									<a class="btn" href="?page=${boards.totalPages -1}">${boards.totalPages -1}</a>
								</c:otherwise>
							</c:choose>
						</c:when>
					</c:choose>
				</div>
				<div>
					<c:choose>
						<c:when test="${!boards.last }">
							<!-- 페이지가 마지막이 아닐 경우 next 버튼 활성화 -->	
							<a class="prev-next active" href="?page=${boards.number + 1}"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
						</c:when>
						<c:otherwise>
							<!-- 페이지가 첫번째가 일 경우 next 버튼 비활성화 -->
							<a class="prev-next"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="/js/board-freeboards.js"></script>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
