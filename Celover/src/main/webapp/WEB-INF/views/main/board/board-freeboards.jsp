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
						<c:choose>
							<c:when test="${category eq 'N' }">
								<li class="nav-item"><a class="nav-link" aria-current="page" href="/board/freeboards">자유게시판</a></li>
								<li class="nav-item"><a class="nav-link active" href="/board/notices">공지사항</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link active" aria-current="page" href="/board/freeboards">자유게시판</a></li>
								<li class="nav-item"><a class="nav-link" href="/board/notices">공지사항</a></li>
							</c:otherwise>
						</c:choose>
					</ul>

				</div>
				<div class="col filter-area" style="text-align: right;">
					<button class="btn btn-outline filter" data-bs-toggle="dropdown" style="border: 1px solid #dee2e6;">
						<i class="fas fa-arrow-down-short-wide">&nbsp;최신순</i> 
					</button>
					<ul class="dropdown-menu">
						<li>
							<a class="dropdown-item lastest">최신순</a>
							<input type="hidden" value="lastest">
						</li>
						<li>
							<a class="dropdown-item recommend">추천순</a>
							<input type="hidden" value="recommend">
						</li>
						<li>
							<a class="dropdown-item comment">댓글순</a>
							<input type="hidden" value="comment">
						</li>
						<li>
							<a class="dropdown-item view">조회순</a>
							<input type="hidden" value="view">
						</li>
					</ul>
				</div>
			</div>

			<div class="row py-3" style="align-items: center;">
				<div id="refreshArea" class="col-md-2">
					<i class="fa-solid fa-arrows-rotate"></i>
				</div>
				<div id="searchArea" class="col-md-8">
					<form method="GET" action="/board/freeboards">
						<i class="fas fa-search"></i> 
						<input type="text" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">
						<input type="hidden" name="sort" value="${sort }">
					</form>
				</div>
				<div id="topPaginationArea" class="col-md-2" style="text-align: right;">
					<c:choose>
						<c:when test="${empty boards.content}">

						</c:when>
						<c:otherwise>
							<div>
								<span> <span id="currentPage">${boards.number}</span>/<span id="totalPage">${boards.totalPages -1}</span> 페이지 <c:choose>
										<c:when test="${!boards.first }">
											<!-- 페이지가 첫번째가 아닐 경우 previous 버튼 활성화 -->
											<c:choose>
												<c:when test="${sort eq '' and keyword eq '' }">
													<a class="prev-next" href="?page=${boards.number - 1}"><i class="fa-solid fa-arrow-left-long"></i></a>&nbsp;
												</c:when>
												<c:when test="${keyword eq '' }">
													<a class="prev-next" href="?page=${boards.number - 1}&sort=${sort }"><i class="fa-solid fa-arrow-left-long"></i></a>&nbsp;
												</c:when>
												<c:when test="${sort eq '' }">
													<a class="prev-next" href="?keyword=${keyword }&page=${boards.number - 1}"><i class="fa-solid fa-arrow-left-long"></i></a>&nbsp;
												</c:when>
												<c:otherwise>
													<a class="prev-next" href="?keyword=${keyword }&page=${boards.number - 1}&sort=${sort }"><i class="fa-solid fa-arrow-left-long"></i></a>&nbsp;
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
											<!-- 페이지가 첫번째가 일 경우 previous 버튼 비활성화 -->
											<a class="prev-next"><i class="fa-solid fa-arrow-left-long disabled"></i></a>&nbsp;
										</c:otherwise>
									</c:choose> 
									
									<c:choose>
										<c:when test="${!boards.last }">
											<!-- 페이지가 마지막이 아닐 경우 next 버튼 활성화 -->
											<c:choose>
												<c:when test="${sort eq '' and keyword eq '' }">
													<a class="prev-next" href="?page=${boards.number + 1}"><i class="fa-solid fa-arrow-right"></i></a>
												</c:when>
												<c:when test="${keyword eq '' }">
													<a class="prev-next" href="?page=${boards.number + 1}&sort=${sort}"><i class="fa-solid fa-arrow-right"></i></a>												
												</c:when>
												<c:when test="${sort eq '' }">
													<a class="prev-next" href="?keyword=${keyword }&page=${boards.number + 1}"><i class="fa-solid fa-arrow-right"></i></a>
												</c:when>
												<c:otherwise>
													<a class="prev-next" href="?keyword=${keyword }&page=${boards.number + 1}&sort=${sort}"><i class="fa-solid fa-arrow-right"></i></a>
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
											<!-- 페이지가 첫번째가 일 경우 next 버튼 비활성화 -->
											<a class="prev-next"><i class="fa-solid fa-arrow-right disabled"></i></a>
										</c:otherwise>
									</c:choose>

								</span>
							</div>
						</c:otherwise>
					</c:choose>

				</div>
			</div>

		</div>


		<div id="boardList">
			<c:choose>
				<c:when test="${empty boards.content }">
					<!-- 비어있을 경우 게시판 리스트 -->
				</c:when>
				<c:otherwise>
					<c:forEach var="board" items="${boards.content}">
						<div class="d-flex py-3 boardItem">
							<div class="flex-grow-1 left-area">
								<div class="top-area d-flex">
									<img src="/img/user_profile_default.png" alt=""> <span class="nickname me-2">${board.nickname }</span> <span class="create-date">&bull; ${board.createDate }</span>
								</div>
								<div class="middle-area my-2 d-flex title">
									<a href="/board/${board.id }">${board.title }</a> 
									<input class="hiddenPageNo" type="hidden" value="${boards.number }">
									<input class="hiddenSort" type="hidden" value="${sort }">
									<input class="hiddenKeyword" type="hidden" value="${keyword}">
								</div>
								<div class="bottom-area d-flex">
									<c:forEach var="tag" items="${board.tagNames}">
										<span>#${tag}</span>&nbsp;
									</c:forEach>
								</div>
							</div>
							<div class="right-area">
								<div>
									<i class="fa-regular fa-eye"> ${board.count }</i> <i class="fa-regular fa-comment-dots"> ${board.replyCount }</i> <i class="fa-regular fa-thumbs-up"> ${board.likesCount }</i>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>

		<div id="bottomArea">
			<div id="bottomPaginationArea" class="d-flex" style="align-items: center;">
				<div>
					<c:choose>
						<c:when test="${empty boards.content }">
							<!-- 비어있을 경우 하단 페이지네이션 -->
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${!boards.first }">
									<!-- 페이지가 첫번째가 아닐 경우 previous 버튼 활성화 -->
									<c:choose>
										<c:when test="${sort eq '' and keyword eq '' }">
											<a class="prev-next active" href="?page=${boards.number - 1}"> 
												<i class="fa-solid fa-arrow-left-long"></i> Previous
											</a>													
										</c:when>
										<c:when test="${keyword eq '' }">
											<a class="prev-next active" href="?page=${boards.number - 1}&sort=${sort}"> 
												<i class="fa-solid fa-arrow-left-long"></i> Previous
											</a>										
										</c:when>
										<c:when test="${sort eq '' }">
											<a class="prev-next active" href="?keyword=${keyword }&page=${boards.number - 1}"> 
												<i class="fa-solid fa-arrow-left-long"></i> Previous
											</a>
										</c:when>
										<c:otherwise>
											<a class="prev-next active" href="?keyword=${keyword }&page=${boards.number - 1}&sort=${sort}"> 
												<i class="fa-solid fa-arrow-left-long"></i> Previous
											</a>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<!-- 페이지가 첫번째가 일 경우 previous 버튼 비활성화 -->
									<a class="prev-next"> <i class="fa-solid fa-arrow-left-long"></i> Previous
									</a>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="flex-grow-1 pagenation-area text-center">
					<c:choose>
						<c:when test="${empty boards.content }">
							<!-- 비어있을 경우 하단 페이지네이션 -->
						</c:when>
						<c:otherwise>
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
												<c:choose>
													<c:when test="${sort eq '' and keyword eq '' }">
														<a class="btn" href="?page=${i }">${i }</a>
													</c:when>
													<c:when test="${keyword eq '' }">
														<a class="btn" href="?page=${i }&sort=${sort}">${i }</a>											
													</c:when>
													<c:when test="${sort eq '' }">
														<a class="btn" href="?keyword=${keyword }&page=${i }">${i }</a>
													</c:when>
													<c:otherwise>
														<a class="btn" href="?keyword=${keyword }&page=${i }&sort=${sort}">${i }</a>
													</c:otherwise>
												</c:choose>
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
												<c:choose>
													<c:when test="${sort eq '' and keyword eq '' }">
														<a class="btn" href="?page=${i }">${i }</a>
													</c:when>
													<c:when test="${keyword eq '' }">
														<a class="btn" href="?page=${i }&sort=${sort}">${i }</a>
													</c:when>
													<c:when test="${sort eq '' }">
														<a class="btn" href="?keyword=${keyword }&page=${i }">${i }</a>
													</c:when>
													<c:otherwise>
														<a class="btn" href="?keyword=${keyword }&page=${i }&sort=${sort}">${i }</a>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<a class="btn">...</a>
									<c:choose>
										<c:when test="${sort eq '' and keyword eq '' }">
											<a class="btn" href="?page=${boards.totalPages -1 }">${boards.totalPages -1 }</a>
										</c:when>
										<c:when test="${keyword eq '' }">
											<a class="btn" href="?page=${boards.totalPages -1 }&sort=${sort}">${boards.totalPages -1 }</a>
										</c:when>
										<c:when test="${sort eq '' }">
											<a class="btn" href="?keyword=${keyword }&page=${boards.totalPages -1 }">${boards.totalPages -1 }</a>
										</c:when>
										<c:otherwise>
											<a class="btn" href="?keyword=${keyword }&page=${boards.totalPages -1 }&sort=${sort}">${boards.totalPages -1 }</a>
										</c:otherwise>
									</c:choose>
								</c:when>
		
								<c:when test="${boards.totalPages -1 > 4 && boards.number > 3}">
									<!-- 현제페이지가 5이상이고 현재 페이지가 4 이상일 경우 -->
									<c:choose>
										<c:when test="${boards.number > boards.totalPages - 5}">
											<!-- 그 중에서 현재페이지가 마지막페이지 - 4 보다는 클 경우 -->
											<!-- 0 ... 12 13 14 15 16 -->
											<!-- 16페이지 까지 있다면 13부터 실행 -->
											<c:choose>
												<c:when test="${sort eq '' and keyword eq '' }">
													<a class="btn" href="?page=0">0</a>
												</c:when>
												<c:when test="${keyword eq '' }">
													<a class="btn" href="?page=0?sort=${sort }">0</a>
												</c:when>
												<c:when test="${sort eq '' }">
													<a class="btn" href="?keyword=${keyword }&page=0">0</a>
												</c:when>
												<c:otherwise>
													<a class="btn" href="?keyword=${keyword }&page=0&sort=${sort}">0</a>
												</c:otherwise>
											</c:choose>
											<a class="btn">...</a>
											<c:forEach var="i" begin="${boards.totalPages - 5}" end="${boards.totalPages - 1}">
												<c:choose>
													<c:when test="${boards.number eq i}">
														<a class="btn active">${i }</a>
													</c:when>
													<c:otherwise>
														<c:choose>
															<c:when test="${sort eq '' and keyword eq '' }">
																<a class="btn" href="?page=${i }">${i }</a>
															</c:when>
															<c:when test="${keyword eq '' }">
																<a class="btn" href="?page=${i }&sort=${sort}">${i }</a>
															</c:when>
															<c:when test="${sort eq '' }">
																<a class="btn" href="?keyword=${keyword }&page=${i }">${i }</a>
															</c:when>
															<c:otherwise>
																<a class="btn" href="?keyword=${keyword }&page=${i }&sort=${sort}">${i }</a>
															</c:otherwise>
														</c:choose>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<!-- 그 외 현재페이지가 마지막페이지 - 4 보다는 같거나 작을 경우 -->
											<!-- 0 ... 11 12 13 ... 16 -->
											<!-- 16페이지 까지 있다면 12 부터 실행 -->
											<c:choose>
												<c:when test="${sort eq '' and keyword eq '' }">
													<a class="btn" href="?page=0">0</a>
												</c:when>
												<c:when test="${keyword eq '' }">
													<a class="btn" href="?page=0&sort=${sort }">0</a>
												</c:when>
												<c:when test="${sort eq '' }">
													<a class="btn" href="?keyword=${keyword }&page=0">0</a>
												</c:when>
												<c:otherwise>
													<a class="btn" href="?keyword=${keyword }&page=0&sort=${sort }">0</a>
												</c:otherwise>
											</c:choose>
											<a class="btn">...</a>
											<c:forEach var="i" begin="${boards.number - 1}" end="${boards.number + 1}">
												<c:choose>
													<c:when test="${ boards.number eq i }">
														<a class="btn active">${i }</a>
													</c:when>
													<c:otherwise>
														<c:choose>
															<c:when test="${sort eq '' and keyword eq '' }">
																<a class="btn" href="?page=${i }">${i }</a>
															</c:when>
															<c:when test="${keyword eq '' }">
																<a class="btn" href="?page=${i }&sort=${sort}">${i }</a>
															</c:when>
															<c:when test="${sort eq '' }">
																<a class="btn" href="?keyword=${keyword }&page=${i }">${i }</a>
															</c:when>
															<c:otherwise>
																<a class="btn" href="?keyword=${keyword }&page=${i }&sort=${sort}">${i }</a>
															</c:otherwise>
														</c:choose>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<a class="btn">...</a>
											<c:choose>
												<c:when test="${sort eq '' and keyword eq '' }">
													<a class="btn" href="?page=${boards.totalPages -1}">${boards.totalPages -1}</a>
												</c:when>
												<c:when test="${keyword eq '' }">
													<a class="btn" href="?page=${boards.totalPages -1}&sort=${sort}">${boards.totalPages -1}</a>
												</c:when>
												<c:when test="${sort eq '' }">
													<a class="btn" href="?keyword=${keyword }&page=${boards.totalPages -1}">${boards.totalPages -1}</a>
												</c:when>
												<c:otherwise>
													<a class="btn" href="?keyword=${keyword }&page=${boards.totalPages -1}&sort=${sort}">${boards.totalPages -1}</a>
												</c:otherwise>
											</c:choose>
										</c:otherwise> 
									</c:choose>
								</c:when>
							</c:choose>
						</c:otherwise>
					</c:choose>
					
				</div>
				<div>
					<c:choose>
						<c:when test="${!boards.last }">
							<!-- 페이지가 마지막이 아닐 경우 next 버튼 활성화 -->
							<c:choose>
								<c:when test="${sort eq '' and keyword eq '' }">
									<a class="prev-next active" href="?page=${boards.number + 1}"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
								</c:when>
								<c:when test="${keyword eq '' }">
									<a class="prev-next active" href="?page=${boards.number + 1}&sort=${sort}"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
								</c:when>
								<c:when test="${sort eq '' }">
									<a class="prev-next active" href="?keyword=${keyword }&page=${boards.number + 1}"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
								</c:when>
								<c:otherwise>
									<a class="prev-next active" href="?keyword=${keyword }&page=${boards.number + 1}&sort=${sort}"> Next <i class="fa-solid fa-arrow-right-long"></i></a>
								</c:otherwise>
							</c:choose>
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

<script>
	$(function(){
		
		let sortText = "";
		
		switch("${sort}"){
			case "lastest":
				sortText = "&nbsp;최신순";
				break
			case "recommend":
				sortText = "&nbsp;추천순";
				break
			case "comment":
				sortText = "&nbsp;댓글순";
				break
			case "view":
				sortText = "&nbsp;조회순";
		}
		$(".filter i").html(sortText)
	})
	
	$(".dropdown-menu li").click(function(){
		let sort = $(this).children(':last').val();
		$(this).parent().prev().children().html('&nbsp;' + $(this).children().text())
		
		location.href= "?keyword=${keyword}&page=0&sort=" + sort;
		
	})

	$("#refreshArea").click(function(){
		 location.reload();
	})

	console.log("${keyword}")
</script>

<script src="/js/boardFreeboards.js"></script>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
