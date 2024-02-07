<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>


<!-- fontawesome -->
<link rel="stylesheet" href="/fontawesome-free-6.5.1-web/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bruno+Ace&family=Lobster&display=swap" rel="stylesheet">

<!-- momment.js 날짜 라이브러리  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/joinForm.css">

</head>
<body>
	<div class="container-fluid">

		<div id="createAccountArea" class="container d-flex align-items-center">
			<div class="m-auto">
				<div class="createAccountHeader">
					<a href="/"> <img id="logo" class="mb-3" style="height: 45px; width: auto" src="/img/로고-Bruno_Ace2.png">
					</a>
					<p class="sub-title text-secondary">Celover는 아티스트와 팬들의 소통을 위한 팬 커뮤니티 플랫폼입니다.</p>
				</div>
				<div class="create-account-body py-2 px-4">
					<div class="enroll-sns p-2">
						<p>소셜 로그인 추가정보 입력</p>
					</div>
					<div class="input-area">
						<div class="combine-area d-table">
							<div class="table-row">
								<div class="input-group table-cell">
									<span class="input-group-text success" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail">
                                                <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
                                                </path>
                                                <polyline points="22,6 12,13 2,6"></polyline>
                                            </svg> 
                                            <input type="hidden" id="hiddenUserId" value="${principal.username}">
                                            <input type="hidden" id="hiddenPassword" value="${principal.password}">
                                            <input type="text" class="form-control" id="email" placeholder="[선택] 비밀번호 분실 시 확인용 이메일" aria-label="userEmail" aria-describedby="basic-addon1">
									</span>
								</div>
							</div>
						</div>
						<div id="msgArea1" class="mt-1" style="text-align: left;">
							<span class="warning-message" id="email1">* 이메일: 이메일 주소가 정확한지 확인해 주세요. </span>
						</div>




						<div class="combine-area d-table mt-3">
							<div class="table-row">
								<div class="input-group table-cell">
									<span class="input-group-text top-span" id="basic-addon1" style="width: auto;"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg> <input type="text" class="form-control top-input" id="nickname" placeholder="닉네임" aria-label="userNickname" aria-describedby="basic-addon1">
									</span>
								</div>
							</div>

							<div class="table-row">
								<div class="input-group table-cell">
									<span class="input-group-text middle-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg> <input type="text" class="form-control middle-input" id="birth" placeholder="생년월일 8자리" maxlength="10" aria-label="userBirth" aria-describedby="basic-addon1">
									</span>
								</div>
							</div>

							<div class="table-row">
								<div class="input-group table-cell d-flex" id="chkArea">
									<div class="d-flex justify-content-center py-2" id="gender">
										<input type="radio" class="btn-check" name="gender" id="man" value="m" autocomplete="off" checked> <label class="btn btn-outline-secondary left-label" for="man">남자</label> <input type="radio" class="btn-check" name="gender" id="woman" value="w" autocomplete="off"> <label class="btn btn-outline-secondary right-label" for="woman">여자</label>
									</div>
									<div class="d-flex justify-content-center py-2" id="nationality">
										<input type="radio" class="btn-check" name="nationality" id="local" value="l" autocomplete="off" checked> <label class="btn btn-outline-secondary left-label" for="local">내국인</label> <input type="radio" class="btn-check" name="nationality" id="foreigner" value="f" autocomplete="off"> <label class="btn btn-outline-secondary right-label" for="foreigner">외국인</label>
									</div>
								</div>
							</div>


							<div class="table-row">
								<div class="input-group table-cell">
									<span class="input-group-text bottom-span" id="basic-addon1"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-smartphone">
                                                <rect x="5" y="2" width="14" height="20" rx="2" ry="2"></rect>
                                                <line x1="12" y1="18" x2="12.01" y2="18"></line>
                                            </svg> <input type="text" class="form-control" id="phone" placeholder="휴대전화번호" aria-label="userPhone" oninput="autoHyphen(this);" maxlength="13" aria-describedby="basic-addon1">
									</span>
								</div>
							</div>
						</div>
						<div id="msgArea2" class="mt-1" style="text-align: left;">
							<span class="warning-message" id="nickname1">* 닉네임: 필수 정보입니다. </span> <span class="warning-message" id="nickname2">* 닉네임: 3~16자의 영문 대소문자, 숫자, 밑줄(_)만 사용가능합니다.</span> <span class="warning-message" id="nickname3">* 닉네임: 사용할 수 없는 아이디입니다. 다른 아이디를 입력해주세요.</span> <span class="warning-message" id="birth1">* 생년월일: 필수 정보입니다. </span> <span class="warning-message" id="birth2">* 생년월일: 생년월일은 8자리 숫자로 입력해주세요. </span> <span class="warning-message" id="birth3">* 생년월일: 생년월일: 생년월일이 정확한지 확인해 주세요. </span> <span class="warning-message" id="phone1">* 휴대폰번호: 필수 정보입니다. </span> <span class="warning-message" id="phone2">* 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요. </span>
						</div>


						<div class="accordion mt-3" id="termsOfAuthentication">
							<div class="accordion-item">
								<div class="accordion-header">
									<div class="d-flex p-2">
										<div class="w-100" style="text-align: left;">
											<div style="padding-left: 10px;">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" style="zoom: 1.5; border-radius: 50%;"> <label class="form-check-label" for="flexCheckChecked" style="line-height: 33px;">
													<div class="d-flex">
														<div style="color: #09aa5c; font-size: small; font-weight: 700;">[필수]</div>
														<div style="font-weight: 700;">&nbsp;인증 약관 전체동의</div>
													</div>
												</label>

											</div>
										</div>
										<div class="flex-shrink-1">
											<button class="accordion-button collapsed" type="button" style="padding: 8px 10px;" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"></button>
										</div>
									</div>

								</div>
								<div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<div class="row" style="text-align: left; color: #666a73">
											<div class="col-sm-6 py-1">
												<i class="fas fa-check"></i> <a>개인정보 이용 <i class="fas fa-chevron-right"></i></a>
											</div>
											<div class="col-sm-6 py-1">
												<i class="fas fa-check"></i> <a>고유식별정보처리 <i class="fas fa-chevron-right"></i></a>
											</div>
											<div class="col-sm-6 py-1">
												<i class="fas fa-check"></i> <a>통신사 이용약관 <i class="fas fa-chevron-right"></i></a>
											</div>
											<div class="col-sm-6 py-1">
												<i class="fas fa-check"></i> <a>인증사 이용약관 <i class="fas fa-chevron-right"></i></a>
											</div>
											<div class="col-sm-6 py-1">
												<i class="fas fa-check"></i> <a>네이버 개인정보수집 <i class="fas fa-chevron-right"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="msgArea3" class="mt-1" style="text-align: left;">
							<span class="warning-message" id="terms">* 필수 약관에 모두 동의해 주세요. </span>
						</div>

						<div class="d-grid gap-2 mt-3">
							<button class="btn btn-success" id="submit" type="button">가입하기</button>
						</div>
					</div>

				</div>

			</div>

		</div>

	</div>
</body>

<script type="text/javascript" src="/js/additionalInfoForm.js"></script>

</html>