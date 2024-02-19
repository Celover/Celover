<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
/* 내 글 관리 네비바 css */
#myBoardArea .nav-tabs li {
	width: auto;
}

#myBoardArea .nav-tabs li a {
	color: lightgray;
}

#myBoardArea .nav-tabs li .active {
	color: black;
}

#myBoardArea .navArea .row {
	border: 1px solid #dee2e6;
	border-top: none;
	border-bottom: none;
}

#myBoardArea .navArea .row li {
	width: auto;
	font-size: small;
}

#myBoardArea .navArea .row li a {
	padding: 16px 8px;
	color: black;
}

#myBoardArea .navArea .row .active>a>.underline {
	border-bottom: 3px solid purple;
	margin: 0px;
	margin-top: 3px;
}

/* 내 글 관리 네비바 css 끝 */

/* 내가 좋아요한 피드 css */
#myBoardArea .board-management {
	border: 1px solid #dee2e6;
	border-top: none;
}

.board-management .written-board table {
	table-layout: fixed;
}

.board-management .written-board table * {
	text-align: center;
}

.board-management .written-board table thead .col-check-box {
	width: 3%;
}

.board-management .written-board table thead .col-category {
	text-align: left;
	width: 12%;
}

.board-management .written-board table thead .col-title {
	width: 57%;
}

.board-management .written-board table thead .col-nickname {
	text-align: left;
	width: 8%;
}

.board-management .written-board table thead .col-create-date {
	width: 12%;
}

.board-management .written-board table thead .col-count {
	width: 8%;
}

.board-management .written-board table tbody .nickname {
	text-align: left;
}

.board-management .written-board table tbody .category {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.board-management .written-board table tbody .title {
	text-align: left;
}

.board-management .written-board table tbody .nickname {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: #666;
}

.board-management .written-board table tbody .create-date {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: #666;
}

.board-management .written-board table tbody .count {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: #666;
}

.board-management .written-board table tfoot .delete-area {
	text-align: right;
}

/* 내가 작성한 피드 css 끝 */
</style>

<div id="myBoardArea">
	<br>
	<h4>내 글 관리</h4>
	<br>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="#">피드 관리</a></li>
		<li class="nav-item"><a class="nav-link active" href="#">게시판 관리</a></li>
	</ul>
	<div class="container navArea">
		<div class="row">
			<div class="col-md">
				<ul class="nav">
					<li class="nav-item active"><a class="nav-link" href="#">내가 작성한 글
							<hr class="underline">
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">내가 좋아요한 글</a></li>
					<li class="nav-item"><a class="nav-link" href="#">내가 작성한 댓글</a></li>
				</ul>
			</div>
			<hr style="margin: 0%; background-color: rgb(222, 227, 232);">
		</div>
	</div>
	<div class="container board-management">
		<div class="written-board">
			<div class="table-responsive">
			<h2 id="test"></h2>

				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col" class="col-check-box"><input class="form-check-input check-all" type="checkbox" value=""></th>
							<th scope="col" class="col-category">카테고리</th>
							<th scope="col" class="col-title">제목</th>
							<th scope="col" class="col-nickname">작성자</th>
							<th scope="col" class="col-create-date">작성일</th>
							<th scope="col" class="col-count">조회수</th>
						</tr>
					</thead>
					<tbody class="table-group-divider table-hover">
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24) <span style="color: red; font-weight: 800;">[14]</span>
							</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>
						<tr>
							<td class="check-box"><input class="form-check-input check-one" type="checkbox" value=""></td>
							<td class="category">카리나/자유게시판</td>
							<td class="title">[서울시립대학교] 2023학년도 BIG DATA 미래산업 트렌드 기업연계 세미나 (~1/24)</td>
							<td class="nickname">user01</td>
							<td class="create-date">2024.01.07</td>
							<td class="count">2,301</td>
						</tr>

					</tbody>
					<tfoot class="table-group-divider">
						<tr>
							<td><input class="form-check-input check-all" type="checkbox" value=""></td>
							<td colspan="3"></td>
							<td colspan="2" class="delete-area">
								<button class="btn btn-danger">게시글 삭제</button>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>

	</div>

</div>
<!-- 마이페이지 본문 영역 끝 -->