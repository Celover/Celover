<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/shopdetail.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
    <div class="container shop-detail-wrap">
        <div class="row" style="margin-top: 50px;">
            <div class="col-7 product-detail-header-img">
                <img src="https://www.intermarket.co.kr/data/goods/6210f7079a5dd.jpg" alt="">
            </div>
            <div class="col-5">
                <div class="row">
                    <div class="col-12">
                        <a href="#">
                            <strong>21JONG</strong>
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </div>
                    <div class="col-12" style="margin-top: 5px; margin-bottom: 10px;">
                        <span class="product-detail-header-right-name">2th Single Album [1JONG : HARD CODE] (VIP)</span>
                    </div>
                    <div class="col-12">
                        <!-- 실제 가격입력하는 곳 -->
                        <input id="product-input-price" type="hidden" value="25500">
                        <!-- 실제 가격입력하는 곳 -->
                        <label class="product-detail-header-right-price" style="margin-right: -5px;">₩</label>
                        <label id="product-output-price" class="product-detail-header-right-price"></label>
                        <div class="row">
                            <div class="col-4">
                                <label class="product-detail-header-right-bonus">포인트 : </label>
                                <label id="product-input-bonus" class="product-detail-header-right-bonus"
                                    style="margin-right: -5px;">1,550</label>
                                <label class="product-detail-header-right-bonus">p</label>

                            </div>
                            <div class="col-8 text-end">
                                <!-- 별점 입력하는 input -->
                                <input id="rating-value" type="hidden" value="4.1234">
                                <!-- 별점 입력하는 input -->
                                <span id="rating-value-output" style="color: rgb(215, 215, 38);">
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </span>
                                <span>14356개의 리뷰</span>
                            </div>
                        </div>
                    </div>

                    <hr style="margin: 20px 0px 20px 0px;">

                    <div class="col-12" id="product-right-small-name-wrap">
                        <span id="product-right-small-name"></span>
                    </div>
                    <div class="col-12">
                        <button class="change-volume" id="plus_volume" style="width: 30px;">+</button>
                        <input class="change-volume" id="input_volume" type="number" value="1" min="1" max="10"
                            style="text-align: center;" readonly>
                        <button class="change-volume" id="minus_volume" style="width: 30px;" disabled>-</button>
                    </div>

                    <div class="col-12" style="font-size: small; color: gray; margin-top: 10px;">
                        <i class="fa-solid fa-circle-exclamation"></i>
                        <span>해당상품은 현재 최대 10개까지만 구매가 가능한 상품입니다.</span>
                    </div>

                    <hr style="margin: 20px 0px 20px 0px;">

                    <div class="col-6">
                        <span>총 상품금액</span>
                        <span>(</span>
                        <span id="product-checkout-volume">1</span>
                        <span>)</span>
                        <span>개</span>
                    </div>
                    <div class="col-6 text-end">
                        <!-- 메인 가격만 넣으면 자동으로 들어가는 부분 -->
                        <input id="product-checkout-input-price" type="hidden">
                        <!-- 메인 가격만 넣으면 자동으로 들어가는 부분 -->
                        <label class="product-detail-header-right-price" style="margin-right: -5px;">₩</label>
                        <label class="product-detail-header-right-price" id="product-checkout-output-price"></label>
                    </div>
                    <div class="col-12 text-end" style="color: skyblue; font-weight: 900;">
                        누적예상 포인트 :
                        <span id="product-detail-header-checkout-bonus"></span>
                        <span style="margin-left: -5px;">p</span>
                    </div>
                    <div class="col-6 complete-wrap">
                        <button class="product-detail-header-right-complete" id="btn-addcart">카트추가</button>
                    </div>
                    <div class="col-6 complete-wrap">
                        <button class="product-detail-header-right-complete" id="btn-checkout">상품결제</button>
                    </div>
                </div>
            </div>
            <hr style="margin: 20px 0px 50px 0px;">
        </div>
        <div class="col-10" style="margin: auto;">
            <div class="row">
                <div id="product-detail-body-nav-wrap" class="col-12">
                    <ul>
                        <li>
                            <a class="product-detail-body-nav-list" href="#tag1">제품정보</a>
                        </li>
                        <li>
                            <a class="product-detail-body-nav-list" href="#tag2">상품후기(<span>123</span>)</a>
                        </li>
                        <li>
                            <a class="product-detail-body-nav-list" href="#tag3">문의(<span>47</span>)</a>
                        </li>
                        <li>
                            <a class="product-detail-body-nav-list" href="#tag4">반품/교환정보</a>
                        </li>
                    </ul>
                </div>

                <div class="col-12 product-detail-body-detailImg" id="product-detail-body-base product-detail-body-info">
                    <h4 id="tag1"><strong>제품정보</strong></h4>
                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/2214647705/B.jpg?650000000" alt="">
                    <img src="https://itaiwan.co.kr/files/attach/images/2023/07/20/2b37f6f5d81ee06e1ba5fc4b4526a3f0.jpg" alt="">
                    <img src="https://kr.ktown4u.com/goods_files/SH0174/event_images/010387/EV10386052.default.1.png" alt="">

                </div>

                <hr style="margin: 50px 0px 20px 0px;">

                <div class="col-12" id="product-detail-body-base product-detail-body-rewired">
                    <h4 id="tag2"><strong>상품후기</strong></h4>
                    <div id="review-img" style="position: relative;">
                        <img src="/img/검색이미지1.jpg" alt="" data-bs-toggle="modal" data-bs-target="#review-one_view">
                        <img src="/img/검색이미지2.jpg" alt="">
                        <img src="/img/검색이미지3.jpeg" alt="">
                        <img src="/img/게시판.png" alt="">
                        <img src="/img/결제완료.png" alt="">
                        <img src="/img/고객센터.png" alt="">
                        <img src="/img/네이버로그인버튼.png" alt="">
                        <img src="/img/구글로그인버튼.png" alt="">
                        <img src="/img/댓글.png" alt="">
                        <img src="/img/랭킹.png" alt="">
                        <a href="#" id="product-detail-body-review-morephoto" data-bs-toggle="modal" data-bs-target="#review-more_view">
                            <span>+더보기</span>
                        </a>
                    </div>

                    <!-- 사진 리뷰 자세히보기 start -->
                    <!-- Modal -->
                    <div class="modal fade" id="review-one_view" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" style="padding: 30px;">
                        <div class="modal-content review-one_view-wrap">
                            <div class="modal-header" style="padding: 0px; padding-left: 20px;">
                                <h4 style="margin: 0px;"><strong>사진리뷰</strong></h4>
                                <div align="center">
                                    <div class="btn-group btn-group-lg" role="group" aria-label="Default button group">
                                        <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-chevron-left"></i></button>
                                        <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-chevron-right"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-body review-one-detail">
                                <div class="row">
                                    <div class="col-7" style="padding-right: 75px;">
                                        <img style="width: 100%;" src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/2214647705/B.jpg?650000000" alt="">
                                        <img style="width: 100%;" src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/2214647705/B.jpg?650000000" alt="">
                                        <img style="width: 100%;" src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/2214647705/B.jpg?650000000" alt="">
                                    </div>
                                    <div class="col-5" style="padding: 0px; padding-right: 20px;">
                                        <div class="row">
                                            <div class="checkout-user-productName" style="margin-bottom: 10px; font-size: small;">[21JONG]2th Single Album [1JONG : HARD CODE] (VIP)</div>
                                            <div class="col-2 checkout-user-review" style="padding-right: 0px;">
                                                <img src="/img/user_profile_default.png" alt="">
                                            </div>
                                            <input type="hidden" class="product-body-review-username-input" value="1Jong">
                                            <div class="col-4 product-body-review-username-output" style="padding-left: 0px; margin-left: -10px;"></div>
                                            <div class="col-6 text-end" style="font-size: 12px;">
                                                2024.01.18
                                            </div>
                                            <div style="font-size: small;">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <div class="checkout-user-review-coment">
                                                <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis, asperiores culpa. Officiis mollitia voluptas sequi atque esse error, repudiandae temporibus harum laboriosam unde beatae, quaerat nisi et similique assumenda illum.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- 사진 리뷰 자세히보기 start -->


                    <!--더보기 모달 start-->
                    <!-- Modal -->
                    <div class="modal fade" id="review-more_view" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 style="margin: 0px;">사진리뷰 전체보기</h4>
                            </div>
                            <div class="modal-body review-modal-body-wrap">
                                <div class="row review-more-img-wrap">
                                    <img src="https://wimg.mk.co.kr/news/cms/202302/20/news-p.v1.20230220.242eefaa11c84a388b7235fd652a9ecd.jpg" alt="">
                                    <img src="https://i.namu.wiki/i/99YlVXSaMfCLo-bXAx2ZHok3D1avhHBIz4gP8Lf8tli9WdK0pxPBvh92eKMIRBOs8jmGPLLBY7OlL2lFFs-TKg.webp" alt="">
                                    <img src="https://media.bunjang.co.kr/product/236453982_1_1695730461_w360.jpg" alt="">
                                    <img src="https://cdn.iconsumer.or.kr/news/photo/202209/25039_29758_1548.jpg" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/6279748482/B.jpg?9000000" alt="">
                                    <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/0QTIaV4hQ9-2cSA55DdOXA" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/5439276119/B.jpg?833000000" alt="">
                                    <img src="https://obs.line-scdn.net/r/lfstore/lfstore/sample22df3316t11fd152c" alt="">
                                    <!--상위 샘플-->
                                    <img src="https://wimg.mk.co.kr/news/cms/202302/20/news-p.v1.20230220.242eefaa11c84a388b7235fd652a9ecd.jpg" alt="">
                                    <img src="https://i.namu.wiki/i/99YlVXSaMfCLo-bXAx2ZHok3D1avhHBIz4gP8Lf8tli9WdK0pxPBvh92eKMIRBOs8jmGPLLBY7OlL2lFFs-TKg.webp" alt="">
                                    <img src="https://media.bunjang.co.kr/product/236453982_1_1695730461_w360.jpg" alt="">
                                    <img src="https://cdn.iconsumer.or.kr/news/photo/202209/25039_29758_1548.jpg" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/6279748482/B.jpg?9000000" alt="">
                                    <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/0QTIaV4hQ9-2cSA55DdOXA" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/5439276119/B.jpg?833000000" alt="">
                                    <img src="https://obs.line-scdn.net/r/lfstore/lfstore/sample22df3316t11fd152c" alt="">
                                    <!--상위 샘플-->
                                    <img src="https://wimg.mk.co.kr/news/cms/202302/20/news-p.v1.20230220.242eefaa11c84a388b7235fd652a9ecd.jpg" alt="">
                                    <img src="https://i.namu.wiki/i/99YlVXSaMfCLo-bXAx2ZHok3D1avhHBIz4gP8Lf8tli9WdK0pxPBvh92eKMIRBOs8jmGPLLBY7OlL2lFFs-TKg.webp" alt="">
                                    <img src="https://media.bunjang.co.kr/product/236453982_1_1695730461_w360.jpg" alt="">
                                    <img src="https://cdn.iconsumer.or.kr/news/photo/202209/25039_29758_1548.jpg" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/6279748482/B.jpg?9000000" alt="">
                                    <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/0QTIaV4hQ9-2cSA55DdOXA" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/5439276119/B.jpg?833000000" alt="">
                                    <img src="https://obs.line-scdn.net/r/lfstore/lfstore/sample22df3316t11fd152c" alt="">
                                    <!--상위 샘플-->
                                    <img src="https://wimg.mk.co.kr/news/cms/202302/20/news-p.v1.20230220.242eefaa11c84a388b7235fd652a9ecd.jpg" alt="">
                                    <img src="https://i.namu.wiki/i/99YlVXSaMfCLo-bXAx2ZHok3D1avhHBIz4gP8Lf8tli9WdK0pxPBvh92eKMIRBOs8jmGPLLBY7OlL2lFFs-TKg.webp" alt="">
                                    <img src="https://media.bunjang.co.kr/product/236453982_1_1695730461_w360.jpg" alt="">
                                    <img src="https://cdn.iconsumer.or.kr/news/photo/202209/25039_29758_1548.jpg" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/6279748482/B.jpg?9000000" alt="">
                                    <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/0QTIaV4hQ9-2cSA55DdOXA" alt="">
                                    <img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/5439276119/B.jpg?833000000" alt="">
                                    <img src="https://obs.line-scdn.net/r/lfstore/lfstore/sample22df3316t11fd152c" alt="">
                                    <!--상위 샘플-->
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!--더보기 모달 end-->

                    <!-- product review start -->
                    <div class="row product-body-rewired-detail">
                        <div class="col-3">
                            <div class="row">
                                <div class="col-2 checkout-user-review">
                                    <img src="/img/user_profile_default.png" alt="">
                                </div>
                                <input type="hidden" class="product-body-review-username-input" value="1Jong">
                                <div class="col-8 product-body-review-username-output"></div>
                            </div>
                            <div class="row">
                                <div class="col-5">
                                    <span class="product-body-review-create_Date">2024.01.18</span>
                                </div>
                                <div class="col-7">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="row">
                                <div class="checkout-user-productName">[21JONG]2th Single Album [1JONG : HARD CODE] (VIP)</div>
                                <div class="checkout-user-review-coment">
                                    <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis, asperiores culpa. Officiis mollitia voluptas sequi atque esse error, repudiandae temporibus harum laboriosam unde beatae, quaerat nisi et similique assumenda illum.</span>
                                </div>
                                <div class="checkout-user-review-img">
                                    <img src="/img/user_profile_default.png" alt="">
                                    <img src="/img/user_profile_default.png" alt="">
                                    <img src="/img/user_profile_default.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 product-body-review-none">
                        <div class="review-none-img" align="center">
                            <i class="fa-regular fa-comment-dots"></i>
                        </div>
                        <div class="review-none-commnet" align="center">
                            팬분들의 소중한 첫 후기를 기다립니다.
                        </div>
                    </div>
                    <div style="margin-top: 50px;" align="center">
                        <div class="btn-group btn-group-lg" role="group" aria-label="Default button group">
                            <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-chevron-left"></i></button>
                            <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-chevron-right"></i></button>
                        </div>
                    </div>
                    <!-- product review end -->

                </div>

                <hr style="margin: 50px 0px 20px 0px;">

                <div class="col-12" id="product-detail-body-base product-detail-body-QnA">
                    <h4 id="tag3"><strong>문의</strong></h4>
                </div>

                <hr style="margin: 50px 0px 20px 0px;">

                <div class="col-12" id="product-detail-body-base product-detail-body-exchange-return">
                    <h4 id="tag4"><strong>반품/교환정보</strong></h4>
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseOne">
                                    반품/교환방법
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px;">
                                        <li>My > 주문내역 > 주문 > 상세 통해 반품/교환 신청</li>
                                        <li>상세한 반품/교환 규정은 FAQ 확인</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseTwo">
                                    반품/교환 가능 기간
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px;">
                                        <li>구매자는 상품을 수령한 날부터 7일 이내에 교환/반품 신청을 하여야 하며,</li>
                                        <li>표시·광고 내용과 다르거나 계약 내용과 다르게 이행된 경우에는 상품 수령 후 3개월 이내에 청약 철회가 가능합니다.</li>
                                        <li>(단, 변심의 경우 교환은 불가하며, 반품 취소만 가능합니다.)</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseThree">
                                    반품/교환 비용
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px;">
                                        <li>구매자의 변심으로 반품을 원할 경우에는 구매자가 배송비 지불</li>
                                        <li>상품 하자나 제품 불일치, 배송 이슈로 인한 반품의 경우에는 판매자가 배송비 지불</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseFour">
                                    반품/교환시 유의사항
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px; margin-bottom: 20px;">
                                        <li>아래와 같은 경우 반품/교환이 제한될 수 있습니다.</li>
                                        <li>구매자에게 책임이 있는 사유로 상품이 멸실 또는 훼손된 경우(단, 내용 확인을 위한 포장 개봉의 경우는 예외)</li>
                                        <li>구매자의 전부 또는 일부의 사용, 소비(디지털코드 등록 포함)에 의해 상품의가치가 현저히 감소한 경우</li>
                                        <li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한경우</li>
                                        <li>복제가 가능한 상품의 포장을 훼손한 경우(앨범/도서/영상출판물/포토카드/포스터카드/포스터 등을 비롯한 복제 가능한 상품의 포장 개봉 시)</li>
                                        <li>주문/제작 상품의 제작이 이미 진행된 경우(판매자에게 회복불가능한 손해가예상되고, 그러한 예정으로 청약철회권 행사가 불가하다는 사실을 서면 동의받은 경우)</li>
                                        <li>상품의 일부 구성품을 사용하였거나, 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우, 일부 구성품이 동봉되지 않은 채 반송된 경우</li>
                                        <li>각 상품별로 아래와 같은 사유로 반품/교환이 제한될 수 있습니다.</li>
                                    </ul>
                                    <span><strong>[의류/가방/신발/ 패션잡화]</strong></span>
                                    <ul style="margin: 0px; margin-bottom: 20px;">
                                        <li>세탁, 상품 얼룩, 향수 냄새, 탈취제 냄새, 사용 흔적 등으로 상품의 가치가 현저히 감소한 경우</li>
                                    </ul>
                                    <span><strong>[앨범/도서/영상출판]</strong></span>
                                    <ul style="margin: 0px;">
                                        <li>복제 가능한 상품의 포장이 개봉된 경우</li>
                                        <li>일부 구성품을 사용하였거나, 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우</li>
                                        <li>일부 구성품이 동봉되지 않은 채 반송된 경우</li>
                                        <li>교환은 불량일 경우에만 동일한 상품 및 동일한 옵션에 한하여 가능합니다. 이 외에 경우에는 반품 후 재구매절차를 진행하셔야 합니다.</li>
                                        <li>교환신청을 하더라도 판매자에게 교환할 물품의 재고가 없는 경우에는 교환이 불가능하며, 이 경우에 해당 상품의 주문을 취소처리 후, 결제시 선택했던 결제 수단으로 환불처리 됩니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseFive">
                                    소비자 피해 보상 및 환불지연에 따른 배상
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px;">
                                        <li>상품의 불량에 의한 반품, 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결기준(공정거래위원회 고시)에 준하여 처리됨.</li>
                                        <li>대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서 의 소비자 보호에 관한 법률에 따라 처리함.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseSix">
                                    기타사항
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse show">
                                <div class="accordion-body">
                                    <ul style="margin: 0px;">
                                        <li>일부 규정은 국내구매자 분들께만 해당되며, 해외구매자 분들을 위한 상세 안내는 FAQ 혹은 1:1 문의를 통해 확인해주세요.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- ################################# 바디 종료 ################################# -->

