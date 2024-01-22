<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<style>
#mainPage .container {
	max-width: 1140px !important;
}

.nav-item {
	width: 80px;
	text-align: center;
}

input:focus {
	outline: none;
}

.header_btn:hover {
	transform: scale(1.2);
}

.slick-slide {
	transform: scale(0.8);
	transition: all 0.4 ease-in-out;
	opacity: 0.5;
	z-index: 1;
}

.mainSlide img {
	margin: auto;
	max-width: 100%;
	width: 70%;
	aspect-ratio: 13/9;
	transition: all 0.4s ease-in-out;
}

.slick-center {
	transform: scale(1.2);
	opacity: 1;
	z-index: 1;
}

.quiz_worldCup label {
	margin: 10px 0px;
	font-size: 3vmin;
	font-weight: 800;
}

.quiz_worldCup label {
	cursor: pointer;
}

.quiz_worldCup label:hover {
	transform: scale(1.1);
}

.worldCup_Img {
	width: 450px;
	height: 400px;
}

.search-empty {
	width: 260px;
	height: auto;
	border: 0;
	border-radius: 20px;
	background-color: white;
	opacity: 0.9;
	position: relative;
	z-index: 100;
	margin-top: 15px;
	display: flex;
	/*justify-content: center;*/
}

.search-empty * {
	line-height: auto;
}

.searched-artist {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

.searched-artist *:hover {
	cursor: pointer;
}

li {
	list-style-type: none;
}

.artist-list:hover {
	transform: scale(1.05);
}

.container-fluid {
	padding: 0;
}

/* following list 영역 css */
.following-list-area .fl-content {
	position: relative;
	width: 100%;
	padding: 10px 40px;
	border: 1px solid hsl(0, 0%, 80%);
	border-radius: 15px;
}

.following-list-area .fl-content .arrow {
	position: absolute;
	top: 60px;
	padding: 0;
	background: transparent;
	border-radius: 15px;
	border: none;
	font-size: 24px;
	line-height: 26px;
	display: block;
	width: 30px;
	height: 30px;
}

.following-list-area .fl-content .arrow i {
	width: 18px;
	height: 18px;
}

.following-list-area .fl-content .prev {
	left: 7px;
}

.following-list-area .fl-content .next {
	right: 7px;
}

.following-list-area .fl-content .fl-list {
	max-width: 1024.8px;
	/*width: 390px;*/
	overflow: hidden;
}

.following-list-area .fl-content .fl-list ul {
	width: 9999px;
	margin: 0;
	padding: 0;
	list-style: none;
	transition: margin-left 250ms;
	font-size: 0;
}

.following-list-area .fl-content .fl-list ul li {
	display: inline-block;
	padding: 10px;
	width: 128.35px;
}

.following-list-area .fl-content .fl-list ul li img {
	width: 100%;
	height: auto;
	border-radius: 10px;
}

/* following list 영역 css 끝 */

/* 스타 순위 css */
.ranking-area>#selectedArea>div>select {
	width: auto;
	font-size: 16px;
}

.ranking-area>#selectedArea>div>#subcategory {
	opacity: 0;
}

.ranking-area .row-cols-md-3 {
	display: inline-flex;
}

.ranking-area .row-cols-md-3 .card:hover {
	cursor: pointer;
	box-shadow: 0px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.ranking-area .num-item {
	position: absolute;
	background-color: black;
	color: #fff;
	width: 58px;
	height: 62px;
	text-align: center;
	font-size: x-large;
}

.ranking-area .ranking {
	margin: 0px;
}

.ranking-area .change-info {
	height: 22px;
	margin: 0px;
	font-size: medium;
	font-weight: 600;
}

.ranking-area .change-info span {
	color: #fff;
}

.ranking-area .fa-chevron-up {
	color: red;
}

.ranking-area .fa-chevron-down {
	color: blue;
}

.ranking-area .card-body .card-title {
	font-weight: 600;
}

.ranking-area .card-body .card-text {
	font-size: small;
}

.ranking-area .card-body .card-text .fa-user {
	color: #C9CCD0;
}

.ranking-area .card-body .card-text span {
	color: black;
}

/* 스타 순위 css 끝 */

/* 스타가 남긴 글 css */
#starRemainArea {
	background-color: #dee2e6;
}

