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
	images.sort(function(a, b) {
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

document.addEventListener('DOMContentLoaded', function() {
	var fanWorldCupModal = new bootstrap.Modal(document.getElementById('fan_worldCup'));

	fanWorldCupModal._element.addEventListener('hidden.bs.modal', function() {
		// 모달이 닫힐 때 변수 재설정
		cnt = 0;
		num = 0;
		sNum = 0;
		cnt2 = 0;
		text = ""; // 필요하면 텍스트 재설정
		document.getElementById('cal').innerHTML = text; // 필요하면 표시된 텍스트 업데이트
	});
});


$(window).on('resize load', function() { // 창 사이즈 변경 또는 창이 로딩 됐을 때 실행
	/* following list 영역 */
	// following list => fl 
	let fl_width = 128.35; // image width
	let fl_list_length = $(".fl-list").width(); // list 영역의 동적 길이 
	let fl_count = fl_list_length / fl_width; // list 영역에서 보여줄 프로필의 갯수 1214 / 

	let fl_list = $('#flContent ul');
	let fl_list_items = $("#flContent ul li");

	let fl_position = 0;

	// shift left
	$("#flContent .prev").click(function() {
		fl_position += fl_width * fl_count;
		fl_position = Math.min(fl_position, 0)
		fl_list.css("margin-left", fl_position + 'px');
	});

	$("#flContent .next").click(function() {
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
	$("#srContent .prev").click(function() {
		sr_position += sr_width * sr_count;
		sr_position = Math.min(sr_position, 0)
		sr_list.css("margin-left", sr_position + 'px');
	})

	// shift right
	$("#srContent .next").click(function() {
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


$(() => {
	$('.slick-track').css('z-index', '1');
})

/* 메인페이지 배너 부분 */

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

/* 상단 검색창 관련 */
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

