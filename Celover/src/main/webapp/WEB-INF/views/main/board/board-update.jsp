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
				<h3 class="fw-bolder">게시글 수정</h3>
				<hr>
			</div>
			<div class="row mt-3">
				<div class="col-lg-8">
					<label for="title">제목</label>
					<input type="text" class="form-control" value="${board.title}" placeholder="Enter title" id="title">
					<input id="hiddenBoardId" type="hidden" value="${board.id }">
				</div>
				<div class="col-lg-4">
					<!-- 추후 관리자와 사용자 분기 필요 -->
					<label for="type">카테고리</label>
					<select id="type" class="form-select" aria-label="Default select example">
						<c:choose>
							<c:when test="${board.category eq 'F' }">
								<option value="F" selected>자유게시판</option>
								<option value="N">공지사항</option>
							</c:when>
							<c:otherwise>
								<option value="F">자유게시판</option>
								<option value="N" selected>공지사항</option>
							</c:otherwise>
						</c:choose>
					</select>
				</div>
			</div>

			<div class="row mt-3">
				<div class="col-md-12">
					<label for="content">내용</label>
					<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
				</div>
			</div>
			<div id="input-tag" style="margin-top: 10px; overflow-x: hidden;">
				<c:forEach var="tag" items="${board.boardTags }">
					<span class="parent-span"> <span>#</span>
						<div class="tag-input-area">
							<input class="tag-input" type="text" maxlength="50" placeholder="태그입력" value="${tag.tagObjResponseDto.tagName}">
							<button type="button" class='delete-tag'>x</button>
						</div>
					</span>
				</c:forEach>
				<span class="parent-span"> <span>#</span>
					<div class="tag-input-area">
						<input class="tag-input" type="text" maxlength="50" placeholder="태그입력">
						<button type="button" class='delete-tag'>x</button>
					</div>
				</span>
			</div>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
				<button id="btn-update" class="btn btn-primary">수정완료</button>
			</div>
		</div>
		
		<script>
			console.log("${board.boardTags}")
			
			$('.summernote').summernote({
				tabsize: 2,
				height: 400,
			});
			
			/* 해시태그 스크립트 */
			$(function() {
			
				$(document).on('keyup', '.tag-input', function() {
					
					if($(this).val() == ""){
						$(this).next().click();
					}else{
						$(this).css('width', 20);
						let value = $(this).val();
						$('.tag-input-area').append(
							'<div class="virtual">' + value + '</div>')
				
						let inputWidth = $(this).siblings('.virtual').width()
						$(this).css('width', inputWidth + 20);
						$('.virtual').remove();
					}
				})
			
				$(document).on('click', '.delete-tag', function() {
					let tagLength = $('.tag-input').length;
					let ti = $('.tag-input').get()
					if (($(".delete-tag").index(this) == tagLength - 1)
						&& (ti[tagLength - 1]).value == '') { // 지금누른 버튼이 마지막 인덱스의 버튼일떄
						$(this).prev().val('');
					} else {
						$(this).parent().parent().remove();
					}
				})
			
				$(document).on('change', '.tag-input', function() {
					let tagLength = $('.tag-input').length;
					let ti = $('.tag-input').get()
					if (ti[tagLength - 1].value != '') {
						$(document).on('click', '.delete-tag', function() {
							return;
						})
						$('#input-tag').append("<span class='parent-span'><span>#</span><div class='tag-input-area'><input class='tag-input' type='text' maxlength='50' placeholder='태그입력'><button type='button' class='delete-tag'>x</button></div></span>");
						$('.tag-input')[tagLength].focus();
					}
				})
				
				$("#btn-update").click(function() {

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
			
					let hashlist = [];
					for (i = 0; i < hashtag.length - 1; i++) {
						hashlist.push(hashtag[i].value)
					}
					
					// 공백이나 빈 문자열 제거
					hashlist = hashlist.filter(item => item.trim() !== "");
			
					let data = {
						id: $("#hiddenBoardId").val(),
						title: $("#title").val(),
						content: $("#content").val(),
						type: $("#type option:selected").val(),
						hashTag: hashlist,
					}
			
					$.ajax({
						method: "PUT",
						url: "/api/board/" + data.id,
						data: JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						dataType: "json",
						success: function(res) {
			
							if (res.status === 500) {
								alert(res.data);
							} else {
								console.log("게시글 수정 ajax 성공");
								alert("게시글 수정이 완료되었습니다.");
								location.href="/board/" + res.msg;
							}
			
						}, error: function(err) {
							console.log("게시글 등록 ajax 실패");
						}
			
					})
			
				})
			})
			

		</script>

		<!-- <script type="text/javascript" src="/js/boardupdate.js"></script> -->

		<%@ include file="/WEB-INF/views/layout/footer.jsp" %>