<%@ include file="../../../layout/footer.jsp" %>

</body>

<script>
    /* 별점 script start */
    $(() => {
        var basic_num = 5;
        var rating_value = Math.floor($('#rating-value').val());
        var inputRating = (basic_num - rating_value);
        var inputTesting = '';
        for (let i = 0; i < rating_value; i++) {
            inputTesting += '<i class="fa-solid fa-star"></i>';
        }
        for (let i = 0; i < inputRating; i++) {
            inputTesting += '<i class="fa-regular fa-star"></i>';
        }
        $('#rating-value-output').html(inputTesting);
    })
    /* 별점 script end */

    /* 천단위 ',' script start */
    $(() => {
        var $input = parseFloat($('#product-input-price').val().replace(/,/g, '')); var formattedInput = $input.toLocaleString(); // Format the number with commas
        $("#product-output-price").html(formattedInput);
        var $bonus = $input / 10;
        var formattedBonus = $bonus.toLocaleString();
        $("#product-input-bonus").html(formattedBonus);
    });
    /* 천단위 ',' script end */

    /* 버튼으로 숫자 증대에 따른 최종상품 금액 및 보너스 포인트 변경 script start */
    $(() => {
        var now_volume = parseInt($('#input_volume').val());
        var new_volume = 1;
        var productPrice = parseInt($('#product-input-price').val());
        var checkoutPrice = productPrice * new_volume;
        var checkoutBonus = checkoutPrice / 10;
        $('#product-checkout-output-price').text(checkoutPrice);
        $('#product-detail-header-checkout-bonus').text(checkoutBonus);

        function updateButtonState() {
            $('#minus_volume').attr('disabled', new_volume === 1);
            $('#plus_volume').attr('disabled', new_volume === 10);

        }

        $('#plus_volume').click(() => {
            new_volume += 1;
            if (new_volume >= 1 && new_volume <= 10) {
                $('#input_volume').val(new_volume);
                updateButtonState();
                $('#product-checkout-volume').text(new_volume);
                checkoutPrice = new_volume * productPrice;
                $('#product-checkout-output-price').text(checkoutPrice);
                checkoutBonus = checkoutPrice / 10;
                $('#product-detail-header-checkout-bonus').text(checkoutBonus);
            }
        })

        $('#minus_volume').click(() => {
            new_volume -= 1;
            if (new_volume >= 1 && new_volume <= 10) {
                $('#input_volume').val(new_volume);
                updateButtonState();
                $('#product-checkout-volume').text(new_volume);
                checkoutPrice = new_volume * productPrice;
                $('#product-checkout-output-price').text(checkoutPrice);
                checkoutBonus = checkoutPrice / 10;
                $('#product-detail-header-checkout-bonus').text(checkoutBonus);
            }
        })
        var bigName = $('.product-detail-header-right-name').text();
        console.log(bigName);
        $('#product-right-small-name').text(bigName);
    })
    /* 버튼으로 숫자 증대에 따른 최종상품 금액 및 보너스 포인트 변경 script end */

    /* 리뷰 아이디 앞2글자 제외 나머지 '*'처리 script start */
    $(()=>{
        var input_username = $('.product-body-review-username-input').val();
        var slice_username = input_username.slice(0,2);
        var output_username = slice_username;
        for(let i = 2; i<input_username.length; i++){
            output_username += '*';
        }
        console.log(output_username);
        $('.product-body-review-username-output').text(output_username);
        
    })
    /* 리뷰 아이디 앞2글자 제외 나머지 '*'처리 script end */
</script>
</html>