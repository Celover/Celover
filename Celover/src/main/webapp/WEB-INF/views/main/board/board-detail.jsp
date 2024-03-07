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
				max-width: 70px;
				max-height: 70px;
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
			
			#boardDetailTop i:hover{
				cursor: pointer;
			}
			
			#boardDetailTop .etc-area > i {
	            font-size: x-large;
	            width: 15px;
	            text-align: center;
	        }
	        
			#myReplyFooter .etc-area > i {
	            width: 15px;
	            text-align: center;
	        }
	
	        .etc-area .msgbox {
	            border-radius: 10px;
	            position: absolute;
	            background: #fff;
	            display: none; 
	            padding: 10px;
	            background-color: #fff;
	            margin-top: 10px;
	            margin-left: -40px;
	            box-shadow: 0px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	        }
	
	        .etc-area .msgbox:after {
	            content: '';
	            position: absolute;
	            top: 0%;
	            left: 50%;
	            width: 0;   
	            height: 0;
	            border: 12px solid transparent;
	            border-bottom-color: #fff;
	            border-top: 0;
	            border-left: 0;
	            margin-left: -6px;
	            margin-top: -12px;
	            box-shadow: -4px 0px 2px -1px rgba( 178, 178, 178, .4 );
	        }
	        
	        .etc-area .msgbox ul {
	            list-style: none;
	            padding: 0px;
	            margin: 0px;
	            width: 80px;
	            text-align: left;
	
	        }
	
	        .etc-area .msgbox ul li {
	            padding: 5px;
	            font-size: small;
	            text-align: center;
	        }
	
	        .etc-area ul li:hover {
	            background-color: #e9ecef;
	            cursor: pointer;
	        }
	        
	        .etc-area ul li i {
	            width: 16px;
	            height: 16px;
	            text-align: center;
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
				<div class="right-area ps-2 flex-grow-1">
					<div id="writerNickname" class="d-flex">
						<span></span>
					</div>
					<div class="board-info d-flex">
						<span class="create-date pe-3"></span> 
						<span class="count pe-3"></span>
						<span class="modified-date"></span>
					</div>
				</div>
				<div class="util-area etc-area">
					<i class="fas fa-ellipsis-vertical">
						<div class="msgbox">
			                <ul>

			                </ul>
		                </div>
                	</i>
				</div>
				
			</div>
		</div>

		<div id="boardDetailMiddle" class="mb-4">
			<div id="boardTitle">
				<h4></h4>
			</div>

			<div id="boardContent" class="py-5"></div>
			<div id="boardFooter" class="pb-4">
				<div class="d-flex">
					<div class="tag-area flex-grow-1"></div>
					<div class="like-area">
						<i class="far fa-heart"> <span>0</span></i>
					</div>
				</div>
			</div>
		</div>

		<div id="boardDetailBottom">
			<div class="mb-3">
				<span id="replyCount">0</span>개의 댓글
			</div>

			<div id="replyArea">

				<div id="replyItems"></div>

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
				// 현재 게시글의 리스트 페이지 번호를 가져오는 메서드
				if(sessionStorage.getItem('currentPage') == null){
					// 만약 리스트를 통해서 board에 접근한것이 아닌 url을 직접 입력하여 들어온경우 0으로 세팅
					sessionStorage.setItem('currentPage', 0);
				}

				loadBoard();
				loadLikes();
				
				// 게시글 수정
				$(document).on("click", ".util-area #updateBoard", function(){
					location.href= "/board/${boardId}/update";
				})
				
				// 게시글 삭제
				$(document).on("click", ".util-area #deleteBoard", function(){
					console.log("게시글 삭제 클릭!");
					
		     		$.ajax({
		        		method: "PUT",
						url: "/api/board/" + ${boardId},
						contentType: "application/json; charset=UTF-8",
						dataType: "json",
						success:function(res){
							console.log(res);
							if (res.status === 500) {
								alert(res.data);
							} else {
								alert("게시글이 삭제 되었습니다.");
								
								// keyword가 비어있고 정렬이 최신순이 아닐경우
								if(sessionStorage.getItem("keyword") == "" && sessionStorage.getItem("sort") == "lastest"){
									location.href="/board/freeboards?page=" + sessionStorage.getItem("currentPage");
								// keyword가 비어있을경우
								}else if(sessionStorage.getItem("keyword") == ""){
									location.href="/board/freeboards?page=" + sessionStorage.getItem("currentPage") + "&sort=" + sessionStorage.getItem("sort");
								// sort가 비어있을 경우
								}else if(sessionStorage.getItem("sort") == "lastest"){
									location.href="/board/freeboards?keyword=" + sessionStorage.getItem("keyword") + "&page=" + sessionStorage.getItem("currentPage");
								// 둘다 비어있지 않은 경우
								}else{
									location.href="/board/freeboards?keyword=" + sessionStorage.getItem("keyword") + "&page=" + sessionStorage.getItem("currentPage") + "&sort=" + sessionStorage.getItem("sort");
								}
								
							}
						},error:function(){
							console.log("게시글 삭제 ajax 통신 실패!")	
						}
			     	})
 					
				})
				
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

				$(document).on("keyup", "#myReplyContent textarea", function () {
					if ($(this).val().length > 0) {
						$("#submitReply button").prop("disabled", false);
					} else {
						$("#submitReply button").prop("disabled", true);
					}
				})

				// 댓글 작성 버튼 클릭
				$("#submitReply button").click(function () {

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
								
								let html = "";
								let imgHtml = "";
								
									html += `<div class="reply-item py-3">
												<div class="d-flex">
													<div class="reply-first-section me-2">
														<img src="sampleImg/user_profile_default.png" alt="">
													</div>
													<div class="reply-second-section flex-grow-1">
														<div class="reply-writer fw-bold">
															<span>` + res.msg.nickname + `</span>
														</div>
														<div class="reply-content py-2">
															<span>` + res.msg.content + `</span>
														</div>
														<div class="imgArea" class="d-flex">`;
									if(res.msg.replyAttachmentResponseDtos.length > 0){
										for(let j = 0; j < res.msg.replyAttachmentResponseDtos.length; j++){
											imgHtml += `<div class="m-2"><img src="`+ res.msg.replyAttachmentResponseDtos[j].imgPath + res.msg.replyAttachmentResponseDtos[j].changeName +`"></div>`
										}
									}
									html+=	`</div>
											<div class="reply-etc d-flex">
												<span class="me-2">` + res.msg.createDate + `</span> <span>답글쓰기</span>
											</div>
										</div>
										<div class="reply-third-section px-2 etc-area">
											<i class="fas fa-ellipsis-vertical">
												<div class="msgbox">
									                <ul>`
									if("${principal.user.nickname}" === res.msg.nickname ){
										html += `<li class="delete-reply">
													<input class="hidden-id" type="hidden" value="` + res.msg.replyId + `">
					                        		<i class="fas fa-trash-can" style="color: red;"></i> 삭제하기
						                    	</li>`
									}else{
										html += `<li class="report-reply">
					                        		<i class="fa-solid fa-triangle-exclamation" style="color: red;"></i> 신고하기
						                    	</li>`
									}
									html += `</ul></div></i></div></div></div>`;
								
								$("#replyItems").append(html);
								
								if(imgHtml != ""){
									$(".imgArea").last().html('<div class="m-2"><img src="/img/로딩.gif"></div>');
									setTimeout(function() {
										$(".imgArea").last().html(imgHtml);
									}, 1500);
								}
								
							}
						}, error: function (error) {
							console.log("댓글작성 ajax 통신 실패")
						}
					})

				})

			})

			
	        /* ... 클릭 script 시작 */
	        $(document).on("click", ".etc-area > i", function(e){
	            e.stopPropagation();
	            console.log(" ... 눌림");
	            let msgbox = $(e.target).find(".msgbox");
	            let state = $(e.target).find(".msgbox").css("display");

	            $(".msgbox").hide();
	            $(".msgbox").parent().css("background-color","#fff");

	            if(state == "none"){
	                $(e.target).css("background-color","#e9ecef");
	                msgbox.show();
	            }else{
	                $(e.target).css("background-color","#fff");
	                msgbox.hide();
	            }
	        })

	        $(document).click(function(e) {
	            var msgbox = $(".etc-area > i > .msgbox");
	            if (!msgbox.is(e.target) && !msgbox.has(e.target).length) {
	                msgbox.parent().css("background-color","#fff")
	                msgbox.hide();
	            }
	        });
	        /* ... 클릭 script 끝 */
	        
	        /* 댓글삭제 script */
	        $(document).on("click",".delete-reply", function(){
	        	
	        	let data = {
					replyId : $(this).find('.hidden-id').val(),
					userId : ${principal.user.id}
				}
	        	console.log(data)
	        	
	        	$.ajax({
	        		method: "DELETE",
					url: "/api/board/" + data.replyId + "/reply",
					contentType: "application/json; charset=UTF-8",
					dataType: "json",
					data: JSON.stringify(data),
					success:function(res){
						
						if (res.status === 500) {
							alert(res.data);
						} else {
							alert("댓글을 삭제했습니다.");
							loadBoard();
						}
					},error:function(){
						console.log("댓글 삭제 ajax 통신 실패");
					}
	        	})
	        })
	        
	        // 좋아요를 눌렀을 경우
	        $(document).on("click", ".like-area i", function(){
	        	
	        	console.log("좋아요 눌림 !");
	        	
	        	$.ajax({
					method: "POST",
					url: "/api/board/${boardId}/likes",
					contentType: "application/json; charset=UTF-8",
					dataType: "json",
					success: function(res){
						console.log(res)
						if(res.msg.status == true){
							$(".like-area").html("<i class='fas fa-heart'> <span></span></i>");
						}else{
							$(".like-area").html("<i class='far fa-heart'> <span></span></i>");
						}
						$(".like-area i span").text(res.msg.count);	
					}
				})
	        })
	        
	        function loadLikes(){
	        	
				$.ajax({
					method: "GET",
					url: "/api/board/${boardId}/likes",
					contentType: "application/json; charset=UTF-8",
					dataType: "json",
					success: function(res){
						console.log(res);
						
						if(res.msg.status == false){ // 내가 좋아요 안눌렀을떄 
							$(".like-area").html("<i class='far fa-heart'> <span></span></i>");							
						}else{
							$(".like-area").html("<i class='fas fa-heart'> <span></span></i>");							
						}
						$(".like-area i span").text(res.msg.count);					
						
					},error:function(){
						console.log("좋아요 불러오기 ajax 통신 실패")
					}
				})
	        }
	        
   			function loadBoard() {

				$.ajax({
					method: "GET",
					url: "/api/board/${boardId}",
					contentType: "application/json; charset=UTF-8",
					dataType: "json",
					success: function (res) {
						let board = res.msg;
						console.log(board);
						$("#writerNickname").text(board.nickname);
						$(".create-date").html("&bull; " + board.createDate);
						if(board.lastModifiedDate != null){
							$(".modified-date").html("&bull; 수정됨 " + board.lastModifiedDate);
						}
						$(".count").html("&bull; <i class='fa-regular fa-eye'></i> " + board.count);
						$("#boardTitle h4").text(board.title);
						$("#boardContent").html(board.content);		
						
						if(board.userId =="${principal.user.id}"){
							
							let html = `<li id="updateBoard">
	                					<i class="fa-solid fa-pen-to-square"></i>수정하기
		                			</li>
		                			<li id="deleteBoard">
		                				<i class="fa-solid fa-trash-can"></i>삭제하기		 					
		                			</li>`;
		                	$(".etc-area .msgbox ul").html(html);
						}else{
							let html = `<li id="reportBoard">
	                					<i class="fa-solid fa-pen-to-square"></i>신고하기
		                			</li>`
		                	$(".etc-area .msgbox ul").html(html);
						}
						
						
						let tags = board.boardTags.map(e => e.tagObjResponseDto.tagName);

						let tagHtml = "";
						
						for (let tag of tags) {
							console.log(tag);
							tagHtml += `<button class='btn'>#<span>` + tag + `</span></button>&nbsp;`
						}
						
						$(".tag-area").html(tagHtml);

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
												<div class="imgArea" class="d-flex">`;
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
								<div class="reply-third-section px-2 etc-area">
									<i class="fas fa-ellipsis-vertical">
										<div class="msgbox">
							                <ul>`
							if("${principal.user.nickname}" === replies[i].nickname ){
								html += `<li class="delete-reply">
											<input class="hidden-id" type="hidden" value="` + replies[i].replyId + `">
			                        		<i class="fas fa-trash-can" style="color: red;"></i> 삭제하기
				                    	</li>`
							}else{
								html += `<li class="report-reply">
			                        		<i class="fa-solid fa-triangle-exclamation" style="color: red;"></i> 신고하기
				                    	</li>`
							}
							html += `</ul></div></i></div></div></div>`;
						}
						$("#replyItems").html(html);

						$("#boardDetailBottom #replyCount").html(replies.length);
						console.log(html);
						console.log(replies);
						
						// 마지막에 이미지 불러오기

					}, error: function (err) {
						console.log(err);
						console.log("게시글 불러오기 ajax 통신 실패!")
					}
				})
			}

	        
		</script>

		<%@ include file="/WEB-INF/views/layout/footer.jsp" %>