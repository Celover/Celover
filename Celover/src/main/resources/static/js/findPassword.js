$(document).on("click",".form-check-input:radio",function(){
    
    $(".toggle-area").css("display","none")
    $(this).parent().next().css("display","");
    $(this).next().children("span").css("display","");
})
