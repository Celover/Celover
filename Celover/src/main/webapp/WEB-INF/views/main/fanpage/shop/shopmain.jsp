<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/shopmain.css">
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
    <div class="container shop-main-banner-wrap">
        <div class="mainSlide" style="vertical-align: bottom;">
            <div class="item">
                <a href="#"><img src="https://image.aladin.co.kr/product/29663/46/cover500/c982936142_1.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="#"><img src="https://kr.ktown4u.com/goods_files/SH0164/goods_images/000081/GD00080303.default.1.png" alt=""></a>
            </div>
            <div class="item">
                <a href="#"><img src="https://phinf.wevpstatic.net/MjAyMjA2MjJfMTQ3/MDAxNjU1ODcwMzIwNDE5.vqg0RKEhvuGn-egsxbIKH13zCZMRC5OFPv5kLn1y7F8g.SZDNM848Ix7u7-ty87MYdClewdlPRj5rpdnWeH73Co4g.PNG/039b0eb2d2b74f719569041b7bfc67a1255.png?type=w670" alt=""></a>
            </div>
            <div class="item">
                <a href="#"><img src="https://image.yes24.com/goods/110162228/XL" alt=""></a>
            </div>
            <div class="item">
                <a href="#"><img src="https://www.cdn3.kr/http://en.sound-wave.co.kr/storage/soundwaveU0/www//product/2022/29/O/product.8200.165822468740662.jpeg" alt=""></a>
            </div>
            <div class="item">
                <a href="#"><img src="https://m.dreamcatcher.kr/web/product/big/202310/1fc875282bf7c49bb025fe52444a79c1.jpg" alt=""></a>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row" style="margin-bottom: 50px;">
            <!-- 사이드바 영역 -->
            <div class="col-md-2" id="myPage_menu">
                <div class="panel">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between act" id="product_all">
                            <a class="p-2">전체상품</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_hot-Deal">
                            <a class="p-2">Hot Deal</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_23-24-SS-NEw">
                            <a class="p-2">23/24 SS New</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_popular">
                            <a class="p-2">인기상품</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_new">
                            <a class="p-2">최신상품</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 영역 끝 -->

            <!-- 마이페이지 본문 영역 -->
            <style>
                #myPage_content {
                    padding: 0% 3% 3% 3%;
                }

                #myPage_content div>h4 {
                    font-weight: 600;
                }

                #myPage_content div>hr {
                    height: 2px;
                    border: 0;
                    background: black;
                    opacity: 1;
                }
            </style>
            <div class="col-md-10 product-wrap" id="myPage_content">
                <div class="product all">
                    <h4>전체상품</h4>
                    <span class="product-category category-total" style="font-weight: 900; color: black;">전체</span>
                    |
                    <span class="product-category category-popular">인기순</span>
                    |
                    <span class="product-category category-new">최신순</span>
                    |
                    <span class="product-category category-rating">별점순</span>
                    |
                    <span class="product-category category-cell">판매순</span>
                    <hr>
                    <div class="row" style="padding: 10px;">

                        <div class="col-3 product-list-wrap">
                            <div class="produdct-list-innerwrap">
                                <a class="product-list" href="/fanpage/shop/detail">
                                    <div class="product-list-thumbnail">
                                        <img src="https://www.intermarket.co.kr/data/goods/6210f7079a5dd.jpg" alt="">
                                    </div>
                                    <div class="product-list-title product-name">1jong의 새우깡Set</div>
                                    <div class="product-list-title product-price">4,000원</div>
                                    <div class="product-list-title product-list-title-rating">⭐⭐⭐⭐⭐(38)</div>
                                </a>
                            </div>
                        </div>

                        <div class="col-3 product-list-wrap">
                            <div class="produdct-list-innerwrap">
                                <a class="product-list" href="#">
                                    <div class="product-list-thumbnail">
                                        <img src="https://storage.heypop.kr/assets/2022/10/21114426/%E1%84%83%E1%85%B3%E1%84%85%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%87%E1%85%B3%E1%84%86%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%8F%E1%85%A1_%E1%84%87%E1%85%A2%E1%86%BA%E1%84%8C%E1%85%B5_%E1%84%89%E1%85%B5%E1%86%AF%E1%84%86%E1%85%AE%E1%86%AF_03-1.jpeg" alt="">
                                    </div>
                                    <div class="product-list-title product-name">1jong의 새우깡Set</div>
                                    <div class="product-list-title product-price">4,000원</div>
                                    <div class="product-list-title product-list-title-rating">⭐⭐⭐⭐⭐(38)</div>
                                </a>
                            </div>
                        </div>

                        <div class="col-3 product-list-wrap">
                            <div class="produdct-list-innerwrap">
                                <a class="product-list" href="#">
                                    <div class="product-list-thumbnail">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8imHt1PXGbCwQOSOXeSib8Tb8gPRl8YoDRA&usqp=CAU" alt="">
                                    </div>
                                    <div class="product-list-title product-name">1jong의 새우깡Set</div>
                                    <div class="product-list-title product-price">4,000원</div>
                                    <div class="product-list-title product-list-title-rating">⭐⭐⭐⭐⭐(38)</div>
                                </a>
                            </div>
                        </div>

                        <div class="col-3 product-list-wrap">
                            <div class="produdct-list-innerwrap">
                                <a class="product-list" href="#">
                                    <div class="product-list-thumbnail">
                                        <img src="data:image/jpeg;base64,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" alt="">
                                    </div>
                                    <div class="product-list-title product-name">1jong의 새우깡Set</div>
                                    <div class="product-list-title product-price">4,000원</div>
                                    <div class="product-list-title product-list-title-rating">⭐⭐⭐⭐⭐(38)</div>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="product hotDeal" hidden>
                    <h4>Hot Deal</h4>
                    <span class="product-category category-total" style="font-weight: 900; color: black;">전체</span>
                    |
                    <span class="product-category category-popular">인기순</span>
                    |
                    <span class="product-category category-new">최신순</span>
                    |
                    <span class="product-category category-rating">별점순</span>
                    |
                    <span class="product-category category-cell">판매순</span>
                    <hr>
                    <br><br>
                    <img class="product-watting" src="/img/상품준비중(찐막).png" alt="">
                </div>
                <div class="product 23-24-SS-NEW" hidden>
                    <h4>23/24 SS New</h4>
                    <span class="product-category category-total" style="font-weight: 900; color: black;">전체</span>
                    |
                    <span class="product-category category-popular">인기순</span>
                    |
                    <span class="product-category category-new">최신순</span>
                    |
                    <span class="product-category category-rating">별점순</span>
                    |
                    <span class="product-category category-cell">판매순</span>
                    <hr>
                    <br><br>
                    <img class="product-watting" src="/img/상품준비중(찐막).png" alt="">

                </div>
                <div class="product popular" hidden>
                    <h4>인기상품</h4>
                    <span class="product-category category-total" style="font-weight: 900; color: black;">전체</span>
                    |
                    <span class="product-category category-popular">인기순</span>
                    |
                    <span class="product-category category-new">최신순</span>
                    |
                    <span class="product-category category-rating">별점순</span>
                    |
                    <span class="product-category category-cell">판매순</span>
                    <hr>
                    <br><br>
                    <img class="product-watting" src="/img/상품준비중(찐막).png" alt="">
                </div>
                <div class="product new" hidden>
                    <h4>최신상품</h4>
                    <span class="product-category category-total" style="font-weight: 900; color: black;">전체</span>
                    |
                    <span class="product-category category-popular">인기순</span>
                    |
                    <span class="product-category category-new">최신순</span>
                    |
                    <span class="product-category category-rating">별점순</span>
                    |
                    <span class="product-category category-cell">판매순</span>                    
                    <hr>
                    <br><br>
                    <img class="product-watting" src="/img/상품준비중(찐막).png" alt="">
                </div>
            </div>
            
            <!-- 마이페이지 본문 영역 끝 -->
        </div>
    </div>
    <!-- ################################# 바디 종료 ################################# -->

