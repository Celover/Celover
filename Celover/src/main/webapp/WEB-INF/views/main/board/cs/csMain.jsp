<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/csMain.css">
<script type="text/javascript" src="/js/csMain.js"></script>

    <!-- ################################# 바디 시작 ################################# -->
    <div class="container">
        <div class="row" style="margin-bottom: 50px;">
            <!-- 사이드바 영역 -->
            <div class="col-md-2" id="myPage_menu">
                <div class="panel">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between act" id="product_all">
                            <a class="p-2">자주하는 질문</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_hot-Deal">
                            <a class="p-2">1:1문의</a>
                            <i class="fas fa-chevron-right p-2"></i>
                        </li>
                        <li class="list-group-item d-flex justify-content-between" id="product_23-24-SS-NEw">
                            <a class="p-2">입점신청</a>
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
                <!-- 자주찾는 질문 start -->
                <div class="product all">
                    <h4 class="CS-right-title">자주하는 질문</h4>
                    <span class="CS-right-title-serve">팬분들께서 Celover에 자주 하시는 질문을 모았습니다.</span>
                    <hr>
                    <div class="CS-right-wrap">
                        <div class="row CS-header">
                            <div class="col-1 text-center">
                                <span>번호</span>
                            </div>
                            <div class="col-2 text-center">
                                <span>카테고리</span>
                            </div>
                            <div class="col text-center">
                                <span>제목</span>
                            </div>
                        </div>
                        <hr style="margin-bottom: 0px;">
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item" style="border: 0px; border-bottom: 1px solid lightgray;">
                              <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                  <div class="col-1 text-center" style="width: 60px;">1</div>
                                  <div class="col-2 text-center" style="width: 190px;">취소</div>
                                  <div class="col-8">교환(반품) 진행시, 배송비가 부과 되나요?</div>
                                </button>
                              </h2>
                              <div id="collapse1" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                  <strong>교환(반품) 시, 배송비 안내</strong>
                                  <br>
                                  <p>
                                      - 단순변심에 의한 교환/반품 시 배송비 6,000원(주문건 배송비를 낸 경우 3,000원)을 고객님께서 부담하셔야 합니다.
                                  </p>
                                  <p>
                                      - 파트너사 판매상품의 경우, 상품의 상세페이지 내 안내 정책을 참고 부탁드립니다.
                                  </p>
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item" style="border: 0px; border-bottom: 1px solid lightgray;">
                                <h2 class="accordion-header">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse1">
                                    <div class="col-1 text-center" style="width: 60px;">2</div>
                                    <div class="col-2 text-center" style="width: 190px;">회원</div>
                                    <div class="col-8">아이디, 비밀번호를 잊어버렸습니다.</div>
                                  </button>
                                </h2>
                                <div id="collapse2" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                  <div class="accordion-body">
                                    <strong>아이디 비밀번호 찾기 안내</strong>
                                    <br>
                                    <p>
                                        - 아래 경로를 통해 아이디 및 비밀번호 찾기가 가능하며, 해당 안내를 통해서 아이디 및 비밀번호를 확인하시기 바랍니다.
                                    </p>
                                  </div>
                                </div>
                              </div>
                          </div>




                    </div>
                </div>
                <!-- 자주찾는 질문 end -->

                <!-- 1:1문의 start -->
                <div class="product hotDeal questionMtoM" hidden>
                    <h4>1:1문의</h4>
                    <div class="row">
                        <div class="col-8">
                            <span class="CS-right-title-serve">여러분의 다양한 질문을 성실히 답변드리겠습니다.</span>
                        </div>
                        <div class="col-4 questionMtoM-btn text-end" >
                            <button id="question-create-button">등 록</button>
                        </div>

                        <script>
                            $('#question-create-button').on('click', function() {
                                $('.questionMtoM').prop('hidden',true);
                                $('.question-create').prop('hidden', false);
                            })
                        </script>

                    </div>
                    <hr style="margin-bottom: 0px;">
                    <!-- 타이틀 시작 -->
                    <div class="row oto_question oq-title" style="padding-right: 30px;">
                        <div class="col-8 text-center">
                            <span>제 목</span>
                        </div>
                        <div class="col-2 text-center">
                            <span>작성일</span>
                        </div>
                        <div class="col-2 text-center">
                            <span>답변상태</span>
                        </div>
                        <!-- 타이틀 종료 -->
                    </div>
                    <hr style="margin: 0px; margin-bottom: 10px;">
                    <div class="accordion" id="mtom-question-list">
                        <!--1개의 1:1 질문 start -->
                        <div class="accordion-item" style="border: 0px; border-bottom: 1px solid lightgray;">
                          <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-q-1" aria-expanded="false" aria-controls="collapse-q-1">
                              <div class="col-8">
                                <span>팬페이지 등록은 어떻게 하는건가요?</span>
                              </div>
                              <div class="col-2 text-center">
                                <span>23.01.30</span>
                              </div>
                              <div class="col-2 text-center">
                                <span>답변대기</span>
                              </div>
                            </button>
                          </h2>
                          <div id="collapse-q-1" class="accordion-collapse collapse" data-bs-parent="#mtom-question-list" style="background-color: #f4f4f4; padding: 10px;">
                            <div class="accordion-body">
                              <div class="row">
                                <div class="col-12" style="color: gray;">
                                    <span>회원/이벤트/쿠폰</span>
                                    <i style="margin-right: 5px; margin-left: 5px;" class="fas fa-angle-right"></i>
                                    <span>회원</span>
                                </div>
                                <div class="col-12" style="padding: 15px;">
                                    <p class="mtom-question-detail-comment">이번에 21Jong님의 데뷔로 인해서 팬페이지 생성 및 goods 판매를 하고싶은 YJE&M입니다.협업 및 매장 신청으로 문의드립니다.</p>
                                </div>
                                <div class="col-12 text-end mtom-question-btns" style="margin-top: 10px; margin-bottom: 10px;">
                                    <button class="mtom-question-update">수정</button>
                                    <button class="mtom-question-done" hidden>완료</button>
                                    <span>|</span>
                                    <button class="mtom-question-delete" data-bs-toggle="modal" data-bs-target="#delete-question-detail">삭제</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!--1개의 1:1 질문 end -->
                        <div class="accordion-item" style="border: 0px; border-bottom: 1px solid lightgray;">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-q-2" aria-expanded="false" aria-controls="collapse-q-2">
                                <div class="col-8">
                                  <span>이벤트 쿠폰 지급 문의</span>
                                </div>
                                <div class="col-2 text-center">
                                  <span>23.01.30</span>
                                </div>
                                <div class="col-2 text-center">
                                  <span>답변대기</span>
                                </div>
                              </button>
                            </h2>
                            <div id="collapse-q-2" class="accordion-collapse collapse" data-bs-parent="#mtom-question-list" style="background-color: #f4f4f4; padding: 10px;">
                              <div class="accordion-body">
                                <div class="row">
                                  <div class="col-12" style="color: gray;">
                                      <span>회원/이벤트/쿠폰</span>
                                      <i style="margin-right: 5px; margin-left: 5px;" class="fas fa-angle-right"></i>
                                      <span>이벤트</span>
                                  </div>
                                  <div class="col-12" style="padding: 15px;">
                                      <p class="mtom-question-detail-comment">2023연말 이벤트 쿠폰이 지급되지 않았는데 확인해주세요.</p>
                                  </div>
                                  <div class="col-12 text-end mtom-question-btns" style="margin-top: 10px; margin-bottom: 10px;">
                                      <button class="mtom-question-update">수정</button>
                                      <button class="mtom-question-done" hidden>완료</button>
                                      <span>|</span>
                                      <button class="mtom-question-delete" data-bs-toggle="modal" data-bs-target="#delete-question-detail">삭제</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                      </div>

                      <script>
                        $(document).ready(function() {
                          $('.mtom-question-update').on('click', function() {
                            // 현재 눌린 업데이트 버튼에 대한 부모 아코디언 찾기
                            var accordionItem = $(this).closest('.accordion-item');
                      
                            // 해당 아코디언 내부의 .mtom-question-detail-comment 엘리먼트 찾기
                            var commentElement = accordionItem.find('.mtom-question-detail-comment');
                      
                            // 텍스트 값을 가져오기
                            var commentText = commentElement.text();
                      
                            // 새로운 입력 요소 생성
                            var changeTextarea = $('<input>', { type: 'text', value: commentText }).css('width', '100%');
                      
                            // 원래 요소의 내용을 새로운 입력 요소로 교체
                            commentElement.replaceWith(changeTextarea);
                      
                            // 업데이트 버튼의 가시성 토글
                            accordionItem.find('.mtom-question-update').prop('hidden', true);
                            accordionItem.find('.mtom-question-done').prop('hidden', false);
                          });
                        });
                      </script>


                      <!-- 삭제버튼 모달 start -->
                        <!-- Modal -->
                        <div class="modal fade" id="delete-question-detail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header text-center">
                                    <div class="col-12">작성하신 1:1문의를 정말 삭제하시겠습니까?</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">취소</button>
                                    <button type="button" class="btn btn-primary btn-sm">삭제</button>
                                </div>
                            </div>
                            </div>
                        </div>
                      <!-- 삭제버튼 모달 end -->
                </div>
                <!-- 1:1문의 end -->

                <!-- 1:1문의 등록 start -->
                <div class="product question-create" hidden>
                    <h4>1:1문의 등록</h4>
                    <div class="row">
                        <div class="col-8">
                            <span class="CS-right-title-serve">여러분의 다양한 질문을 성실히 답변드리겠습니다.</span>
                        </div>
                    </div>
                    <hr>
                    <div class="row" style="padding-left: 25px; padding-right: 25px; margin: 10px;">
                        <div class="col-2 question-create-title">
                            유형
                            <label class="essential">(필수)</label>
                        </div>
                        <div class="col-10">
                            <div class="row">
                                <div class="col-6 question-create-select">
                                    <select name="" id="question-selecter-1" style="width: 100%; height: 100%;">
                                        <option id="question-selecter-1-1" value="">문의 유형을 선택해주세요.</option>
                                        <option value="1">취소/교환/반품</option>
                                        <option value="2">회원/이벤트/쿠폰</option>
                                        <option value="3">주문/결제</option>
                                    </select>
                                </div>
                                <div class="col-6 question-create-select">
                                    <select name="" id="question-selecter-2" style="width: 100%; height: 100%;" disabled>
                                        <option value="">상세유형을 선택해주세요.</option>
                                    </select>
                                </div>

                                <script>
                                    $(() => {
                                        let num = 0;
                                        let title = '';
                                        let coment = '';
                                        let option_name = '';
                                
                                        $('#question-selecter-1').on('change', function () {
                                            $('#question-selecter-1-1').prop('disabled', true);
                                            $('#question-selecter-2').prop('disabled', false);
                                            num = $(this).val();
                                            /*
                                            console.log(num);
                                            */
                                            checkOption(num);
                                            MtoMQuestionCheck(num, title, coment, option_name);
                                        });
                                
                                        function selectOption() {
                                            $('#question-selecter-2').on('change', function () {
                                                option_name = $(this).val();
                                                /*
                                                console.log(option_name);
                                                */
                                                MtoMQuestionCheck(num, title, coment, option_name); // Pass the variables to the function
                                            });
                                        }
                                
                                        function checkOption(num) {
                                            if (num == 1) {
                                                let option = '';
                                                option += '<option value="취소">취소</option>';
                                                option += '<option value="교환">교환</option>';
                                                option += '<option value="반품">반품</option>';
                                                $('#question-selecter-2').html(option);
                                                selectOption();
                                            } else if (num == 2) {
                                                let option = '';
                                                option += '<option value="회원">회원</option>';
                                                option += '<option value="이벤트">이벤트</option>';
                                                option += '<option value="쿠폰">쿠폰</option>';
                                                $('#question-selecter-2').html(option);
                                                selectOption();
                                            } else if (num == 3) {
                                                let option = '';
                                                option += '<option value="주문">주문</option>';
                                                option += '<option value="결제">결제</option>';
                                                $('#question-selecter-2').html(option);
                                                selectOption();
                                            }
                                        }
                                
                                        $('.question-create-select input').keyup(function () {
                                            title = $('.question-create-select input').val().length;
                                            /*
                                            console.log('제목 길이');
                                            console.log(title);
                                            */
                                            MtoMQuestionCheck(num, title, coment, option_name);
                                        });
                                
                                        $('.question-create-textarea textarea').keyup(function () {
                                            coment = $('.question-create-textarea textarea').val().length;
                                            /*
                                            console.log('내용 길이');
                                            console.log(coment);
                                            */
                                            MtoMQuestionCheck(num, title, coment, option_name);
                                        });
                                
                                        function MtoMQuestionCheck(num, title, coment, option_name) {
                                            console.log('최종 확인작업');
                                            console.log(num);
                                            console.log(option_name);
                                            console.log(title);
                                            console.log(coment);
                                            if (num > 0 && title > 0 && coment > 0 && option_name != null) {
                                                console.log('전부 확인완료');
                                                $('.input-create-btn').prop('disabled',false).css('opacity',1);

                                            } else {
                                                console.log('일부만 확인완료');
                                                $('.input-create-btn').prop('disabled',true).css('opacity',0.5);
                                            }
                                        }
                                    });
                                </script>

                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding-left: 25px; padding-right: 25px; margin: 10px;">
                        <div class="col-2 question-create-title">
                            제목
                            <label class="essential">(필수)</label>
                        </div>
                        <div class="col-10 question-create-select">
                            <input type="text" style="height: 100%; width: 100%;" placeholder="제목을 입력해주세요.">
                        </div>
                    </div>
                    <div class="row" style="padding-left: 25px; padding-right: 25px; margin: 10px;">
                        <div class="col-2 question-create-title">
                            내용
                            <label class="essential">(필수)</label>
                        </div>
                        <div class="col-10 question-create-textarea">
                            <textarea name="" id="" style="width: 100%; height: 300px; resize: none;" placeholder="1:1문의 작성 전 확인해주세요!&#13;&#10;※전화번호, 이메일, 주속, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록&#13;&#10;주의해 주시기 바랍니다."></textarea>
                        </div>
                    </div>
                    <div class="row" style="padding-left: 25px; padding-right: 25px; margin: 10px;">
                        <div class="col-2 question-create-title"></div>
                        <div class="col-10 question-create-textarea">
                            <button class="input-photo-btn">
                                <i class="bi bi-image"></i>
                            </button>
                            <input class="input-photo-img" type="file" hidden>
                            <ul>
                                <li>30MB 이하의 이미지만 업로드 가능합니다.</li>
                                <li>상품과 무관한 내용이거나 음란 및 불법적인 내용은 삭제/제재의 대상이 될 수 있습니다.</li>
                                <li>사진은 최대 8장까지 등록 가능합니다.</li>
                            </ul>
                        </div>

                        <script>
                            $(()=>{
                                $('.input-photo-btn').on('click',function (){
                                    $('.input-photo-img').click();
                                })
                            })
                        </script>
                    </div>
                    <div class="text-center" style="margin-top: 30px;">
                        <button class="input-create-btn" style="width: 200px; height: 60px;" disabled>등 록</button>
                    </div>
                </div>
                <!-- 1:1문의 end -->
                
                <!-- 입점신청 start -->
                <div class="product 23-24-SS-NEW" hidden>
                    <h4>입점신청</h4>
                    <span class="CS-right-title-serve">Celover와 함께할 분들을 모집합니다.</span>
                    <hr>
                    <div align="center">
                        <div class="col-10 CS-right-enter-wrap">
                                <div class="col-10 CS-right-enter-coment">
                                    <span>Celover와 함께하실 아티스트의 타입을 선택 후 입점 신청서를 작성해주세요.</span>
                                    <br><br>
                                    <select name="" id="enter-select" style="margin-right: 25px;">
                                        <option value="">타입선택</option>
                                        <option value="가수(그룹)">가수(그룹)</option>
                                        <option value="가수(솔로)">가수(솔로)</option>
                                        <option value="배우">배우</option>
                                        <option value="예능인">예능인</option>
                                        <option value="크리에이터">크리에이터</option>
                                        <option value="기타">기타</option>
                                    </select>
                                    <button id="enter-btn" disabled>입점 신청서 작성하기</button>
                                </div>
                                
                                <script>
                                    $(document).ready(function () {
                                        $('#enter-select').on('change', function () {
                                            if ($(this).val() !== '') {
                                                $('#enter-btn').prop('disabled', false).css('opacity', 1);
                                            } else {
                                                $('#enter-btn').prop('disabled', true).css('opacity', 0.5);
                                            }
                                        });

                                    });
                                    $('#enter-btn').on('click', function () {
                                        $('.enter-form').prop('hidden', false);
                                        $('#enter-select').prop('disabled', true).css('opacity', 0.5);
                                        $('#enter-btn').prop('disabled', true).css('opacity', 0.5);
                                    })
                                </script>
                        </div>
                    </div>
                    <div class="enter-form" style="margin-top: 50px;" hidden>
                        <div class="row" style="border-top: 1px solid gray; height: auto;">
                            <div class="col-12">
                                <span>아티스트 정보</span>
                            </div>
                            <div class="col-3">
                                <span>활동명</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-name" placeholder="아티스트로 활동하는 명칭에 대해서 작성해주세요. (그룹은 그룹명으로 작성)" minlength="1">
                            </div>
                            <div class="col-3">
                                <span>데뷔일자</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <div class="row">
                                    <div class="col-4">
                                        <select name="" id="enter-form-insert-year"></select>
                                    </div>
                                    <div class="col-4">
                                        <select name="" id="enter-form-insert-month">
                                            <option value="">월</option>
                                        </select>
                                    </div>

                                    <div class="col-4">
                                        <select name="" id="enter-form-insert-day">
                                            <option value="">일</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3">
                                <span>대표 SNS</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="url" id="artist-sns" placeholder="해당 아티스트의 SNS중 대표적이거나 잘 표현된 SNS의 url을 입력해주세요.">
                            </div>
                            <div class="col-3">
                                <span>주요 작품(음반) 정보</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <textarea name="" id="artist-art" placeholder="주요 작품 및 발매 음반의 종류, 명칭, 발표정보를 입력해주세요.(최소 1개이상)"></textarea>
                            </div>
                            <div class="col-3">
                                <span>주요 활동 이력</span>
                            </div>
                            <div class="col-9">
                                <textarea name="" id="artist-work" placeholder="콘서트, 팬미팅, 방송활동, 공연 등 아티스트의 주요 활동 이력정보를 입력해주세요."></textarea>
                            </div>
                            <div class="col-3" style="margin-bottom: 60px;">
                                <span>기타소개</span>
                            </div>
                            <div class="col-9" style="margin-bottom: 60px;">
                                <textarea name="" id="artist-etc" placeholder="위의 제시된 사항외 아티스트에 대해서 소개가 필요한 부분에 대해서 자유롭게 작성해주세요."></textarea>
                            </div>
                        </div>
                        <div class="row" style="border-top: 1px solid gray;">
                            <div class="col-12">
                                <span>Celover 입점 정보</span>
                            </div>
                            <div class="col-3">
                                <span>입점 희망 시기</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-insert-date" placeholder="입점을 원하는 시기를 입력해주세요. ex) 2024년 10월">
                            </div>
                            <div class="col-3" style="margin-bottom: 60px;">
                                <span>입점 희망 사유</span>
                            </div>
                            <div class="col-9" style="margin-bottom: 60px;">
                                <textarea name="" id="artist-insert-reseson" placeholder="Celover와 함께하고 싶은 희망이유를 작성해주세요."></textarea>
                            </div>
                        </div>
                        <div class="row" style="border-top: 1px solid gray;">
                            <div class="col-12">
                                <span>레이블 및 담당자 정보</span>
                            </div>
                            <div class="col-3">
                                <span>레이블명</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-label-name" placeholder="개인의 경우 이름을 입력해주세요.">
                            </div>
                            <div class="col-3">
                                <span>담당자 명</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-label-admin" placeholder="팬카페를 관리할 담당자명을 입력해주세요.">
                            </div>
                            <div class="col-3">
                                <span>담당자 연락처</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9">
                                <input type="number" maxlength="11" id="artist-label-admin-number" placeholder="팬카페를 관리할 담당자의 연락처를 입력해주세요.( '-' 제외 10~11자 / ex)010-1234-5678)" oninput="numberMaxLength(this);">
                                <script>
                                    function numberMaxLength(e){
                                        if(e.value.length > e.maxLength){
                                            e.value = e.value.slice(0,e.maxLength);
                                        }
                                    }
                                </script>
                            </div>
                            <div class="col-3">
                                <span>담당자 이메일</span>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-label-admin-email">
                            </div>
                            <div class="col-3">
                                <span>담당자 소속팀명</span>
                            </div>
                            <div class="col-9">
                                <input type="text" id="artist-label-admin-team">
                            </div>
                            <div class="col-3">
                                <span>명함 첨부</span>
                            </div>
                            <div class="col-9">
                                <input type="file" style="border: 0px">
                            </div>
                            <div class="col-3" style="margin-bottom: 60px;">
                                <span>개인정보 제공동의</span>
                                <label class="essential">(필수)</label>
                            </div>
                            <div class="col-9" style="margin-bottom: 60px; line-height: 21px;">
                                <div class="row">
                                    <div class="col-1">
                                        <input type="checkbox" id="artist-info-check" style="height: 20px; width: 20px; margin: auto; margin-top: 19px; display: block;">
                                    </div>
                                    <div class="col-10" style="line-height: 56px; margin-left: -25px;">
                                        <span>입력하신 개인정보를 Celover에서 수집, 이용하는데 동의 합니다.</span>
                                        <span style="font-size: small; text-decoration: underline; color: lightgray;">자세히 보기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div align="center" style="border-top: 1px solid gray;">
                            <div class="col-8" style="margin-top: 50px;">
                                <div class="row">
                                    <div class="col-6 enter-form-btn-back text-end">
                                        <button>이전으로</button>
                                    </div>
                                    <div class="col-6 enter-form-btn-success text-start">
                                        <button disabled>제출하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 입점신청 end -->
            </div>
            <!-- 마이페이지 본문 영역 끝 -->
        </div>
    </div>
    <!-- ################################# 바디 종료 ################################# -->


<%@ include file="/WEB-INF/views/layout/footer.jsp"%>