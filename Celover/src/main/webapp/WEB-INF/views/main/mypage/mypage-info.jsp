<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/main/mypage/layout/header.jsp"%>

<!-- 마이페이지 본문 영역 -->
<div class="col-xl-10" id="myPageContent">

	<div id="editMyInfoArea">
		<p class="fw-bolder" style="height: 48px; font-size: 1.5rem; line-height: 64px;">회원 정보 수정</p>
		<hr>
		<div class="container">
			<div class="row mb-3">
				<label for="userId" class="col-sm-3 col-form-label">아이디</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="userId" value="${principal.user.userId }" disabled> <sub style="opacity: 0;">&nbsp;</sub>
				</div>
			</div>
			<div class="row mb-3">
				<label for="nickname" class="col-sm-3 col-form-label">닉네임</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="nickname" value="${principal.user.nickname }"> <sub style="opacity: 0;">&nbsp;</sub>
				</div>
			</div>
			<c:if test="${empty principal.user.provider }">
				<div class="row mb-3">
					<label for="changePassword" class="col-sm-3 col-form-label">비밀번호 변경</label>
					<div class="col-sm-9">
						<button type="button" class="btn btn-warning" id="changePassword" data-bs-toggle="modal" data-bs-target="#changePasswordModal">비밀번호 변경</button>
					</div>
				</div>
				<br>


				<!-- Modal -->
				<div class="modal fade" id="changePasswordModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="staticBackdropLabel">비밀번호 변경</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<h5>비밀번호 재확인</h5>
								<sup>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.</sup>
								<hr style="opacity: 0.25">
								<div>
									<div class="row mb-3">
										<label for="password" class="col-sm-3 col-form-label">비밀번호</label>
										<div class="col-sm-9">
											<input type="password" class="form-control password" id="password"> <sub style="opacity: 0;">&nbsp;</sub>
										</div>
									</div>
									<div class="row mb-3">
										<label for="newPassword" class="col-sm-3 col-form-label">새 비밀번호</label>
										<div class="col-sm-9">
											<input type="password" class="form-control password" id="newPassword"> <sub style="opacity: 0;">&nbsp;</sub>
										</div>
									</div>
									<div class="row mb-3">
										<label for="newPassword2" class="col-sm-3 col-form-label">새 비밀번호 확인</label>
										<div class="col-sm-9">
											<input type="password" class="form-control password" id="newPassword2"> <sub style="opacity: 0;">&nbsp;</sub>
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
								<button type="button" id="submitChangePwd" class="btn btn-primary" disabled>변경하기</button>
							</div>
						</div>
					</div>
				</div>

			</c:if>
			<div class="row mb-3">
				<label for="phone" class="col-sm-3 col-form-label">전화번호</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="phone" value="${principal.user.phone }" placeholder="010-1234-5678" maxlength="13" oninput="autoHyphen(this)"> <sub style="opacity: 0;">&nbsp;</sub>
				</div>
			</div>
			<div class="row mb-3" id="genderArea">
				<input type="hidden" id="hiddenGender" value="${principal.user.gender}"> <label class="col-sm-3 col-form-label">성별</label>
				<div class="col-sm-9 d-flex justify-content-between">
					<div class="form-check-inline">
						<label class="form-check-label"> <input id="maleGender" type="radio" class="form-check-input" name="optradio" value="m"> 남성
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input id="femaleGender" type="radio" class="form-check-input" name="optradio" value="f"> 여성
						</label>
					</div>
					<div class="form-check-inline disabled">
						<label class="form-check-label"> <input id="noGender" type="radio" class="form-check-input" name="optradio" value="n"> 선택안함
						</label>
					</div>
				</div>
			</div>
			<br>
			<div class="row mb-3">
				<label for="datePicker" class="col-sm-3 col-form-label">생년월일</label>
				<div class="col-sm-9">
					<div class="input-group mb-3">
						<input type="hidden" id="hiddenBirth" value="${principal.user.birth }"> <input type="text" id="datePicker" class="form-control"> <sub style="opacity: 0;">&nbsp;</sub>
					</div>
				</div>
			</div>
			<div class="row mb-3" style="margin-bottom: 0% !important;">
				<label for="email" class="col-sm-3 col-form-label">이메일</label>
				<div class="col-sm-9">
					<input type="email" class="form-control" id="email" value="${principal.user.email }"> <sub style="opacity: 0;">&nbsp;</sub>
				</div>
			</div>
			<hr>
			<div class="text-center">
				<input type="button" id="withdrawal" class="btn btn-danger" value="탈퇴하기"> <input type="button" id="submitChangeInfo" class="btn btn-success" value="변경하기">
			</div>
		</div>

	</div>

</div>
<!-- 마이페이지 본문 영역 끝 -->
<script type="text/javascript" src="/js/myPage-info.js"></script>
<%@ include file="/WEB-INF/views/main/mypage/layout/footer.jsp"%>

