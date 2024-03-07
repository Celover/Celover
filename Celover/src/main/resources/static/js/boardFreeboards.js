$(function() {
	// 작성하기 눌렀을 때
	$("#writeBoard").click(function() {
		location.href = "/board/new";
	})

	$(document).on("click", ".middle-area a", function() {
		sessionStorage.setItem('currentPage', $(this).parent().find(".hiddenPageNo").val())
		sessionStorage.setItem('keyword', $(this).parent().find(".hiddenKeyword").val())
		sessionStorage.setItem('sort', $(this).parent().find(".hiddenSort").val())
	})
})	