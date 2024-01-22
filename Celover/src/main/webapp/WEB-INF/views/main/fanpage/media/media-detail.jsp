<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/mediadetail.css">
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

    <!-- ################################# 바디 시작 ################################# -->
    <div class="container-fluid media-body">
        <div class="row" style="height: auto;">
            <div class="col-9" style="height: auto;">
                <div class="row" style="height: auto;">
                    <div class="col-12 media-body-view" style="box-sizing: border-box; height: 560px;">
                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/OKcRvqJlQog?si=SmAxoPMHkxlbVkgT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <div class="media-body-title-header">
                        <div class="media-body-title-header-name">
                            <div class="row" style="padding: 10px;">
                                <div class="col-6"></div>
                                <div class="col-6 text-end" style="font-size: large;">
                                    <i class="fa-regular fa-thumbs-up"></i>
                                    <span>10K+</span>
                                    &nbsp;&nbsp;
                                    <i class="fa-solid fa-share"></i>
                                </div>
                            </div>
                        </div>
                        <div class="media-body-title-header-username-createdate">
                            <h2><strong>[21Jong] 올해우리의 고민상담 EP.06 | 원종2는 무얼 좋아할까?</strong></h2>
                        </div>
                    </div>
                    <div class="media-body-title-coment">
                        <div class="media-body-title-coment-main" style="height: 25px; width: 25px; float: left;">
                            <img class="media-body-title-coment-main-user-img" src="/img/user_profile_default.png" alt="">
                        </div>
                        <div>
                            <span class="media-body-username-createdate" style="font-weight: bolder;">21Jong</span>
                            <span>/</span>
                            <span class="media-body-username-createdate" style="color: gray; font-weight: bolder;">2024-01-15-11:28</span></div>
                    </div>
                    <div class="media-body-title-body-coment">
                        <i class="fa-solid fa-link"></i><a href="https://youtu.be/OKcRvqJlQog">https://youtu.be/OKcRvqJlQog</a>
                        <div class="media-body-title-hashTag">
                            <a href="#">#21Jong</a>
                            <a href="#">#1BellFam</a>
                            <a href="#">#2024년</a>
                            <a href="#">#임진년</a>
                            <a href="#">#1Jong무물</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 media-body-reply">
                <div class="col-12 media-body-reply-detail">
                    <div class="media-body-reply-detail-header">
                        <h4 style="height: auto; margin-top: 15px; margin-left: 15px;">
                            <strong><span>10</span>개의 댓글</strong>
                        </h4>
                    </div>
                    <!--media reply start-->
                    <div class="media-body-reply-detail-body">
                        <!--One reply-->
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <!--One reply-->
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                        <div class="row media-body-reply-detail-body-wrap">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-2 media-body-reply-detail-body-userImg">
                                        <img src="/img/user_profile_default.png" alt="">
                                    </div>
                                    <div class="col-6 media-body-reply-detail-body-title" style="padding: 0px;">
                                        <div class="media-reply-body-username" style="font-size: small;">OneBell</div>
                                        <div class="media-reply-body-create_date" style="font-size: small;">2024.01.15 13:42</div>
                                    </div>
                                    <div class="col-4 text-end" style="line-height: 35px;">
                                        <i class="bi bi-three-dots-vertical" style="background-color: rgb(255, 255, 255);"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 media-body-coment">
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, nostrum. Odio, aperiam. Ex, fuga, odit repellat earum blanditiis perspiciatis ipsum inventore velit nostrum pariatur reiciendis sit assumenda repudiandae error magni?</span>
                            </div>
                            <div class="col-12 media-body-etc-like_share" style="padding-left: 50px;">
                                <i class="fa-regular fa-thumbs-up"></i>
                                <span>10K+</span>
                                &nbsp;&nbsp;
                                <i class="fa-solid fa-share"></i>
                            </div>
                        </div>
                    </div>
                    <!--media reply end-->

                    <div class="media-body-reply-detail-footer">
                        <div class="row" style="padding-top: 10px; padding-left: 10px; padding-right: 10px; box-sizing: border-box; height: 100%;">
                            <div style="width: 80%; height: 100%;">
                                <input class="reply_insert_box" type="text" id="chatMessage2" placeholder="댓글을 입력해주세요." style="height: 100%; width: 100%; border-radius: 40px;">
                            </div>
                            <div style="width: 20%;">
                                <button id="createChat2" class="btn btn-sm btn-success" style="border-radius: 30px; width: 100%; height: 100%;" disabled><i style="font-size: x-large;" class="fa-solid fa-arrow-up"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--관련미디어 더보기 시작-->
    <div class="container-fluid media-main">
        <div class="row" style="margin-bottom: -30px; padding-left: 40px; padding-right: 60px;">
            <div class="col-8 media-category-title-name">
                <h3><strong>관련미디어</strong></h3>
            </div>    
            <div class="col-4 text-end media-category-title-moreview">
                <a href="">더보기</a>
            </div>    
        </div>
        <div class="row" style="padding: 40px; padding-bottom: 5px;">
            <div class="col-3 media-list">
                <a href="/fanpage/media/detail">
                    <img src="https://i.namu.wiki/i/Cys54MStvYmRn0-dpmTsjN8vL_nA9vnGMSUql42ibQ-rffBmDXkblxzZtxA99NzE2I89xzeKNtO87bFwaj1T1w.webp" alt="">
                    <div class="media-list-thumbname">
                        <span class="media-new">NEW</span>
                        <span><strong>[VLOG]1jong의 상쾌한 2024년 하루 임진년 올한해도 행복한 하루되세요!!*^^*</strong></span>
                    </div>
                    <div class="media-type">
                        <span>2024.01.10 10:25</span>
                        |
                        <i class="fa-solid fa-video"></i>
                        <span>1개</span>
                    </div>
                </a>
            </div>
            <div class="col-3 media-list">
                <img src="https://scsgozneamae10236445.cdn.ntruss.com/data2/content/image/2019/05/01/.cache/512/201905010886046.jpg" alt="">
                <div class="media-list-thumbname">
                    <span class="media-hot">HOT</span>
                    <span><strong>[VLOG]1jong의 상쾌한 2024년 하루 임진년 올한해도 행복한 하루되세요!!*^^*</strong></span>
                </div>
                <div class="media-type">
                    <span>2024.01.11 21:40</span>
                    |
                    <svg xmlns="http://www.w3.org/2000/svg" height="16" width="16" viewBox="0 0 512 512">
                        <path d="M448 80c8.8 0 16 7.2 16 16V415.8l-5-6.5-136-176c-4.5-5.9-11.6-9.3-19-9.3s-14.4 3.4-19 9.3L202 340.7l-30.5-42.7C167 291.7 159.8 288 152 288s-15 3.7-19.5 10.1l-80 112L48 416.3l0-.3V96c0-8.8 7.2-16 16-16H448zM64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zm80 192a48 48 0 1 0 0-96 48 48 0 1 0 0 96z"/>
                    </svg>
                    <span>10장+</span>
                </div>
            </div>
        </div>
    </div>
    <!--관련미디어 더보기 종료-->
    <!-- ################################# 바디 종료 ################################# -->

<%@ include file="../../../layout/footer.jsp" %>

</body>
</html>