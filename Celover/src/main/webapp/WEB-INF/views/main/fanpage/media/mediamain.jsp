<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/mediamain.css">
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
    <div class="container-fluid media-main">
        <!-- 타이틀 이미지 -->
        <div class="media-title text-center" style="padding: 30px;">
            <img class="media-title-img" src="https://phinf.wevpstatic.net/MjAyMzExMDhfMTQ4/MDAxNjk5NDQzNzcwMzk0.QBRL1S6o4MmxF3gUEWaTICo1IWutB5DEe_oiuHV2L4kg.P6fsugKAoopx4kyQgGWEMR1g-W7PJc4tcBvI2poTqKcg.JPEG/9710002a-c591-4f18-8af1-8aa5b9259ae6.jpeg?type=f706_740" alt="">
        </div>
        <!-- 타이틀 이미지 -->
        <!-- 미디어 카테고리 -->
        <div class="container media-category-group text-center">
            <button type="button" class="btn btn-secondary media-category">전체</button>
            <button type="button" class="btn btn-secondary media-category">최신 미디어</button>
            <button type="button" class="btn btn-secondary media-category">HOT CLIP</button>
            <button type="button" class="btn btn-secondary media-category">21JONG'S PICK</button>
            <button type="button" class="btn btn-secondary media-category">VLOG</button>
            <button type="button" class="btn btn-secondary media-category">YOUTUBE</button>
            <button type="button" class="btn btn-secondary media-category">INSTARGRAM</button>
            <button type="button" class="btn btn-secondary media-category">FACEBOOK</button>
            <button type="button" class="btn btn-secondary media-category">KAKAO</button>
            <button type="button" class="btn btn-secondary media-category">MOSTVIEW</button>
            <button type="button" class="btn btn-secondary media-category">MOSTLIKE</button>
            <button type="button" class="btn btn-secondary media-category">SINGLE</button>
            <button type="button" class="btn btn-secondary media-category">FAN-METTING</button>
            <button type="button" class="btn btn-secondary media-category">MAKING</button>
            <button type="button" class="btn btn-secondary media-category">MOVIE</button>
            <button type="button" class="btn btn-secondary media-category">ARTIST</button>
            <button type="button" class="btn btn-secondary media-category">WORLD-TOURE</button>
            <button type="button" class="btn btn-secondary media-category">NEW-YORK CONSERT</button>
            <button type="button" class="btn btn-secondary media-category">L.A CONSERT</button>
            <button type="button" class="btn btn-secondary media-category">SOULE FASTIVAL</button>
            <button type="button" class="btn btn-secondary media-category">2023 HOT-CLIP</button>
            <button type="button" class="btn btn-secondary media-category">2024 NEW-CLIP</button>
            <button type="button" class="btn btn-secondary media-category">FEAT SONG</button>
            <button type="button" class="btn btn-secondary media-category">WORLD-START-FEAT</button>

        </div>
        <!-- 미디어 카테고리 -->
        <div class="row" style="margin-bottom: -30px; padding-left: 40px; padding-right: 60px;">
            <div class="col-8 media-category-title-name">
                <h3><strong>최신미디어</strong></h3>
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
    <!-- ################################# 바디 종료 ################################# -->

<%@ include file="../../../layout/footer.jsp" %>

</body>
</html>