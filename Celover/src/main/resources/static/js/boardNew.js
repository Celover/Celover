$('.summernote').summernote({
	tabsize : 2,
	height : 400,
});

/* 해시태그 스크립트 */
$(function() {

	$(document).on('keydown','.tag-input',function() {
		$(this).css('width', 20);
		let value = $(this).val();
		$('.tag-input-area').append(
				'<div class="virtual">' + value + '</div>')

		let inputWidth = $(this).siblings('.virtual').width()
		$(this).css('width', inputWidth + 20);
		$('.virtual').remove();

	})
	
	$(document).on('click','.delete-tag',function() {
		let tagLength = $('.tag-input').length;
		let ti = $('.tag-input').get()
		if (($(".delete-tag").index(this) == tagLength - 1)
				&& (ti[tagLength - 1]).value == '') { // 지금누른 버튼이 마지막 인덱스의 버튼일떄
			$(this).prev().val('');
		} else {
			$(this).parent().parent().remove();
		}
	})
	
	$(document).on('change','.tag-input',function() {
		let tagLength = $('.tag-input').length;
		let ti = $('.tag-input').get()
		if (ti[tagLength - 1].value != '') {
			$(document).on('click', '.delete-tag',function() {
				return;
			})
			$('#input-tag').append("<span class='parent-span'><span>#</span><div class='tag-input-area'><input class='tag-input' type='text' maxlength='50' placeholder='태그입력'><button type='button' class='delete-tag'>x</button></div></span>");
			$('.tag-input')[tagLength].focus();
		}
	})

})