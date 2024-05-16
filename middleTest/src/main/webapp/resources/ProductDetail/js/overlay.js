$(function(){
	$(".open-btn").click(function() {
	    $(".overlay").fadeIn();
	});

	$(".close-btn").click(function() {
	    $(".overlay").fadeOut();
	});

	// 오버레이 내부를 클릭할 때 이벤트 전파를 방지합니다.
	$(".overlay-inner").click(function(event){
	    event.stopPropagation();
	});
});