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
        /* left side-bar script end */
    })
    /* 데뷔일자 script start */
    $(()=>{
        let today = new Date();
        let year = today.getFullYear();
        let years = '<option value="">연</option>';
        for(let i = 1990; i<=year; i++){
            years += '<option value="'+i+'">'+i+'</option>';
        }
        $('#enter-form-insert-year').html(years);
        
        let months = '<option value="">월</option>';
        for(let i = 1; i<=12; i++){
            months += '<option value="'+i+'">'+i+'</option>';
        }
        $('#enter-form-insert-month').html(months);
    })

    $(()=>{
        $('#enter-form-insert-month').on('change',function (){
            let select_month = $('#enter-form-insert-month').val();
            let days = '<option value="">일</option>';
            if(select_month == 2){
                /*
                console.log(select_month);
                console.log('2월');
                */
                for(let i = 1; i<=28; i++){
                    days += '<option value="'+i+'">'+i+'</option>';
                }
            }else if((select_month%2) == 0){
                /*
                console.log(select_month);
                console.log('짝수');
                */
                for(let i = 1; i<=30; i++){
                    days += '<option value="'+i+'">'+i+'</option>';
                }
            }else if((select_month%2) != 0){
                /*
                console.log(select_month);
                console.log('홀수');
                */
                for(let i = 1; i<=31; i++){
                    days += '<option value="'+i+'">'+i+'</option>';
                }
            }
            
            $('#enter-form-insert-day').html(days);
        })
    })

    $(()=>{
        $('#enter-form-insert-year').on('change', function () {
            let select_year = $(this).val();
            /*console.log('선택년도 '+select_year);*/
        });
        $('#enter-form-insert-month').on('change', function () {
            let select_month = $(this).val();
            /*console.log('선택월 '+select_month);*/
        });
        $('#enter-form-insert-day').on('change', function () {
            let select_day = $(this).val();
            /*console.log('선택일 '+select_day);*/
        });
    })
    /* 데뷔일자 script end */
    $(()=>{
        var success = 0;
        /* 활동명 check */
        var artist_name_point = 0;
        $('#artist-name').on('change',function(){
            if($('#artist-name').val().length !== 0){
                artist_name_point = 1;
                console.log('활동명 입력완료')
                console.log(artist_name_point);
                totalcheck();
            }else{
                artist_name_point = 0;
                console.log('활동명 미입력')
                console.log(artist_name_point);
                totalcheck();
            }
        })

        /* 데뷔일자 check */
        var artist_insert = 0;
        let artist_insert_year = 0;
        let artist_insert_month = 0;
        let artist_insert_day = 0;

        $('#enter-form-insert-year').on('change', function(){
            if($('#enter-form-insert-year').val() > 0){
                artist_insert_year = $('#enter-form-insert-year').val();
                console.log('년도 입력완료');
                console.log(artist_insert_year);
            }else{
                artist_insert_year = 0;
                console.log('년도 미입력');
                console.log(artist_insert_year);
            }
            check_insert();
        })

        $('#enter-form-insert-month').on('change', function(){
            if($('#enter-form-insert-month').val() > 0){
                artist_insert_month = $('#enter-form-insert-month').val();
                console.log('월 입력');
                console.log(artist_insert_month);
            }else{
                artist_insert_month = 0;
                console.log('월 미입력');
                console.log(artist_insert_month);
            }
            check_insert();
        })

        $('#enter-form-insert-day').on('change', function(){
            if($('#enter-form-insert-day').val() > 0){
                artist_insert_day = $('#enter-form-insert-day').val();
                console.log('일 입력');
                console.log(artist_insert_day);
            }else{
                artist_insert_day = 0;
                console.log('일 미입력');
                console.log(artist_insert_day);
            }
            check_insert();
        })

        function check_insert(){
            if(artist_insert_year > 0 && artist_insert_month > 0 && artist_insert_day > 0){
                artist_insert = 1;
                console.log(artist_insert);
                console.log('모두다 모임');
                totalcheck();
            }else{
                artist_insert = 0;
                console.log(artist_insert);
                console.log('아직 다 못모임');
                totalcheck();
            }
        }

        /* 대표 SNS check */
        var artist_sns = 0;
        $('#artist-sns').on('change',function(){
            if($('#artist-sns').val().length !== 0){
                artist_sns = 1;
                console.log('sns 입력완료')
                console.log(artist_sns);
                totalcheck();
            }else{
                artist_sns = 0;
                console.log('활동명 미입력')
                console.log(artist_sns);
                totalcheck();
            }
        })

        /* 주요 작품(음반) 정보 check */
        var artist_art = 0;
        $('#artist-art').on('change',function(){
            if($('#artist-art').val().length !== 0){
                artist_art = 1;
                console.log('음반 입력완료')
                console.log(artist_art);
                totalcheck();
            }else{
                artist_art = 0;
                console.log('활동명 미입력')
                console.log(artist_art);
                totalcheck();
            }
        })

        /* 입점 희망 시기 check */
        var artist_insert_date = 0;
        $('#artist-insert-date').on('change',function(){
            if($('#artist-insert-date').val().length !== 0){
                artist_insert_date = 1;
                console.log('입정희망일 입력완료');
                console.log(artist_insert_date);
                totalcheck();
            }else{
                artist_insert_date = 0;
                console.log('입점희망일 미입력');
                console.log(artist_insert_date);
                totalcheck();
            }
        })

        /* 레이블명 check */
        var artist_label_name = 0;
        $('#artist-label-name').on('change',function(){
            if($('#artist-label-name').val().length !== 0){
                artist_label_name = 1;
                console.log('레이블명 입력완료');
                console.log(artist_label_name);
                totalcheck();
            }else{
                artist_label_name = 0;
                console.log('레이블명 미입력');
                console.log(artist_label_name);
                totalcheck();
            }
        })

        /* 담당자명 check */
        var artist_label_admin = 0;
        $('#artist-label-admin').on('change',function(){
            if($('#artist-label-admin').val().length !== 0){
                artist_label_admin = 1;
                console.log('담당자명 입력완료');
                console.log(artist_label_admin);
                totalcheck();
            }else{
                artist_label_admin = 0;
                console.log('담당자명 미입력');
                console.log(artist_label_admin);
                totalcheck();
            }
        })

        /* 담당자연락처 check */
        var artist_label_admin_number = 0;
        $('#artist-label-admin-number').on('change',function(){
            if($('#artist-label-admin-number').val().length !== 0){
                artist_label_admin_number = 1;
                console.log('담당자연락처 입력완료');
                console.log(artist_label_admin_number);
                totalcheck();
            }else{
                artist_label_admin_number = 0;
                console.log('담당자연락처 미입력');
                console.log(artist_label_admin_number);
                totalcheck();
            }
        })

        /* 정보제공동의 check */
        var artist_info_check = 0;
        $('#artist-info-check').on('change',function(){
            if($('#artist-info-check').prop('checked')){
                artist_info_check = 1;
                console.log('개인정보제공 입력완료');
                console.log(artist_info_check);
                totalcheck();
            }else{
                artist_info_check = 0;
                console.log('개인정보제공 미입력');
                console.log(artist_info_check);
                totalcheck();
            }
        })

        function totalcheck(){
            if((artist_name_point+artist_insert+artist_sns+artist_art+artist_insert_date+artist_label_name+artist_label_admin+artist_label_admin_number+artist_info_check) === 9){
                console.log('전체 동의 완료');
                $('.enter-form-btn-success button').prop('disabled', false);
                $('.enter-form-btn-success button').css('opacity','1');
            }else{
                console.log('미동의 항목 존재');
                $('.enter-form-btn-success button').prop('disabled', true);
                $('.enter-form-btn-success button').css('opacity','0.5');
            }
        }

        
    })
    
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
    
    $(()=>{
        $('.input-photo-btn').on('click',function (){
            $('.input-photo-img').click();
        })
    })

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
