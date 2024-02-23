<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/boardDetail.css">

<!-- 메인페이지 영역 -->
<div class="container-fluid" id="boardDetail">

	<div class="container" class="px-5">

		<div class="line">
			<span>커뮤니티</span>&nbsp;/&nbsp; <a href="/board/freeboards" style="color: #0d6efd;">자유게시판</a>
		</div>
		<div id="boardDetailTop" class="mb-4">
			<div class="d-flex">
				<div class="left-area">
					<img src="sampleImg/user_profile_default.png" alt="">
				</div>
				<div class="right-area ps-2">
					<div id="writerNickname" class="d-flex">
						<span></span>
					</div>
					<div class="board-info d-flex">
						<span class="create-date pe-3"></span> 
						<span class="count"></span>
					</div>
				</div>
			</div>
		</div>

		<div id="boardDetailMiddle" class="mb-4">
			<div id="boardTitle">
				<h4></h4>
			</div>

			<div id="boardContent" class="py-5">
			</div>

			<div id="boardFooter" class="pb-4">
				<div class="d-flex">
					<div class="tag-area flex-grow-1">
					</div>
					<div class="like-area">
						<i class="far fa-thumbs-up"> 20</i>
						<!--
                                <i class="fas fa-thumbs-up"></i>
                            -->
					</div>
				</div>
			</div>
		</div>

		<div id="boardDetailBottom">
			<div class="mb-3">
				<span>14</span>개의 댓글
			</div>

			<div id="replyArea">

				<div id="replyItems">

					<div class="reply-item py-3">
						<div class="d-flex">
							<div class="reply-first-section me-2">
								<img src="sampleImg/user_profile_default.png" alt="">
							</div>
							<div class="reply-second-section">
								<div class="reply-writer fw-bold">
									<span>21jong</span>
								</div>
								<div class="reply-content pt-2">
									<span>좋은 글 감사합니다 . &Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime perspiciatis beatae magnam odio eveniet nihil magni sapiente officiis! Quod quam dignissimos atque totam consequatur illum sapiente exercitationem praesentium dicta odio!</span>
								</div>
								<div class="reply-etc d-flex">
									<span class="me-2">2024.01.18 22:45</span> <span>답글쓰기</span>
								</div>
							</div>
							<div class="reply-third-section px-2">
								<i class="fas fa-ellipsis-vertical"></i>
							</div>
						</div>
					</div>
					<div class="reply-item py-3">
						<div class="d-flex">
							<div class="reply-first-section me-2">
								<img src="sampleImg/user_profile_default.png" alt="">
							</div>
							<div class="reply-second-section">
								<div class="reply-writer fw-bold">
									<span>21jong</span>
								</div>
								<div class="reply-content pt-2">
									<span>좋은 글 감사합니다 . &Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime perspiciatis beatae magnam odio eveniet nihil magni sapiente officiis! Quod quam dignissimos atque totam consequatur illum sapiente exercitationem praesentium dicta odio!</span>
								</div>
								<div class="reply-etc d-flex">
									<span class="me-2">2024.01.18 22:45</span> <span>답글쓰기</span>
								</div>
							</div>
							<div class="reply-third-section px-2">
								<i class="fas fa-ellipsis-vertical"></i>
							</div>
						</div>
					</div>
					<div class="reply-item py-3">
						<div class="d-flex">
							<div class="reply-first-section me-2">
								<img src="sampleImg/user_profile_default.png" alt="">
							</div>
							<div class="reply-second-section">
								<div class="reply-writer fw-bold">
									<span>21jong</span>
								</div>
								<div class="reply-content pt-2">
									<span>좋은 글 감사합니다 . &Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime perspiciatis beatae magnam odio eveniet nihil magni sapiente officiis! Quod quam dignissimos atque totam consequatur illum sapiente exercitationem praesentium dicta odio!</span>
								</div>
								<div class="reply-etc d-flex">
									<span class="me-2">2024.01.18 22:45</span> <span>답글쓰기</span>
								</div>
							</div>
							<div class="reply-third-section px-2">
								<i class="fas fa-ellipsis-vertical"></i>
							</div>
						</div>
					</div>

				</div>

				<div id="writeReply" class="p-4">

					<div id="myNickname" class="mb-2">
						<span class="fw-bolder">21jong</span>
					</div>
					<div id="myReplyContent">
						<textarea name="" id="" cols="30" rows="1" placeholder="댓글을 남겨보세요."></textarea>
					</div>
					<div id="myReplyFooter" class="d-flex">
						<div id="attachFile" class="flex-grow-1">
							<i class="fas fa-camera"></i>
						</div>
						<div id="submitReply">
							<button class="btn" disabled>등록</button>
						</div>
					</div>

				</div>


			</div>

		</div>

	</div>

</div>

<script>
	
	$(function(){
		
		$.ajax({
			method:"POST",
			url:"/api/board/${boardId}",
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success:function(res){
				let board = res.msg;
				console.log(board);
				$("#writerNickname").text(board.nickname);
				$(".create-date").html("&bull; " + board.createDate);
				$(".count").html("&bull; <i class='fa-regular fa-eye'></i> " + board.count);
				$("#boardTitle h4").text(board.title);
				$("#boardContent").html(board.content);
				
				let tags = board.boardTags.map(e => e.tagObjResponseDto.tagName);
				
				for(let tag of tags){
					console.log(tag);	
					$(".tag-area").append("<button class='btn'>#<span>" + tag + "</span></button>&nbsp;");
				}
				
					/* $(".tag-area").html() += `<button class="btn">#<span>`+ tags[i] + `</span></button>` */
				
			},error:function(err){
				console.log(err);
				console.log("게시글 불러오기 ajax 통신 실패!")
			}
		})
	})
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp"%>