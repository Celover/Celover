<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		<link rel="stylesheet" type="text/css" href="/css/boardDetail.css">

		<style>
			#writeReply #inqImgsThumbnail {
				display: flex;
				margin: 1% 0% 1% 0%;
			}

			#writeReply #inqImgsThumbnail>div {
				border: 1px solid #666666;
				position: relative;
				margin: 1%;
			}

			#writeReply #inqImgsThumbnail>div>img {
				width: 70px;
				height: 70px;
			}

			#writeReply #inqImgsThumbnail>div>a {
				position: absolute;
				top: -5px;
				right: -5px;
				background-color: #fff;
				border-radius: 50%;
				text-decoration: none;
				color: black;
			}

			#writeReply #inqImgsThumbnail>div>a:hover {
				cursor: pointer;
			}

			#myReplyFooter i:hover {
				cursor: pointer;
			}
		</style>

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
						<span id="replyCount"></span>개의 댓글
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
											<span>좋은 글 감사합니다 . &Lorem ipsum dolor sit amet consectetur adipisicing elit.
												Maxime perspiciatis beatae magnam odio eveniet nihil magni sapiente
												officiis! Quod quam dignissimos atque totam consequatur illum sapiente
												exercitationem praesentium dicta odio!</span>
										</div>
										<div class="reply-etc d-flex">
											<span class="me-2">2024.01.18 22:45</span>
											<span>답글쓰기</span>
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
								<span class="fw-bolder">${principal.user.nickname }</span>
							</div>
							<div id="myReplyContent">
								<textarea id="" cols="30" rows="1" placeholder="댓글을 남겨보세요."></textarea>
							</div>
							<div>
								<div id="inqImgs"></div>
								<div id="inqImgsThumbnail"></div>
							</div>
							<div id="myReplyFooter" class="d-flex">
								<div id="attachFile" class="flex-grow-1">
									<i class="fas fa-camera"></i>
								</div>
								<div id="submitReply">
									<button class="btn btn-primary" disabled>등록</button>
								</div>
							</div>

						</div>


					</div>

				</div>

			</div>

		</div>

		<script>


			$(function () {

				loadBoard();
				//파일 첨부 버튼을 눌렀을 경우 input[type:file] 을 동적으로 생성하고 클릭
				$(document).on("click", "#myReplyFooter #attachFile i", function () {
					let count = $("#inqImgsThumbnail div").length;

					if (count < 3) {
						$("#inqImgs").append('<input class="uploadFile" type="file" hidden>');
						$("#inqImgs input").last().click();
					} else {
						alert("사진은 총 3개까지 첨부 가능합니다.");
					}
				})

				// 동적으로 생성된 input[type:file] 에 change가 발생했을 경우
				$(document).on("change", "#inqImgs > input", function () {

					if (this.files.length == 1) {
						$("#inqImgsThumbnail").append(`<div><img src=""><a class="fa-solid fa-circle-xmark"></a></div>`);

						const reader = new FileReader();
						reader.readAsDataURL(this.files[0]);
						reader.onload = function (e) {
							$("#inqImgsThumbnail").parent().css("display", "");
							$("#inqImgsThumbnail div").last().children("img").attr("src", e.target.result);
						}
					}
				})

				// 파일 썸네일에서 x 버튼을 눌렀을 경우
				$(document).on("click", "#inqImgsThumbnail a", function () {

					/* 여기 사이에 있는 js 폼 전송시에도 있어야할듯 */
					// 파일첨부를 취소하여 비어있는 input태그를 제거하는 부분 
					var emptyFileInputs = $("#inqImgs input[type=file]").filter(function () {
						return $(this).val() === '';
					});
					emptyFileInputs.remove();
					/* 여기 사이에 있는 js 폼 전송시에도 있어야할듯 */

					let idx = $(this).parent().index();
					$("#inqImgsThumbnail div").eq(idx).remove();
					$("#inqImgs input").eq(idx).remove();
				})

				$("#submitReply").click(function () {
					let formData = new FormData();

					let inputFile = $("#inqImgs .uploadFile");


					let files = [];

					for (let i = 0; i < inputFile.length; i++) {
						/* files.push(inputFile[i].files) */
						formData.append("uploadFile", inputFile[i].files);
					}

					console.log(formData)

				})

				$(document).on("keyup", "#myReplyContent textarea", function () {
					if ($(this).val().length > 0) {
						$("#submitReply button").prop("disabled", false);
					} else {
						$("#submitReply button").prop("disabled", true);
					}
				})

				$("#submitReply").click(function () {

					let formData = new FormData();

					let inputFile = $("#inqImgs .uploadFile");

					if (inputFile.length > 0) {
						for (let i = 0; i < inputFile.length; i++) {
							for (let j = 0; j < inputFile[i].files.length; j++) {
								formData.append("file", inputFile[i].files[j]);

								/* files.push(inputFile[i].files) */
							}
						}
					}

					let requestDto = {
						userId: ${ principal.user.id },
						boardId: ${ boardId },
						content: $("#myReplyContent textarea").val()
					}
			
					formData.append("requestDto", new Blob([JSON.stringify(requestDto)], { type: "application/json" }));

					$.ajax({
						method: "POST",
						data: formData,
						enctype: "multipart/form-data",
						url: "/api/board/${boardId}/reply",
						processData: false,
						contentType: false,
						/* data: JSON.stringify(data), */
						/* dataType: "json", */
						success: function (res) {
							if (res.status === 500) {
								alert(res.data);
							} else {
								console.log("게시글 등록 ajax 성공");
								alert("댓글 작성이 완료되었습니다.");
								$("#myReplyContent textarea").val("")
								$("#submitReply button").prop("disabled", true);
								$("#inqImgsThumbnail a").click();
								loadBoard();

							}
						}, error: function (error) {
							console.log("댓글작성 ajax 통신 실패")
						}
					})

				})

			})
			function loadBoard() {

				$.ajax({
					method: "POST",
					url: "/api/board/${boardId}",
					contentType: "application/json; charset=UTF-8",
					dataType: "json",
					success: function (res) {
						let board = res.msg;
						console.log(board);
						$("#writerNickname").text(board.nickname);
						$(".create-date").html("&bull; " + board.createDate);
						$(".count").html("&bull; <i class='fa-regular fa-eye'></i> " + board.count);
						$("#boardTitle h4").text(board.title);
						$("#boardContent").html(board.content);

						let tags = board.boardTags.map(e => e.tagObjResponseDto.tagName);

						for (let tag of tags) {
							console.log(tag);
							$(".tag-area").append("<button class='btn'>#<span>" + tag + "</span></button>&nbsp;");
						}

						let replies = board.replies;

						let html = "";

						for (let i = 0; i < replies.length; i++) {
							html += `<div class="reply-item py-3">
										<div class="d-flex">
											<div class="reply-first-section me-2">
												<img src="sampleImg/user_profile_default.png" alt="">
											</div>
											<div class="reply-second-section flex-grow-1">
												<div class="reply-writer fw-bold">
													<span>` + replies[i].nickname + `</span>
												</div>
												<div class="reply-content py-2">
													<span>` + replies[i].content + `</span>
												</div>
												<div id="imgArea" class="d-flex">`;
							if(replies[i].replyAttachmentResponseDtos.length > 0){
								for(let j = 0; j < replies[i].replyAttachmentResponseDtos.length; j++){
									console.log(replies[i].replyAttachmentResponseDtos[j].imgPath)
									html += `<div class="m-2"><img src="`+ replies[i].replyAttachmentResponseDtos[j].imgPath + replies[i].replyAttachmentResponseDtos[j].changeName +`"></div>`
								}
							}
							html+=	`</div>
									<div class="reply-etc d-flex">
										<span class="me-2">` + replies[i].createDate + `</span> <span>답글쓰기</span>
									</div>
								</div>
								<div class="reply-third-section px-2">
									<i class="fas fa-ellipsis-vertical"></i>
								</div>
							</div>
						</div>`;
						}
						$("#replyItems").html(html);

						$("#boardDetailBottom #replyCount").html(replies.length);
						console.log(html)
						console.log(replies)


					}, error: function (err) {
						console.log(err);
						console.log("게시글 불러오기 ajax 통신 실패!")
					}
				})
			}
		</script>

		<%@ include file="/WEB-INF/views/layout/footer.jsp" %>