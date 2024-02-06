$(function(){
	$("#kakaoBtn").click(function(){
		location.href = "http://localhost:8888/oauth2/authorization/kakao";
	})
	$("#naverBtn").click(function(){
		location.href = "http://localhost:8888/oauth2/authorization/naver";
	})
	$("#googleBtn").click(function(){
		location.href = "http://localhost:8888/oauth2/authorization/google";
	})
	
})