#srContent {
	overflow: auto;
}

#srContent>div {
	float: left;
}

#srTitle {
	width: 135px;
}

#srTitle * {
	color: black;
	display: inline-block;
}

#srTitle span:first-child {
	background-color: black;
	color: #fff;
	font-size: small;
	margin-bottom: 3%;
}

#srTitle strong {
	margin-bottom: 10%;
}

#srContent {
	position: relative;
	width: 1140px;
	border-radius: 15px;
}

#srList {
	width: 1005px;
	overflow: hidden;
}

#srList ul {
	height: 150px;
	width: 9999px;
	margin: 0;
	padding: 0;
	list-style: none;
	transition: margin-left 250ms;
	font-size: 0;
}

#srList ul li {
	display: inline-block;
	width: 302px;
	height: 145px;
	margin-left: 33px;
}

#srList .profile {
	float: left;
}

#srList .profile img {
	width: 54px;
	height: 54px;
	border-radius: 50%;
}

#srList .msg {
	background-color: #fff;
	border-radius: 50px;
	width: 208px;
	height: 96px;
	padding: 16px 30px;
	margin: 32px 0px 0px 44px;
}

#srList .msg:hover {
	cursor: pointer;
	box-shadow: 0px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#srList * {
	color: black;
}

#srList .msg .nickname {
	font-size: medium;
}

#srList .msg p {
	margin: 0px;
}

#srList .msg .content {
	font-size: medium;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

#srList .msg .date {
	font-size: small;
	color: #999;
}

/* 스타가 남긴 글 css 끝 */

/* 랭킹 3등 ~ 9등 css */
#rankingEtc .ranking-cards {
	margin: 0px;
	width: 100%;
}

#rankingEtc .ranking-card * {
	/*border: 1px solid black;*/
	
}

.ranking-cards .ranking-card {
	padding: 0;
	height: 130px;
}

.ranking-cards .ranking-card:hover {
	cursor: pointer;
	background-color: #e9ecef;
}

.ranking-card>div {
	height: 100%;
	padding: 0px;
	float: left;
}

.ranking-card .num-item {
	width: 8%;
}

.ranking-card .num-item .ranking {
	text-align: center;
	font-size: 28px;
	margin: 60% 0 0 0;
}

.ranking-card .num-item .change-info {
	margin: 0;
	text-align: center;
}

.ranking-card .num-item .change-info>span>.fa-chevron-up {
	color: red;
}

.ranking-card .num-item .change-info>span>.fa-chevron-down {
	color: blue;
}

.ranking-card .num-item .change-info>span>i>span {
	color: black;
}

.ranking-card .profile-item {
	width: 12%;
	align-items: center;
	display: flex;
	justify-content: center;
}

.ranking-card .profile-item img {
	border-radius: 50%;
	width: 100%;
	height: auto;
}

.ranking-card .box-item {
	width: 80%;
	align-items: center;
	display: flex;
	justify-content: center;
}

.ranking-card .box-item>div {
	padding: 5%;
	width: 100%;
}

.ranking-card .box-item>div>.card-text {
	font-size: small;
}

.ranking-card .box-item>div>.card-text .fa-user {
	color: #C9CCD0;
}

.ranking-card .box-item>div>.card-text span {
	color: black;
}

/* 랭킹 3등 ~ 9등 css */

/* 아티스트 추천 css */
#recommendArtist>h4 {
	padding: 0;
}

