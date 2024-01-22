<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../layout/header.jsp" %>
<link rel="stylesheet" href="/css/calendar.css">
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<body>
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

    <!--좌우측 2분할 시작-->

    <div class="container-fluid" id="feedList" style="padding-left: 125px !important; padding-right: 125px !important; margin-top: 50px;">
        <div class="row">
            <!--좌측 피드 작성 및 리스트 시작-->
            <div class="col-md-8 main-feed-left" style="padding-right: 30px;">
                  <!-- calendar 태그 -->
                    <div id='calendar-container'>
                        <div id='calendar'></div>
                    </div>
            </div>

            <!--좌측 피드 작성 및 리스트 종료-->

            <!--우측 아티스트 사진, 공지사항, 채팅창 시작-->
            <div class="col-6 col-md-4 main-feed-right" style="padding-left: 30px;">

                <!--아티스트 메인 사진 시작-->
                <img class="feedImg" src="https://phinf.wevpstatic.net/MjAyMzExMDhfMTQ4/MDAxNjk5NDQzNzcwMzk0.QBRL1S6o4MmxF3gUEWaTICo1IWutB5DEe_oiuHV2L4kg.P6fsugKAoopx4kyQgGWEMR1g-W7PJc4tcBvI2poTqKcg.JPEG/9710002a-c591-4f18-8af1-8aa5b9259ae6.jpeg?type=f706_740" alt="">
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
                <!--푸터 시작-->
                <div class="container-fluid" id="footer">
                    <div class="container">
                        <br>
                        <div class="footer_title">
                            <h2>
                                Celover
                                <em>since 2023.12.13</em>
                            </h2>
                        </div>
                        <div class="footer_content">
                            <div class="footer_navbar">
                                <ul class="">
                                    <li class="">
                                        <a>이용약관&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>서비스운영정책&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>유료서비스 이용약관&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>청소년 보호 정책&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>개인정보처리방침&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>쿠키정책&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a>쿠키 설정&nbsp;|&nbsp;</a>
                                    </li>
                                    <li class="">
                                        <a> 입점 신청</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="copyright">
                            <span>Copyright 2023.CELOVER.All rights reserverd.</span>
                        </div>
                        <br>
                    </div>
                </div>
                <!--푸터 종료-->
            </div>
        </div>
        <!--채팅장 종료-->
        

    </div>

    <!--좌우측 2분할 종료-->

  <script>
  (function(){
    $(function(){
      // calendar element 취득
      var calendarEl = $('#calendar')[0];
      // full-calendar 생성하기
      var calendar = new FullCalendar.Calendar(calendarEl, {
        height: '850px', // calendar 높이 설정
        expandRows: true, // 화면에 맞게 높이 재설정
        slotMinTime: '08:00', // Day 캘린더에서 시작 시간
        slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
        // 해더에 표시할 툴바
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
        /*
        initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
        */
        navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
        editable: true, // 수정 가능?
        selectable: true, // 달력 일자 드래그 설정가능
        nowIndicator: true, // 현재 시간 마크
        dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
        locale: 'ko', // 한국어 설정
        eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
          console.log(obj);
        },
        eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
          console.log(obj);
        },
        eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
          console.log(obj);
        },
        select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
          var title = prompt('Event Title:');
          if (title) {
            calendar.addEvent({
              title: title,
              start: arg.start,
              end: arg.end,
              allDay: arg.allDay
            })
          }
          calendar.unselect()
        }
        // 이벤트 
        ,events: [
          {
            title: 'All Day Event',
            start: '2024-01-01',
          },
          {
            title: 'Long Event',
            start: '2024-01-07',
            end: '2024-01-10'
          },
          {
            groupId: 999,
            title: 'Repeating Event',
            start: '2024-01-09T16:00:00'
          },
          {
            groupId: 999,
            title: 'Repeating Event',
            start: '2024-01-11T16:00:00'
          },
          {
            title: 'Conference',
            start: '2024-01-11',
            end: '2024-01-13'
          },
          {
            title: 'Meeting',
            start: '2024-01-12T10:30:00',
            end: '2024-01-12T12:30:00'
          },
          {
            title: 'Lunch',
            start: '2024-01-12T12:00:00'
          },
          {
            title: 'Meeting',
            start: '2024-01-12T14:30:00'
          },
          {
            title: 'Happy Hour',
            start: '2024-01-12T17:30:00'
          },
          {
            title: 'Dinner',
            start: '2021-07-12T20:00:00'
          },
          {
            title: 'Birthday Party',
            start: '2021-07-13T07:00:00'
          },
          {
            title: 'Click for Google',
            url: 'http://google.com/', // 클릭시 해당 url로 이동
            start: '2024-01-28'
          }
        ]
      });
      // 캘린더 랜더링
      calendar.render();
    });
  })();
</script>
</body>
</html>