<%@ include file="../../../layout/footer.jsp" %>

</body>

<script>
    $(()=>{
        /* left side-bar script start */
        $("#product_all").click(function() {
            $('.list-group-item').removeClass('act');
            $(this).addClass('act');
            $(".product").attr('hidden',true);
            $(".all").attr('hidden',false);
        });
        $("#product_hot-Deal").click(function() {
            $('.list-group-item').removeClass('act');
            $(this).addClass('act');
            $(".product").attr('hidden',true);
            $(".hotDeal").attr('hidden',false);
        });
        $("#product_23-24-SS-NEw").click(function() {
            $('.list-group-item').removeClass('act');
            $(this).addClass('act');
            $(".product").attr('hidden',true);
            $(".23-24-SS-NEW").attr('hidden',false);
        });
        $("#product_popular").click(function() {
            $('.list-group-item').removeClass('act');
            $(this).addClass('act');
            $(".product").attr('hidden',true);
            $(".popular").attr('hidden',false);
        });
        $("#product_new").click(function() {
            $('.list-group-item').removeClass('act');
            $(this).addClass('act');
            $(".product").attr('hidden',true);
            $(".new").attr('hidden',false);
        });
        /* left side-bar script end */

        /* product choose category script start */
        $('.category-total').click(()=>{
            $('.product-category').css('font-weight', '100');
            $('.product-category').css('color', 'gray');
            $('.category-total').css('font-weight','900');
            $('.category-total').css('color','black');
        })
        $('.category-popular').click(()=>{
            $('.product-category').css('font-weight', '100');
            $('.product-category').css('color', 'gray');
            $('.category-popular').css('font-weight','900');
            $('.category-popular').css('color','black');
        })
        $('.category-new').click(()=>{
            $('.product-category').css('font-weight', '100');
            $('.product-category').css('color', 'gray');
            $('.category-new').css('font-weight','900');
            $('.category-new').css('color','black');
        })
        $('.category-rating').click(()=>{
            $('.product-category').css('font-weight', '100');
            $('.product-category').css('color', 'gray');
            $('.category-rating').css('font-weight','900');
            $('.category-rating').css('color','black');
        })
        $('.category-cell').click(()=>{
            $('.product-category').css('font-weight', '100');
            $('.product-category').css('color', 'gray');
            $('.category-cell').css('font-weight','900');
            $('.category-cell').css('color','black');
        })
        /* product choose category script end */

    })
</script>

<script>
        $(() => {
            $('.mainSlide').slick({
                infinite: true,
                slidesToShow: 5,
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
        $(() => {
            $('.slick-prev slick-arrow').css("display", "none");
            $('.slick-next.slick-arrow').css("display", "none");
        });
</script>
</html>