#recommendArtist .row .card {
	margin-bottom: 2%;
	border-radius: 5%;
	/*background-color: #f8f9fa;*/
	box-shadow: 0px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#recommendArtist .row .card:hover {
	transform: scale(1.05);
}

#recommendArtist .row .card a {
	color: black;
	text-decoration: none;
}

#recommendArtist .row .card a:hover {
	text-decoration: none;
}

#recommendArtist .row .card .profile-bg img {
	border-radius: 5% 5% 0% 0%;
	width: 100%;
	aspect-ratio: 1/1;
}

#recommendArtist .row .card .profile-img {
	position: relative;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 52.6px;
	height: 52.6px;
}

#recommendArtist .row .card .profile-img img {
	border-radius: 50%;
	box-sizing: content-box;
	border: 5px solid white;
	width: 100%;
	height: 100%;
}

#recommendArtist .row .card .profile-name {
	font-weight: 800;
	text-align: center;
	position: relative;
	bottom: 15px;
}

#recommendArtist .row .card .profile-name span {
	font-weight: 800;
	font-size: larger;
}

/* 아티스트 추천 css 끝 */
</style>


<!-- 메인페이지 영역 -->
<div class="container-fluid" id="mainPage">


	<!-- 캐러셀 영역 -->
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
	<!-- 캐러셀 영역 끝 -->

	<!--팬월드컵 모달-->
	<div class="modal fade" id="fan_worldCup" tabindex="-1" aria-labelledby="fan_worldCup" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">팬월드컵</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body worldCup">
					<center>
						<h1>23년 12월 1주차</h1>
						<p id="cal"></p>
						<img class="worldCup_Img" id="image" onclick="change(0)"> <img class="worldCup_Img" id="images" onclick="change(1)">
						<script>
                                text = "";
                                var images = [];
                                var sImages = [];

                                var cnt = 0;
                                var num = 0;
                                var sNum = 0;
                                var cnt2 = 0;

                                function show() {
                                    for (i = 0; i < 16; i++) {
                                        images[i] = "sampleImg/메인" + (i + 1) + ".jpg";
                                    }
                                    images.sort(function (a, b) {
                                        return 0.5 - Math.random()
                                    });
                                    showImg(num);
                                }

                                show();

                                function showImg(num) {
                                    document.getElementById('image').src = images[num];
                                    document.getElementById('images').src = images[num + 1];
                                    cnt2++;
                                }

                                function change(n) {
                                    if (cnt2 < 20) {
                                        cnt++;
                                        if (n == 0)
                                            sImages[sNum++] = images[num];
                                        else
                                            sImages[sNum++] = images[num + 1];
                                        num += 2;

                                        showImg(num);

                                        if (cnt == images.length / 2) {
                                            for (i = 0; i < sImages.length; i++) {
                                                images[i] = sImages[i];
                                                sImages[i] = null;
                                            }
                                            images.splice(cnt);
                                            cnt = 0;
                                            num = 0;
                                            sNum = 0;
                                            showImg(num);
                                        }
                                    }
                                }

                                document.getElementById('cal').innerHTML = text;

                                document.addEventListener('DOMContentLoaded', function () {
                                    var fanWorldCupModal = new bootstrap.Modal(document.getElementById('fan_worldCup'));

                                    fanWorldCupModal._element.addEventListener('hidden.bs.modal', function () {
                                        // 모달이 닫힐 때 변수 재설정
                                        cnt = 0;
                                        num = 0;
                                        sNum = 0;
                                        cnt2 = 0;
                                        text = ""; // 필요하면 텍스트 재설정
                                        document.getElementById('cal').innerHTML = text; // 필요하면 표시된 텍스트 업데이트
                                    });
                                });
                            </script>
					</center>
				</div>
			</div>
		</div>
	</div>
	<!-- 팬월드컵 모달 끝 -->


	<!--퀴즈 모달-->
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
	<!--퀴즈 모달 끝 -->



	<!-- following list 영역  -->
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
		<!-- following list 영역 끝  -->

		<br>

		<!-- 1, 2, 3 등 영역 -->
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
								<span> <!-- 순위 상승 --> <i class="fas fa-chevron-up"> <span>1</span>
								</i> <!-- 순위 유지 --> <!--
                                        <i class="fas fa-minus">
                                        </i>
                                    --> <!-- 순위 하락 --> <!-- 
                                        <i class="fas fa-chevron-down">
                                            <span>1</span>
                                        </i>
                                    -->
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
		<!-- 1, 2, 3 등 영역 끝 -->

		<br> <br>
		<!-- 스타가 남긴 글 -->
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
		<!-- 스타가 남긴 글 끝 -->

		<!-- 순위 (3등 ~ 9등) -->
		<div class="container" id="rankingEtc">
			<div class="row mt-5 ranking-cards">
				<div class="col-sm-6 ranking-card">
					<div class="num-item">
						<p class="ranking">4</p>
						<p class="change-info">
							<span> <i class="fas fa-chevron-down"> <span>1</span>
							</i> <!-- <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
							</i> <!-- <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
							</i> <!-- <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
							<span> <!-- <i class="fas fa-chevron-down">
                                        <span>1</span>
                                    </i> --> <i class="fas fa-minus"> <span></span>
							</i> <!--
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
							</i> <!-- <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
							</i> <!-- <i class="fas fa-minus">
                                        <span>1</span>
                                    </i>
                                    <i class="fas fa-chevron-down">
                                        <span></span>
                                    </i> -->
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
		<!-- 순위 (3등 ~ 9등) 끝 -->
		<br> <br>

		<!-- 아티스트 추천 -->
		<div class="container" id="recommendArtist">
			<h4 class="fw-bolder mt-5 mb-2">새로운 아티스트를 만나보세요!</h4>
			<br>
			<div class="row row-cols-1 row-cols-md-5 g-4">
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col">
					<div class="card">

						<a class="" href=""> <!-- 프로필 배경 -->
							<div class="profile-bg">
								<img src="https://phinf.wevpstatic.net/MjAyMzEwMTRfMjY5/MDAxNjk3MjA5OTkzOTM4.UEC7tLYqLUzOlW5cc54El--PEP81n8dkzDq9SFGLYqAg.dzsdCU9XcC192CtzOAPBU4H7z4non_mry7cytUJLbkcg.JPEG/f6336076-baa0-4097-a0a2-dc8e1dc90135.jpeg?type=f416_416" alt="">
							</div> <!-- 프로필 사진-->
							<div class="profile-img">
								<img src="https://phinf.wevpstatic.net/MjAyMzA5MjBfMjky/MDAxNjk1MTM1NjgzMDc4.bgN1B4pIYMfOVchSm9mrkt-8L8yXyVWjjK8Xywaa7Cog.tTiSoucynyTjgCYgALOgAKPlIVzdMk6yTsn13TrXgaUg.JPEG/987421d1-0863-44d9-863b-ec3de74e43fe.jpeg?type=s86">
							</div> <!-- 프로필 이름 -->
							<div class="profile-name">
								<span>SEVENTEEN</span>
							</div>
						</a>
					</div>
				</div>

			</div>
		</div>
		<!-- 아티스트 추천 끝 -->
	</div>

	<script>


        $(window).on('resize load', function () { // 창 사이즈 변경 또는 창이 로딩 됐을 때 실행
            /* following list 영역 */
            // following list => fl 
            let fl_width = 128.35; // image width
            let fl_list_length = $(".fl-list").width(); // list 영역의 동적 길이 
            let fl_count = fl_list_length / fl_width; // list 영역에서 보여줄 프로필의 갯수 1214 / 

            let fl_list = $('#flContent ul');
            let fl_list_items = $("#flContent ul li");

            let fl_position = 0;

            // shift left
            $("#flContent .prev").click(function () {
                fl_position += fl_width * fl_count;
                fl_position = Math.min(fl_position, 0)
                fl_list.css("margin-left", fl_position + 'px');
            });

            $("#flContent .next").click(function () {
                // shift right
                fl_position -= fl_width * fl_count;
                fl_position = Math.max(fl_position, - fl_width * (fl_list_items.length - fl_count));
                fl_list.css("margin-left", fl_position + 'px');
            });
            /* following list 영역 끝 */

            /* 스타가 남긴 글 script */
            // StarRemain => sr
            let sr_width = 335; // li width
            let sr_count = 3; // list 영역에서 보여줄 프로필의 갯수 

            let sr_list = $("#srContent ul")
            let sr_list_items = $("#srContent ul li");

            let sr_position = 0; // default position

            // shift left
            $("#srContent .prev").click(function () {
                sr_position += sr_width * sr_count;
                sr_position = Math.min(sr_position, 0)
                sr_list.css("margin-left", sr_position + 'px');
            })

            // shift right
            $("#srContent .next").click(function () {
                sr_position -= sr_width * sr_count;
                sr_position = Math.max(sr_position, - sr_width * (sr_list_items.length - sr_count));
                sr_list.css("margin-left", sr_position + 'px');
            })

            /* 스타가 남긴 글 script 끝 */
        })

        /* 대분류 카테고리가 선택됐을 때 함수 */
        function categoryChange(e) {
            let singer = ["전체", "래퍼", "밴드", "성악", "트로트", "아이돌", "팝", "발라드", "오페라"];
            let actor = ["전체", "아역 배우", "연극 배우", "뮤지컬 배우", "영화 배우", "드라마 배우", "성우", "에로 배우"];
            let sports = ["전체", "축구", "농구", "야구", "테니스", "골프", "배구", "격투기", "e스포츠", "기타"];
            let streamer = ["전체", "아프리카TV", "카카오TV", "치지직", "팝콘TV", "유튜브", "트위치"];

            let target = $("#selectedArea #subcategory");
            let elements;

            target.css("opacity", 1);
            if (e.value == "singer") {
                elements = singer;
                target.attr("disabled", false);
            } else if (e.value == "actor") {
                elements = actor;
                target.attr("disabled", false);
            } else if (e.value == "sports") {
                elements = sports;
                target.attr("disabled", false);
            } else if (e.value == "streamer") {
                elements = streamer;
                target.attr("disabled", false);
            } else {
                target.css("opacity", 0);
                target.attr("disabled", true);

            }

            target.empty();

            let optHtml = "";
            for (let i in elements) {
                optHtml += `<option value='` + elements[i] + `'>` + elements[i] + `</option>`;
            }
            target.append(optHtml);
        }
        /* 대분류 카테고리가 선택됐을 때 함수 끝 */

    </script>









	<!--script 부분-->
	<script>
        $(() => {
            $('.slick-track').css('z-index', '1');
        })
    </script>

	<!-- 메인페이지 배너 부분 -->
	<script>

        $(() => {
            $('.mainSlide').slick({
                infinite: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                speed: 500,
                autoplaySpeed: 1500,
                infinite: true,
                autoplay: true,
                centerMode: true,
                centerPadding: "0",
                pauseOnHover: true,
                draggable: true,
            });
        })

        $(() => {
            $('.slick-prev.slick-arrow').css("display", "none");
            $('.slick-next.slick-arrow').css("display", "none");
        });
    </script>

	<!--상단 검색창 관련-->
	<script>
        $(document).ready(() => {
            $('.search-empty').hide();
            $('.search-artist').keyup(() => {
                if ($('.search-artist').val().trim() === '') {
                    $('.search-empty').hide();
                } else {
                    $('.search-empty').show();
                }
            })
        })

    </script>

	<%@ include file="../layout/footer.jsp"%>