<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/mainPage.css">


<!-- 메인페이지 영역 -->
<div class="container-fluid" id="mainPage" style="height: 50vh">
	<div class="container" style="text-align:center;">
		<h1 class="m-5 fw-bolder">Spring boot ToyProject</h1>
	</div>

	<!--  캐러셀 영역 
	<div style="background-color: black;">

		<div style="height: 50px;"></div>

		<div class="mainSlide" style="vertical-align: bottom; height: auto; z-index: 1;">
			<div class="item">
				<a href="#"><img src="img/메인1.jpg" alt=""></a>
			</div>
			<div class="item">
				<a href="#"><img src="img/메인2.jpg" alt=""></a>
			</div>
			<div class="item">
				<a href="#"><img src="img/메인3.jpg" alt=""></a>
			</div>
			<div class="item">
				<a href="#"><img src="img/메인4.jpg" alt=""></a>
			</div>
			<div class="item">
				<a href="#"><img src="img/메인5.jpg" alt=""></a>
			</div>
			<div class="item">
				<a href="#"><img src="img/메인6.jpg" alt=""></a>
			</div>
		</div>

		<div class="quiz_worldCup" style="color: white;">
			<div class="container">
				<div class="d-flex">
					<div class="py-2 pe-4">
						<label for="" data-bs-toggle="modal" data-bs-target="#fan_worldCup">팬월드컵</label>
					</div>
					<div class="p-2">
						<label for="" data-bs-toggle="modal" data-bs-target="#quiz">Quiz</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	캐러셀 영역 끝

	팬월드컵 모달
	<div class="modal fade" id="fan_worldCup" tabindex="-1" aria-labelledby="fan_worldCup" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">팬월드컵</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body worldCup">
					<h1>23년 12월 1주차</h1>
					<p id="cal"></p>
					<img class="worldCup_Img" id="image" onclick="change(0)"> <img class="worldCup_Img" id="images" onclick="change(1)">
				</div>
			</div>
		</div>
	</div>
	팬월드컵 모달 끝


	퀴즈 모달
	<div class="modal fade" id="quiz" tabindex="-1" aria-labelledby="quiz" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Wekeend Quiz</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="container">

						<input class="form-control" type="text" value="아이유님의 데뷔일자는 0000년 00월 00일 000방송이다." readonly> <select class="form-select" name="" id="">
							<option value="">보기 중 선택</option>
							<option value="">2023년 12월 18일, YTN 8시 생방송</option>
							<option value="">2013년 12월 18일, MCountDown 생방송</option>
						</select> <input class="form-control" type="text" value="임영웅은 00000에 나와서 큰 인기를 얻었다." readonly> <select class="form-select" name="" id="">
							<option value="">보기 중 선택</option>
							<option value="">미스트롯</option>
							<option value="">미스터코리아</option>
							<option value="">미스코리아</option>
							<option value="">미스터트롯</option>
						</select>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">제출</button>
				</div>
			</div>
		</div>
	</div>
	퀴즈 모달 끝



	following list 영역 
	<div class="container-fluid">
		<div class="container following-list-area">
			<h4 class="fw-bolder mt-5 mb-2">나의 커뮤니티</h4>
			<div id="flContent" class="fl-content">
				<button class="arrow prev">
					<i class="fas fa-chevron-left"></i>
				</button>
				<div class="fl-list">
					<ul style="height: auto;">
						<li><img src="https://phinf.wevpstatic.net/MjAyMzExMDhfMTQ4/MDAxNjk5NDQzNzcwMzk0.QBRL1S6o4MmxF3gUEWaTICo1IWutB5DEe_oiuHV2L4kg.P6fsugKAoopx4kyQgGWEMR1g-W7PJc4tcBvI2poTqKcg.JPEG/9710002a-c591-4f18-8af1-8aa5b9259ae6.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzEwMzFfMjMy/MDAxNjk4NzU0MTI1ODc5.5MY8RsEF6iq2QhX2p7jmnmXX08pLePA0YovlWU9Vk3Mg.RqRBUl0yf10jMih6cTenKyvhT1n5yALtJuRPV56NAk0g.JPEG/5de3dea3-af19-4b56-bf59-bcf84c6a045b.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMjA3MDhfODMg/MDAxNjU3MjY4NTE5ODY5.cvhyg36fbH_R8Q_t8eeQnisXFiHGqaj7SaqJRiNhoI8g.vDMO5ZfRCfY4gTapIg5WcvdqXA04ZQY9KbD7z8yplaUg.PNG/14609814624005194fd4e1601-640f-4289-85f9-7a84b1148da6.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzEwMTlfMjk5/MDAxNjk3NzI2NTkzNTQy.Mb4l1gp_hGiNqX2DCs-VPGJfcchoRWUiOkPycrEwg20g.a2c7kNkrmqqddURnIpiuwnMekkZgXLxBAR76gYHGA_Ug.JPEG/0b93085a-6815-44b6-8af2-a046d2498760.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA0MDNfMTM5/MDAxNjgwNDkwNzkzODU2.aggPeNmDCWg_4nTlRTJOy-s8to_li9nKy9bhriiF1KMg.HMKhGWOTXJwpP_0qZ5gmRoC9BscedPnUWEMKJLOrygcg.PNG/760858019774622634c2fcfc1-94e0-474f-812b-f8bb5f59ddac.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA5MjhfMjQ5/MDAxNjk1ODcwMjczMjcx.kWfPxG5eeidAFqa9q2gYzprectz6fEpNBMPJjRx2LAIg.VXbg_PchIY5DP0gxN236dXb_acMj1JDSTcPC4mouF1Ug.JPEG/40e0b4b1-3601-4dd9-a77f-42d971551f33.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA1MjVfMjA3/MDAxNjg1MDE3OTYwOTY3.It-QCieMbJEupe9ljb03Bza8p8e7tWOUCMmuUgmqzy4g.fYICCBLYFGJxky_WUeM7dPjbhtYlqb6cykapIG_tE08g.PNG/18677645385851861a9ea80be-6fa8-42e9-bc2a-9d3700099e48.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA4MjJfMjc1/MDAxNjkyNzEyNTIzMTc3.dUOo7M7h8qn-C0X7u9Ou718ljJZLGxSv8lHmRSC6fWog.irQ474UFF2vw7hruRE6qmJbfsEG4clFR6_sPcHheSocg.PNG/7719739320887855418eb035c-5c7e-44e4-be43-8c4519755c84.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA5MjdfMjg1/MDAxNjk1ODAzODg2MTEy.XWFLO0TnyVcwgs9QJc3xqKLZSCu8d_Sh7_HLKodjS44g.rMcUBFQzfifWc16jveIB0w4C-b8W0rpwuUFqSsH52NUg.JPEG/68ac4834-a975-4736-b8e4-6e0ed6f7f412.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzExMDhfMTQ4/MDAxNjk5NDQzNzcwMzk0.QBRL1S6o4MmxF3gUEWaTICo1IWutB5DEe_oiuHV2L4kg.P6fsugKAoopx4kyQgGWEMR1g-W7PJc4tcBvI2poTqKcg.JPEG/9710002a-c591-4f18-8af1-8aa5b9259ae6.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzEwMzFfMjMy/MDAxNjk4NzU0MTI1ODc5.5MY8RsEF6iq2QhX2p7jmnmXX08pLePA0YovlWU9Vk3Mg.RqRBUl0yf10jMih6cTenKyvhT1n5yALtJuRPV56NAk0g.JPEG/5de3dea3-af19-4b56-bf59-bcf84c6a045b.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMjA3MDhfODMg/MDAxNjU3MjY4NTE5ODY5.cvhyg36fbH_R8Q_t8eeQnisXFiHGqaj7SaqJRiNhoI8g.vDMO5ZfRCfY4gTapIg5WcvdqXA04ZQY9KbD7z8yplaUg.PNG/14609814624005194fd4e1601-640f-4289-85f9-7a84b1148da6.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzEwMTlfMjk5/MDAxNjk3NzI2NTkzNTQy.Mb4l1gp_hGiNqX2DCs-VPGJfcchoRWUiOkPycrEwg20g.a2c7kNkrmqqddURnIpiuwnMekkZgXLxBAR76gYHGA_Ug.JPEG/0b93085a-6815-44b6-8af2-a046d2498760.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA0MDNfMTM5/MDAxNjgwNDkwNzkzODU2.aggPeNmDCWg_4nTlRTJOy-s8to_li9nKy9bhriiF1KMg.HMKhGWOTXJwpP_0qZ5gmRoC9BscedPnUWEMKJLOrygcg.PNG/760858019774622634c2fcfc1-94e0-474f-812b-f8bb5f59ddac.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA5MjhfMjQ5/MDAxNjk1ODcwMjczMjcx.kWfPxG5eeidAFqa9q2gYzprectz6fEpNBMPJjRx2LAIg.VXbg_PchIY5DP0gxN236dXb_acMj1JDSTcPC4mouF1Ug.JPEG/40e0b4b1-3601-4dd9-a77f-42d971551f33.jpeg?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA1MjVfMjA3/MDAxNjg1MDE3OTYwOTY3.It-QCieMbJEupe9ljb03Bza8p8e7tWOUCMmuUgmqzy4g.fYICCBLYFGJxky_WUeM7dPjbhtYlqb6cykapIG_tE08g.PNG/18677645385851861a9ea80be-6fa8-42e9-bc2a-9d3700099e48.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA4MjJfMjc1/MDAxNjkyNzEyNTIzMTc3.dUOo7M7h8qn-C0X7u9Ou718ljJZLGxSv8lHmRSC6fWog.irQ474UFF2vw7hruRE6qmJbfsEG4clFR6_sPcHheSocg.PNG/7719739320887855418eb035c-5c7e-44e4-be43-8c4519755c84.png?type=f416_416"></li>
						<li><img src="https://phinf.wevpstatic.net/MjAyMzA5MjdfMjg1/MDAxNjk1ODAzODg2MTEy.XWFLO0TnyVcwgs9QJc3xqKLZSCu8d_Sh7_HLKodjS44g.rMcUBFQzfifWc16jveIB0w4C-b8W0rpwuUFqSsH52NUg.JPEG/68ac4834-a975-4736-b8e4-6e0ed6f7f412.jpeg?type=f416_416"></li>

					</ul>
				</div>
				<button class="arrow next">
					<i class="fas fa-chevron-right"></i>
				</button>
			</div>
		</div>
		following list 영역 끝 

		<br>

		1, 2, 3 등 영역
		<div class="container ranking-area">
			<div class="mt-4 mb-3" id="selectedArea">
				<div class="form-group">
					<select class="form-select float-start" style="margin-right: 15px;" onchange="categoryChange(this);">
						<option value="all">전체</option>
						<option value="singer">가수</option>
						<option value="actor">배우</option>
						<option value="sports">스포츠</option>
						<option value="streamer">방송인</option>
						<option>기타</option>
					</select> <select class="form-select" id="subcategory" disabled></select>
				</div>
			</div>

			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col">

					<div class="card h-100">
						<div class="num-item">
							<p class="ranking">1</p>
							<p class="change-info">
								<span> 순위 상승 <i class="fas fa-chevron-up"> <span>1</span>
								</i> 순위 유지 
                                        <i class="fas fa-minus">
                                        </i>
                                    순위 하락 
                                        <i class="fas fa-chevron-down">
                                            <span>1</span>
                                        </i>
                                   
								</span>
							</p>
						</div>
						<img src="//img1.daumcdn.net/thumb/S700x420/?fname=https://t1.daumcdn.net/cafe_image/fancafe/2103/임영웅 판.png" alt="">
						<div class="card-body text-left">
							<h5 class="card-title">임영웅</h5>
							<p class="card-text">
								<i class="fas fa-medal" style="color: gold;"> <span> 가수 1등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 20,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>

				<div class="col">


					<div class="card h-100">
						<div class="num-item">
							<p class="ranking">1</p>
							<p class="change-info">
								<span> <i class="fas fa-chevron-down"> <span>1</span>
								</i>
								</span>
							</p>
						</div>
						<img src="//img1.daumcdn.net/thumb/S700x420/?fname=https://t1.daumcdn.net/cafe_image/fancafe/1911/박서진 판.png" alt="">
						<div class="card-body text-left">
							<h5 class="card-title">박서진</h5>
							<p class="card-text">
								<i class="fas fa-medal" style="color: silver;"> <span> 가수 2등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 14,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>

				<div class="col">

					<div class="card h-100">
						<div class="num-item">
							<p class="ranking">3</p>
							<p class="change-info">
								<span> <i class="fas fa-minus"> <span></span>
								</i>
								</span>
							</p>
						</div>
						<img src="//img1.daumcdn.net/thumb/S700x420/?fname=https://t1.daumcdn.net/cafe_image/fancafe/2105/정동원 판.png" alt="">
						<div class="card-body text-left">
							<h5 class="card-title">정동원</h5>
							<p class="card-text">
								<i class="fas fa-medal" style="color: #cd7f32;"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
		1, 2, 3 등 영역 끝

		<br> <br>
		스타가 남긴 글
		<div class="mt-4 p-5 text-white rounded" id="starRemainArea">
			<div class="container">
				<div id="srContent" class="sr-content">
					<div id="srTitle">
						<span>&nbsp;FROM. STAR&nbsp;</span> <br> <span> 공식 팬 카페 </span> <br> <strong>스타가 남긴 글</strong> <br>
						<button class="btn btn-light prev">
							<i class="fas fa-chevron-left"></i>
						</button>
						<button class="btn btn-light next">
							<i class="fas fa-chevron-right"></i>
						</button>
					</div>
					<div id="srList">
						<ul>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">1위니 맛점했어요??asdfasdfasdfasdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">2위니 맛점했어요??asdfasdfasdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">3위니 맛점했어요??asdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">4위니 맛점했어요??asdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">5위니 맛점했어요??asdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">6위니 맛점했어요??asdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
							<li>
								<div class="profile">
									<img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
								</div>
								<div class="msg">
									<strong class="nickname">원호</strong>
									<p class="content">7위니 맛점했어요??asdf</p>
									<p class="date">2023.12.09</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		스타가 남긴 글 끝

		순위 (3등 ~ 9등)
		<div class="container" id="rankingEtc">
			<div class="row mt-5 ranking-cards">
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">4</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down"> <span>1</span>
							</i> <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/202311/바다 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">바다</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">5</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-up"> <span>1</span>
							</i> <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/202308/방장 라라 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">라라</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">6</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down"> <span>1</span>
							</i> <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/2002/뽀선희 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">뽀선희</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 4등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 9,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">7</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down">
                                        <span>1</span>
                                    </i> <i class="fas fa-minus"> <span></span>
							</i> 
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/202308/방장 라라 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">정동원</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">7</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down"> <span>1</span>
							</i> <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/202308/방장 라라 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">정동원</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">7</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down"> <span>1</span>
							</i> <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i>
							</span>
						</p>
					</div>
					<div class="profile-item">
						<img src="https://t1.daumcdn.net/cafe_image/fancafe/202308/방장 라라 응.png" alt="">
					</div>
					<div class="box-item">
						<div>
							<h5 class="card-title">정동원</h5>
							<p class="card-text">
								<i class="fas fa-medal"> <span> 가수 3등 </span>
								</i> &nbsp; <i class="fas fa-user"> <span> 7,000 </span>
								</i>
							</p>

						</div>
					</div>
				</div>
			</div>
		</div>
		순위 (3등 ~ 9등) 끝
		<br> <br>

		아티스트 추천
		<div class="container" id="recommendArtist">
			<h4 class="fw-bolder mt-5 mb-2">새로운 아티스트를 만나보세요!</h4>
			<br>
			<div class="row row-cols-1 row-cols-md-5 g-4">
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> 프로필 배경
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> 프로필 사진
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> 프로필 이름
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>

			</div>
		</div>
		아티스트 추천 끝
	</div> -->
</div>

<script type="text/javascript" src="/js/mainPage.js"></script>

<%@ include file="/WEB-INF/views/layout/footer.jsp"%>