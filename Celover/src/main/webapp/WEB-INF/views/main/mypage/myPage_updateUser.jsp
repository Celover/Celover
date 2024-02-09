<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ include file="/WEB-INF/views/main/mypage/layout/myPage-header.jsp" %>

		<div class="col-xl-10" id="myPageContent">

			<div id="editMyInfoArea">
				<p class="fw-bolder" style="height: 48px; font-size: 1.5rem; line-height: 64px;">회원 정보 수정</p>
				<hr>
				<div class="container">
					<div class="row mb-3">
						<label for="userId" class="col-sm-3 col-form-label">아이디</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" id="userId" value="${principal.user.userId }"
								disabled> <sub style="opacity: 0;">&nbsp;</sub>
						</div>
					</div>
					<div class="row mb-3">
						<label for="nickname" class="col-sm-3 col-form-label">닉네임</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="nickname" value="${principal.user.nickname }">
							<sub style="opacity: 0;">&nbsp;</sub>
						</div>
					</div>
					<c:if test="${empty principal.user.provider }">
						<div class="row mb-3">
							<label for="changePassword" class="col-sm-3 col-form-label">비밀번호 변경</label>
							<div class="col-sm-9">
								<button type="button" class="btn btn-warning" id="changePassword" data-bs-toggle="modal"
									data-bs-target="#changePasswordModal">비밀번호 변경</button>
							</div>
						</div>
						<br>


						<!-- Modal -->
						<div class="modal fade" id="changePasswordModal" data-bs-backdrop="static"
							data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="staticBackdropLabel">비밀번호 변경</h1>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<h5>비밀번호 재확인</h5>
										<sup>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.</sup>
										<hr style="opacity: 0.25">
										<div>
											<div class="row mb-3">
												<label for="inputPassword3" class="col-sm-3 col-form-label">비밀번호</label>
												<div class="col-sm-9">
													<input type="password" class="form-control password" id="password">
													<sub style="opacity: 0;">&nbsp;</sub>
												</div>
											</div>
											<div class="row mb-3">
												<label for="newPassword" class="col-sm-3 col-form-label">새 비밀번호</label>
												<div class="col-sm-9">
													<input type="password" class="form-control password"
														id="newPassword"> <sub style="opacity: 0;">&nbsp;</sub>
												</div>
											</div>
											<div class="row mb-3">
												<label for="chkNewPassword" class="col-sm-3 col-form-label">새 비밀번호
													확인</label>
												<div class="col-sm-9">
													<input type="password" class="form-control password"
														id="newPassword2"> <sub style="opacity: 0;">&nbsp;</sub>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">취소하기</button>
										<button type="button" id="submitChangePwd" class="btn btn-primary"
											disabled>변경하기</button>
									</div>
								</div>
							</div>
						</div>

					</c:if>
					<div class="row mb-3">
						<label for="phone" class="col-sm-3 col-form-label">전화번호</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="phone" value="${principal.user.phone }"
								placeholder="010-1234-5678" maxlength="13" oninput="autoHyphen(this)"> <sub
								style="opacity: 0;">&nbsp;</sub>
						</div>
					</div>
					<div class="row mb-3" id="genderArea">
						<label for="gender" class="col-sm-3 col-form-label">성별</label>
						<div class="col-sm-9 d-flex justify-content-between">
							<div class="form-check-inline">
								<label class="form-check-label"> <input id="maleGender" type="radio"
										class="form-check-input" name="optradio" value="m"> 남성
								</label>
							</div>
							<div class="form-check-inline">
								<label class="form-check-label"> <input id="femaleGender" type="radio"
										class="form-check-input" name="optradio" value="f"> 여성
								</label>
							</div>
							<div class="form-check-inline disabled">
								<label class="form-check-label"> <input id="noGender" type="radio"
										class="form-check-input" name="optradio" value="n"> 선택안함
								</label>
							</div>
						</div>
					</div>
					<br>
					<div class="row mb-3">
						<label for="birth" class="col-sm-3 col-form-label">생년월일</label>
						<div class="col-sm-9">
							<div class="input-group mb-3">
								<input type="hidden" id="hiddenBirth" value="${principal.user.birth }"> <input
									type="text" id="datePicker" class="form-control"> <sub
									style="opacity: 0;">&nbsp;</sub>
							</div>
						</div>
					</div>
					<div class="row mb-3" style="margin-bottom: 0% !important;">
						<label for="email" class="col-sm-3 col-form-label">이메일</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" id="email" value="${principal.user.email }"> <sub
								style="opacity: 0;">&nbsp;</sub>
						</div>
					</div>
					<hr>
					<div class="text-center">
						<input type="button" class="btn btn-danger" value="탈퇴하기"> 
						<input type="button" id="submitChangeInfo"
							class="btn btn-success" value="변경하기">
					</div>
				</div>

			</div>

		</div>
		<script>

			$(function () {
				
				let originGender = "${principal.user.gender}";
				
				if(originGender == 'm'){
					$("#maleGender").prop("checked", true);	
				}else if(originGender == 'f'){
					$("#femaleGender").prop("checked", true);						
				}else{
					$("#noGender").prop("checked", true);
				}

				let $currentPwd = $("#password");
				let $newPwd = $("#newPassword");
				let $newPwd2 = $("#newPassword2");

				// 변경할 비밀번호 입력 함수
				$(document).on("keyup", "#newPassword", function () {

					let regexPw = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]).{8,}$/;

					$newPwd.next().removeClass(); // 초기화

					$newPwd2.trigger("keyup");

					if ($newPwd.val().length == 0) { // 값이 비어있을때

						return;

					} else { // 값이 들어있을때

						if (!regexPw.test($newPwd.val())) { // 유효성 검사 실패시
							$newPwd.next().text("비밀번호는 8자 이상이어야 하며, 숫자/영문자/특수문자를 모두 포함해야 합니다.");
							$newPwd.next().addClass("error");

						} else { // 유효성 검사 성공시

							$newPwd.next().addClass("success"); // 초기화
							$newPwd.next().text("좋은 비밀번호네요 !");

						}

					}

				})

				// 변경할 비밀번호 재입력 함수
				$(document).on("keyup", "#newPassword2", function () {

					$newPwd2.next().removeClass();

					if ($newPwd2.val().length == 0) {

						return;

					} else {

						if ($newPwd.val() != $newPwd2.val()) {
							$newPwd2.next().text("비밀번호가 일치하지 않습니다.");
							$newPwd2.next().addClass("error");
						} else {
							$newPwd2.next().addClass("success"); // 초기화
							$newPwd2.next().text("비밀번호가 일치합니다.")
						}
					}


				})

				// 비밀번호 변경 버튼 활성화 함수
				$(document).on("keyup", ".password", function () {

					if ($currentPwd.val().length && $newPwd.next().hasClass("success") && $newPwd2.next().hasClass("success")) {
						// 버튼 활성화
						$("#submitChangePwd").prop("disabled", false);
					} else {
						$("#submitChangePwd").prop("disabled", true);
					}

				})

				// 비밀번호 변경 버튼 클릭시
				$("#submitChangePwd").click(function () {
					let data = {
						currentPassword: $currentPwd.val(),
						newPassword: $newPwd.val(),
						newPassword2: $newPwd2.val()
					}

					$.ajax({
						url: "/mypage/users/password",
						type: "PUT",
						data: JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						dataType: "json",
						success: function (resp) {

							console.log(JSON.stringify(resp));

							if (resp.status === 500) {
								alert(resp.data);
							} else {
								alert("비밀번호가 변경되었습니다.");
								$newPwd.next().removeClass();
								$newPwd2.next().removeClass();
								$(".password").val("");
								$(".password").trigger("keyup");
								$('#changePasswordModal').modal('hide');
							}


						}, error: function (error) {
							console.log(error)
							console.log("비밀번호 변경 ajax 실패 !")
						}

					})
				})

				let originNickname = $("#nickname").val();

				// 닉네임에 키보드 입력이 감지됐을 경우
				$("#nickname").keyup(function () {

					let regexNickname = /^[a-zA-Z0-9_]{3,16}$/;
					let nickname = $(this).val();

					$("#nickname").next().removeClass(); // 메시지 초기화

					if (originNickname != nickname && nickname != "") { // 닉네임의 값이 변경됐을 경우 (처음과 다른 경우)

						if (!regexNickname.test(nickname)) { // 조건에 맞지 않는 경우

							$("#nickname").next().addClass("error");
							$("#nickname").next().text("3~16자의 영문 대소문자, 숫자, 밑줄(_)만 사용가능합니다.");

							return;
						}

						$.ajax({
							type: "GET",
							url: "/mypage/users/nickname/" + nickname + "/exists",
							success: function (result) {

								console.log(result);

								if (result) { // 존재하는 닉네임 인 경우
									$("#nickname").next().addClass("error");
									$("#nickname").next().text("이미 사용중인 닉네임입니다.");
								} else { // 존재하지 않는 경우
									$("#nickname").next().addClass("success");
									$("#nickname").next().text("사용가능한 닉네임입니다.");
								}


							},
							error: function () {
								console.log("닉네임 중복체크 ajax 실패!");
							}
						})
					} else {
						return;
					}
				})

				let originEmail = $("#email").val();

				// 이메일에 키보드 입력이 감지됐을 경우
				$("#email").keyup(function () {
					let email = $(this).val();
					let regexEmail = /^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/;

					$("#email").next().removeClass(); // 메시지 초기화

					if (originEmail != email && email != "") { // 닉네임의 값이 변경됐을 경우 (처음과 다른 경우)

						if (!regexEmail.test(email)) { // 조건에 맞지 않는 경우

							$("#email").next().addClass("error");
							$("#email").next().text("올바른 이메일 형식이 아닙니다.");

							return;
						}

						$.ajax({
							type: "GET",
							url: "/mypage/users/email/" + email + "/exists",
							success: function (result) {

								console.log(result);

								if (result) { // 존재하는 닉네임 인 경우
									$("#email").next().addClass("error");
									$("#email").next().text("이미 사용중인 이메일입니다.");
								} else { // 존재하지 않는 경우
									$("#email").next().addClass("success");
									$("#email").next().text("사용가능한 이메일입니다.");
								}


							},
							error: function () {
								console.log("이메일 중복체크 ajax 실패!");
							}
						})
					} else {
						return;
					}
				})
				
				$("#submitChangeInfo").click(function(){
					let data = {
						nickname: $("#nickname").val(),
						phone: $("#phone").val(),
						gender: $("#genderArea input:checked").val(),
						birth: $("#datePicker").val(),
						email: $("#email").val()
					}
					
					$.ajax({
						type:"PUT",
						url: "/mypage/users",
						data: JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						dataType: "json",
						success:function(resp){
							
							console.log(resp.data);
							
							console.log("회원정보 수정 ajax 통신 성공!")
							
							if (resp.status === 500) {
								alert(resp.data);
							} else {
								alert("회원정보가 변경되었습니다.");
								location.reload();
								
							}
							
						},error:function(error){
							console.log("회원정보 수정 ajax 통신 실패!")
						}
						
					})
				})
				
			})
		</script>


		<%@ include file="/WEB-INF/views/main/mypage/layout/myPage-footer.jsp" %>