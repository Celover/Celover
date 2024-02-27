$('.summernote').summernote({
	tabsize: 2,
	height: 400,
});

/* 해시태그 스크립트 */
$(function() {

	$(document).on('keyup', '.tag-input', function() {
		
		if($(this).val() == ""){
			$(this).next().click();
		}else{
			$(this).css('width', 20);
			let value = $(this).val();
			$('.tag-input-area').append(
				'<div class="virtual">' + value + '</div>')
	
			let inputWidth = $(this).siblings('.virtual').width()
			$(this).css('width', inputWidth + 20);
			$('.virtual').remove();
		}


	})

	$(document).on('click', '.delete-tag', function() {
		let tagLength = $('.tag-input').length;
		let ti = $('.tag-input').get()
		if (($(".delete-tag").index(this) == tagLength - 1)
			&& (ti[tagLength - 1]).value == '') { // 지금누른 버튼이 마지막 인덱스의 버튼일떄
			$(this).prev().val('');
		} else {
			$(this).parent().parent().remove();
		}
	})

	$(document).on('change', '.tag-input', function() {
		let tagLength = $('.tag-input').length;
		let ti = $('.tag-input').get()
		if (ti[tagLength - 1].value != '') {
			$(document).on('click', '.delete-tag', function() {
				return;
			})
			$('#input-tag').append("<span class='parent-span'><span>#</span><div class='tag-input-area'><input class='tag-input' type='text' maxlength='50' placeholder='태그입력'><button type='button' class='delete-tag'>x</button></div></span>");
			$('.tag-input')[tagLength].focus();
		}
	})



	$("#btn-save").click(function() {

		// front에서 제목 null 체크
		if ($("#title").val() === "") {
			alert("제목을 입력해주세요.");
			$("#title").focus();
			$('html, body').animate({ scrollTop: 0 }, 800);
			return;
		}

		// front에서 게시글 null 체크
		if ($("#content").val() === "") {
			alert("내용을 입력해주세요.");
			$(".note-editable").focus();
			return;
		}

		let hashtag = $("#input-tag .parent-span .tag-input");

		let hashlist = [];
		for (i = 0; i < hashtag.length - 1; i++) {
			hashlist.push(hashtag[i].value)
		}
		
		// 공백이나 빈 문자열 제거
		hashlist = hashlist.filter(item => item.trim() !== "");
		
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			type: $("#type option:selected").val(),
			hashTag: hashlist
		}

		$.ajax({
			method: "POST",
			url: "/api/board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success: function(res) {

				if (res.status === 500) {
					alert(res.data);
				} else {
					console.log("게시글 등록 ajax 성공");
					alert("글쓰기가 완료되었습니다.");
					console.log(res)
					location.href="/board/"+ res.msg;
				}

			}, error: function(err) {
				console.log("게시글 등록 ajax 실패");
			}

		})

	})

})