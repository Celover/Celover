<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ include file="/WEB-INF/views/layout/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="/css/boardNew.css">


		<!-- summer note -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
			integrity="sha256-7ZWbZUAi97rkirk4DcEp4GWDPkWpRMcNaEyXGsNXjLg=" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
			integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"
			integrity="sha256-5slxYrL5Ct3mhMAp/dgnb5JSnTYMtkr4dHby34N10qw=" crossorigin="anonymous"></script>

		<div id="boardEnrollArea" class="container">
			<div class="row mt-5">
				<h3 class="fw-bolder">게시글 등록</h3>
				<hr>
			</div>
			<div class="row mt-3">
				<div class="col-lg-8">
					<label for="title">제목</label>
					<input type="text" class="form-control" placeholder="Enter title" id="title">
				</div>
				<div class="col-lg-4">
					<!-- 추후 관리자와 사용자 분기 필요 -->
					<label for="type">카테고리</label>
					<select id="type" class="form-select" aria-label="Default select example">
						<option value="F" selected>자유게시판</option>
						<option value="N">공지사항</option>
					</select>
				</div>
			</div>

			<div class="row mt-3">
				<div class="col-md-12">
					<label for="content">내용</label>
					<textarea class="form-control summernote" rows="5" id="content"></textarea>
				</div>
			</div>
			<div id="input-tag" style="margin-top: 10px; overflow-x: hidden;">
				<span class="parent-span"> <span>#</span>
					<div class="tag-input-area">
						<input class="tag-input" type="text" maxlength="50" placeholder="태그입력">
						<button type="button" class='delete-tag'>x</button>
					</div>
				</span>
			</div>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
				<button id="btn-save" class="btn btn-primary">글쓰기완료</button>
			</div>
		</div>

		<script type="text/javascript" src="/js/boardNew.js"></script>

		<script>
			$(function () {


				$("#btn-save").click(function () {

					// front에서 제목 null 체크
					if ($("#title").val() === "") {
						alert("제목을 입력해주세요.");
						$("#title").focus();
						$('html, body').animate({ scrollTop: 0 }, 800);
						return;
					}

					// front에서 게시글 null 체크
					if ($("#content").val() === "") {
						alert("내용을 입력해주세요.");
						$(".note-editable").focus();
						return;
					}  

					let hashtag = $("#input-tag .parent-span .tag-input");
					/* let strHashTag = ""; */
					
					let hashlist = [];
					for (i = 0; i < hashtag.length - 1; i++) {
							hashlist.push(hashtag[i].value)
						}
					
	/* 				if(hashtag != ""){
						let hashlist = [];
						for (i = 0; i < hashtag.length - 1; i++) {
							hashlist.push(hashtag[i].value)
						}
						strHashTag = hashlist.join();
					} */

					let data = {
						title: $("#title").val(),
						content: $("#content").val(),
						type: $("#type option:selected").val(),
						hashTag: hashlist
					}

					$.ajax({
						method: "POST",
						url: "/api/board",
						data: JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						dataType: "json",
						success:function(res){
							
							if(res.status === 500){
								alert(res.data);
							}else{
								console.log("게시글 등록 ajax 성공");
								alert("글쓰기가 완료되었습니다.");
								window.history.back();
							}
							
						},error:function(err){
							console.log("게시글 등록 ajax 실패");
						}

					})

				})
			})

		</script>

		<%@ include file="/WEB-INF/views/layout/footer.jsp" %>