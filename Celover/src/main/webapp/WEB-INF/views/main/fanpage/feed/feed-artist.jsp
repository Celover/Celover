<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/feedmain.css">
<body>
    <!--피드페이지 시작-->
    <!--피드 nav 시작-->
    <div class="container-fluid feedPage" >
        <div class="col" style="height: 50px; background-color: gray;">
            <ul class="nav justify-content-center" style="list-style: none; height: auto; line-height: 50px;">
                <li>
                    <a href="/fanpage/main">Feed</a>
                </li>
                <li>
                    <a href="/fanpage/artist">Aritst</a>
                </li>
                <li>
                    <a href="/fanpage/media">Media</a>
                </li>
                <li>
                    <a href="/fanpage/schedule">Schedule</a>
                </li>
                <li>
                    <a href="/fanpage/shop">Shop</a>
                </li>
            </ul>
        </div>
    </div>
    <!--피드 nav 종료-->

    <!-- 스타가 남긴 글 -->
    <div class="jumbotron jumbotron-fluid" id="star_remain_area" >
        <div class="container-fluid" style="background: linear-gradient(to bottom, gray, rgb(247, 247, 247));">
            <div id="sr_content" class="sr_content">
                <div id="sr_title">
                    <span>&nbsp;FROM. STAR&nbsp;</span>
                    <br>
                    공식 팬 카페
                    <br>
                    <strong>스타가 남긴 글</strong>
                    <br>
                    <button class="btn btn-light prev"><i class="fas fa-chevron-left"></i></button>
                    <button class="btn btn-light next"><i class="fas fa-chevron-right"></i></button>
                </div>
                <div id="sr_list">
                    <ul>
                        <li>
                            <div class="profile">
                                <img src="https://t1.daumcdn.net/cafe_image/fancafe/2103/원호 응.png">
                            </div>
                            <div class="msg">
                                <strong class="nickname">원호</strong>
                                <p class="content">1위니 맛점했어요??asdf</p>
                                <p class="date">2023.12.09</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <br><br><br><br>
        </div>
    </div>
    <!-- 스타가 남긴 글 끝 -->

    <!--피드 List 시작-->
    <div class="container-fluid" id="feedList" style="padding-left: 125px !important; padding-right: 125px !important; margin-top: -50px !important;">
        <div class="row">
            <!--좌측 피드 작성 및 리스트 시작-->
            <div class="col-md-8 main-feed-left" style="padding-right: 30px;">
                <div class="createFeed" data-bs-toggle="modal" data-bs-target="#feed">
                    <div class="row">
                        <div class="col-10 feed_create_icon">
                            <img src="https://cdn-v2pstatic.weverse.io/wev_web_fe/p/2_14_0/public/static/media/icon_empty_profile.b0996808ea97350978a4.png"
                                alt="">
                            <span class="feedcoment">여러분의 소중한 아티스트에게 피드를 남겨보세요.</span>
                        </div>
                        <div class="col-2 text-center feed_create_icon2" style="line-height: 60px;">
                            <i class="bi bi-camera"></i>
                            <i class="bi bi-camera-video"></i>
                        </div>
                    </div>
                </div>

                <br>
                <!--피드 리스트 시작-->

                <div class="row feed-list" style="margin-bottom: 20px;">
                    <div class="col-1 feed-user-titleimg">
                        <img src="/Img/메인13.jpg" alt="">
                    </div>
                    <div class="col-3 feed-user-name">
                        <div class="feed-user-name-main">
                            <span style="font-weight: bolder;">21jong</span>
                        </div>
                        <div class="feed-createdate">
                            <span>01.05.11:42</span>
                        </div>
                    </div>
                    <div class="col-12 feed-user-content" data-bs-toggle="modal" data-bs-target="#click-feed">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore repellendus
                        recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam. Autem, amet est
                        perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                    </div>
                    <div class="col-12 feed-like-coment-etc">
                        <div class="row">
                            <div class="col-2 feed-like">
                                <img class="love" src="/Img/하트.png" alt="">
                                <img class="loved" src="/Img/하트눌림.png" alt="" hidden>
                                <span>10K+</span>
                            </div>
                            <div class="col-2 feed-coment" data-bs-toggle="modal" data-bs-target="#click-feed">
                                <img src="/Img/댓글.png" alt="">
                                <span>3.5K+</span>
                            </div>
                            <div class="col-8 text-end feed-etc">
                                <div class="etc_area" style="margin: 0px;">
                                    <i class="bi bi-three-dots-vertical">
                                        <div class="msgbox">
                                            <ul>
                                                <li data-bs-toggle="modal" data-bs-target="#feed-delete">
                                                    <i class="fas fa-trash-can" style="color: red;"></i> 삭제하기
                                                </li>
                                                <li data-bs-toggle="modal" data-bs-target="#exclamation">
                                                    <i class="fa-solid fa-triangle-exclamation" style="color: red;"></i>
                                                    신고하기
                                                </li>
                                                <li>
                                                    <i class="fas fa-user-slash"></i> 팔로우 취소
                                                </li>
                                            </ul>
                                        </div>
                                    </i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--각종 모달 시작-->

                <!--1. 삭제하기 시작-->
                <!-- Modal -->
                <div class="modal fade" id="feed-delete" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" style="padding: 50px;">
                        <div class="modal-content" style="line-height: 80px; border-radius: 20px;">
                            <div class="modal-body delete-message text-center">
                                해당 게시글을 삭제하시겠습니까?
                            </div>
                            <div class="modal-footer" style="padding: 5px;">
                                <div class="row text-center" style="width: 100%; height: 30px; line-height: 30px;">
                                    <div class="col-6 delete-cancel" data-bs-dismiss="modal">취소</div>
                                    <div class="col-6 delete-agree">확인</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--1. 삭제하기 종료-->

                <!--2. 신고하기 시작-->
                <div class="modal fade" id="exclamation" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" style="padding: 50px;">
                        <div class="modal-content" style="line-height: 80px; border-radius: 20px;">
                            <div class="modal-body delete-message text-center">
                                해당 게시글을 신고하시겠습니까?
                            </div>
                            <div class="modal-footer" style="padding: 5px;">
                                <div class="row text-center" style="width: 100%; height: 30px; line-height: 30px;">
                                    <div class="col-6 delete-cancel" data-bs-dismiss="modal">취소</div>
                                    <div class="col-6 delete-agree" data-bs-toggle="modal"
                                        data-bs-target="#feed-delete-detail">신고</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="feed-delete-detail" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style="line-height: 50px; border-radius: 20px;">
                            <div class="modal-body">
                                <div class="row report-detail">
                                    <div class="col-12 text-center">
                                        <span>신고사유 선택</span>
                                    </div>
                                    <div class="col-12 report-detail-option" style="padding-bottom: 0px;">
                                        <form>
                                            <input type="radio" id="option1" name="options">
                                            <label for="option1">이용 가이드라인 위반</label>
                                            <br>
                                            <input type="radio" id="option2" name="options">
                                            <label for="option2">선정 및 폭력성 관련</label>
                                            <br>
                                            <input type="radio" id="option3" name="options">
                                            <label for="option3">스팸, 광고, 도배 관련</label>
                                        </form>
                                    </div>
                                    <div class="col-12 report-detail-option"
                                        style="padding-top: 0px; padding-bottom: 0px;">
                                        <p style="margin: 0px; padding: 0px;">신고내용</p>
                                        <textarea name="" id="" cols="55" rows="2" style="resize: none;"
                                            placeholder="&nbsp;&nbsp;&nbsp;위 신고 사유에 대한 자세한 신고내용을 작성해주세요."></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 5px;">
                                <div class="row text-center" style="width: 100%; height: 30px; line-height: 30px;">
                                    <div class="col-6 delete-cancel" data-bs-dismiss="modal">취소</div>
                                    <div class="col-6 delete-agree">신고</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--2. 신고하기 종료-->

                <!--3. 피드 디테일 시작-->
                <div class="modal fade" id="click-feed" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content" style="line-height: 50px; border-radius: 20px;">
                            <div class="modal-body" style="padding-bottom: 5px;">
                                <div class="row click-feed">
                                    <div class="col-8 click-feed-detail border1-1" style="float: left;">
                                        <div class="row">
                                            <div class="col-1 click-feed-userimg ">
                                                <img src="/Img/메인13.jpg" alt="">
                                            </div>
                                            <div class="col-3">
                                                <div class="row" style="height: 50px;">
                                                    <div class="col-12 feed-user-name-main"
                                                        style="height: 25px; line-height: 25px;">
                                                        <span style="font-weight: bolder;">21jong</span>
                                                    </div>
                                                    <div class="col-12 feed-createdate"
                                                        style="height: 25px; line-height: 25px;">
                                                        <span>01.05.11:42</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-8 text-end feed-etc">
                                                <div class="etc_area" style="margin: 0px;">
                                                    <i class="bi bi-three-dots-vertical">
                                                        <div class="msgbox reply-option1">
                                                            <ul>
                                                                <li data-bs-toggle="modal" data-bs-target="#feed-delete">
                                                                    <i class="fas fa-trash-can" style="color: red;"></i>삭제하기
                                                                </li>
                                                                <li data-bs-toggle="modal" data-bs-target="#exclamation">
                                                                    <i class="fa-solid fa-triangle-exclamation" style="color: red;"></i>
                                                                    신고하기
                                                                </li>
                                                                <li>
                                                                    <i class="fas fa-user-slash"></i> 팔로우 취소
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 feed-content-1" style="overflow: scroll; height: 350px;">
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat inventore
                                            repellendus
                                            recusandae nam, iusto eaque ducimus. Nobis provident quisquam aperiam.
                                            Autem, amet est
                                            perspiciatis eveniet fugit eos iusto necessitatibus ullam.
                                        </div>
                                    </div>
                                    <div class="col-4 border1-2">
                                        <!--피드 디테일 내 댓글 시작 -->
                                        <div class="row">
                                            <div class="col-2 click-feed-userimg" style="text-align: center;">
                                                <img src="/Img/메인13.jpg" alt="" style="height: 30px; width: 30px;">
                                            </div>
                                            <div class="col-3">
                                                <div class="row" style="height: 50px;">
                                                    <div class="col-12 feed-user-name-main"
                                                        style="height: 25px; line-height: 25px; padding-left: 0px;">
                                                        <span
                                                            style="font-weight: bolder; font-size: smaller;">21jong</span>
                                                    </div>
                                                    <div class="col-12 feed-createdate"
                                                        style="height: 25px; line-height: 25px; padding-left: 0px;">
                                                        <span style="font-size: smaller;">01.05.11:42</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-7 text-end feed-etc">
                                                <div class="etc_area" style="margin: 0px;">
                                                    <i class="bi bi-three-dots-vertical">
                                                        <div class="msgbox feed-reply" style="margin-left: 80px;">
                                                            <ul>
                                                                <li data-bs-toggle="modal" data-bs-target="#feed-delete">
                                                                    <i class="fas fa-trash-can" style="color: red;"></i> 삭제하기
                                                                </li>
                                                                <li data-bs-toggle="modal" data-bs-target="#exclamation">
                                                                    <i class="fa-solid fa-triangle-exclamation" style="color: red;"></i>
                                                                    신고하기
                                                                </li>
                                                                <li>
                                                                    <i class="fas fa-user-slash"></i> 팔로우 취소
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 feed-content-1"
                                            style="padding-left: 50px; line-height: 20px; padding-top: 0px;">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo soluta
                                            officia recusandae, nulla suscipit, omnis aliquid corrupti sunt ipsum quas
                                            molestiae sed aspernatur labore rerum provident nam? Sit, porro odit.
                                        </div>
                                        <!--피드 디테일 내 댓글 종료 -->

                                    </div>
                                    <div class="col-8 border2-1">
                                        <br>
                                    </div>
                                    <div class="col-4 border2-2 text-center">
                                        <input type="text" id="chatMessage2" placeholder="댓글을 입력해주세요.">
                                        <button id="createChat2" class="btn btn-sm btn-success" disabled>등록</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--3. 피드 디테일 종료-->

                <!--각종 모달 종료-->


                <!--피드 리스트 종료-->

            </div>

            <!--피드작성 모달 시작-->
            <div class="modal fade" id="feed" tabindex="-1" aria-labelledby="feed" aria-hidden="true">
                <!--<div class="modal fade" id="feed" tabindex="-1" aria-labelledby="feed" aria-hidden="true">-->
                <div class="modal-dialog modal-lg">
                    <div class="modal-content create_feed_mainmodal">
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-12 text-center" style="margin-top: 20px;">
                                        <span id="feed-header-1"><strong>팬피드 쓰기</strong></span>
                                        <br>
                                        <span id="feed-header-2">21Jong</span>
                                    </div>
                                    <div class="col-12 feed-textbox">
                                        <textarea name="" id="feedcontent" style="width: 100%;" rows="20"
                                            placeholder="팬 여러분들의 관심을 남겨주세요..." minlength="1"
                                            maxlength="1000"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="feedcontentbtn" class="btn btn-success" disabled>제출</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--피드작성 모달 종료-->

            <!--좌측 피드 작성 및 리스트 종료-->

            <!--우측 아티스트 사진, 공지사항, 채팅창 시작-->
            <div class="col-6 col-md-4 main-feed-right" style="padding-left: 30px;">

                <!--아티스트 메인 사진 시작-->
                <img class="feedImg"
                    src="https://phinf.wevpstatic.net/MjAyMzExMDhfMTQ4/MDAxNjk5NDQzNzcwMzk0.QBRL1S6o4MmxF3gUEWaTICo1IWutB5DEe_oiuHV2L4kg.P6fsugKAoopx4kyQgGWEMR1g-W7PJc4tcBvI2poTqKcg.JPEG/9710002a-c591-4f18-8af1-8aa5b9259ae6.jpeg?type=f706_740"
                    alt="">
                <!--아티스트 메인 사진 종료-->

                <!--팬카페 공지사항 리스트 시작-->
                <div class="fan-notice">
                    <div class="row fan-notice-title">
                        <div class="col-1"><i class="bi bi-megaphone"></i></div>
                        <div class="col-9" style="line-height: 30px;">팬카페 공지사항</div>
                        <div class="col-2">
                            <a href="#" style="padding-left: 5px; color: gray;">
                                <i class="bi bi-caret-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="row fan-notice-list">
                        <div class="col-1"></div>
                        <div class="col-11 fan-notice-detail">
                            <a href="#">[Notice] CeLover 1기 서포터즈를 모집합니다. CeLover1기 서포터즈를 모집합니다.</a>
                        </div>
                    </div>
                </div>
                <!--팬카페 공지사항 리스트 종료-->

                <!--채팅장 시작-->
                <div class="container fan-chat">
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <strong>실시간 응원</strong>
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body fan-detail">
                                    <div class="col-12" style="padding-left: 10px; margin-bottom: 5px;">
                                        <i class="bi bi-chat-dots"></i>
                                        <span style="font-size: small; font-weight: bold;">실시간 응원 000개</span>
                                    </div>
                                    <div class="col-12 insertChat" style="height: auto;">
                                        <span class="insertChat-user">admin</span>
                                        <textarea id="chatMessage" rows="3"
                                            placeholder="응원메시지를 입력해주세요.&#13;&#10;아티스트에 대한 응원과 무관한 내용은&#13;&#10;글 삭제 및 계정 제제를 받을 수 있습니다. "
                                            style="width: 100%; border-width: 0px ; resize: none;" minlength="1"
                                            maxlength="300"></textarea>
                                        <hr style="margin: 0px; padding: 0px;">
                                        <div class="row" style="padding-top: 10px; padding-bottom: 10px;">
                                            <div class="col-12">
                                                <div style="float: right;">
                                                    <span id="chatCount">0</span>
                                                    <span>/</span>
                                                    <span style="color: gray;">300</span>
                                                    <button id="createChat" class="btn btn-sm btn-success"
                                                        disabled>등록</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--실제 채팅이 보여지는 자리-->
                                    <div class="chat-scroll" style="overflow: scroll; height: 300px; margin-top: 20px;">
                                        <div class="chat-content">
                                            <div class="row">
                                                <div class="col-4 chat-user">용진팍</div>
                                                <div class="col-8 chat-data text-center">
                                                    <span class="chat-time">2024-01-04 11:50</span>
                                                    <span class="chat-report">신고</span>
                                                </div>
                                            </div>
                                            <div class="chat-content-detail">
                                                원종님 힘내세요 저희 팬들은 항상 응원하고 있답니다 !!!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--채팅장 종료-->

    </div>
    <!--우측 아티스트 사진, 공지사항, 채팅창 종료-->

    <!--피드 List 끝-->



    <br>



    <!--피드페이지 종료-->

    <script>

        $(window).on('resize load', function () { // 창 사이즈 변경 또는 창이 로딩 됐을 때 실행
            /* following list 영역 */
            // following list => fl 
            let fl_width = 128.35; // image width
            let fl_list_length = $(".fl_list").width(); // list 영역의 동적 길이
            let fl_count = fl_list_length / fl_width; // list 영역에서 보여줄 프로필의 갯수 

            let fl_list = $('#fl_content ul');
            let fl_list_items = $("#fl_content ul li");

            let fl_position = 0;

            // shift left
            $("#fl_content .prev").click(function () {
                fl_position += fl_width * fl_count;
                fl_position = Math.min(fl_position, 0)
                fl_list.css("margin-left", fl_position + 'px');
            });

            $("#fl_content .next").click(function () {
                // shift right
                fl_position -= fl_width * fl_count;
                fl_position = Math.max(fl_position, - fl_width * (fl_list_items.length - fl_count));
                fl_list.css("margin-left", fl_position + 'px');
            });
            /* following list 영역 끝 */

            /* 스타가 남긴 글 script */
            // StarRemain => sr
            let sr_width = 20; // li width
            let sr_count = 4; // list 영역에서 보여줄 프로필의 갯수 

            let sr_list = $("#sr_content ul")
            let sr_list_items = $("#sr_content ul li");

            let sr_position = 0; // default position

            // shift left
            $("#sr_content .prev").click(function () {
                sr_position += sr_width * sr_count;
                sr_position = Math.min(sr_position, 0)
                sr_list.css("margin-left", sr_position + 'vw');
            })

            // shift right
            $("#sr_content .next").click(function () {
                sr_position -= sr_width * sr_count;
                sr_position = Math.max(sr_position, - sr_width * (sr_list_items.length - sr_count));
                sr_list.css("margin-left", sr_position + 'vw');
            })

            /* 스타가 남긴 글 script 끝 */
            /* 응원채팅창 script 시작 */
            $(document).ready(function () {
                const $chatMessage = $('#chatMessage');
                const $chatCount = $('#chatCount');
                const $createChatBtn = $('#createChat');

                $chatMessage.on('input', function () {
                    const currentCharCount = $chatMessage.val().length;
                    $createChatBtn.prop('disabled', currentCharCount === 0 || currentCharCount > 300);
                    $chatCount.text(currentCharCount);
                });
            });
            /* 응원채팅창 script 종료 */

            /*피드 댓글 시작*/
            $(document).ready(function () {
                const $chatMessage = $('#chatMessage2');
                const $chatCount = $('#chatCount2');
                const $createChatBtn = $('#createChat2');

                $chatMessage.on('input', function () {
                    const currentCharCount = $chatMessage.val().length;
                    $createChatBtn.prop('disabled', currentCharCount === 0 || currentCharCount > 300);
                    $chatCount.text(currentCharCount);
                });
            });
            /*피드 댓글 종료*/

            /*피드 작성 script 시작*/
            $(document).ready(function () {
                $('#feedcontent').keyup(function () {
                    var textLength = $(this).val().length;

                    if (textLength >= 1 && textLength <= 1000) {
                        $('#feedcontentbtn').prop('disabled', false);
                    } else {
                        $('#feedcontentbtn').prop('disabled', true);
                    }
                });
            });

            /*피드 작성 script 종료*/
            /*피드 리스트 하트 클릭 시작*/
            $(document).ready(() => {
                if ($('.loved').is(':hidden')) {
                    $('.love').on('click', () => {
                        $('.loved').removeAttr('hidden');
                        $('.love').attr('hidden', true);
                    })
                }
                if ($('.love').is(':hidden')) {
                    $('.loved').on('click', () => {
                        $('.loved').attr('hidden', true);
                        $('.love').removeAttr('hidden');
                    })
                }

            })
            /*피드 리스트 하트 클릭 종료*/
            /* 알람 관리 script 시작 */
            $(".etc_area > i").click(function (e) {
                e.stopPropagation();
                console.log(" ... 눌림");
                let msgbox = $(e.target).find(".msgbox");
                let state = $(e.target).find(".msgbox").css("display");

                $(".msgbox").hide();
                $(".msgbox").parent().css("background-color", "#fff");

                if (state == "none") {
                    $(e.target).css("background-color", "#e9ecef");
                    msgbox.show();
                } else {
                    $(e.target).css("background-color", "#fff");
                    msgbox.hide();
                }
            })

            $(document).click(function (e) {
                var msgbox = $(".etc_area > i > .msgbox");
                if (!msgbox.is(e.target) && !msgbox.has(e.target).length) {
                    msgbox.parent().css("background-color", "#fff")
                    msgbox.hide();
                }
            });
            /* 알람 관리 script 끝 */
        })

    </script>


<%@ include file="../../../layout/footer.jsp" %>

</body>
</html>