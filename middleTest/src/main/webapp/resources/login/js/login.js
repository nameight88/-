
$(function(){
	$(".login").submit(function() {
		var result = checkBeforeSubmit();
		
		if (result==true) {
			alert("로그인 중 입니다.");
		}
	
		return result;
	});
	
});

// result 변수 - 함수 실행
function checkBeforeSubmit() {
	var inputLogins = $(".inputLogin");
	var result = true;
	
	//제출 시 null값이 존재하는지 확인하는 유효성 검사
	for (var i=0; i<inputLogins.length; i++) {
		console.log(inputLogins[i].value);
		if (inputLogins[i].value=="") {
			alert("모든 값이 입력되지 않았습니다.");
			inputLogins[i].focus();
			result = false;
			
			return result;
		}
	}
	
	
	var inputId = $(".inputLogin[name='inputId']").val();
	var inputPass = $(".inputLogin[name='inputPass']").val();
	alert(inputId);
	alert(inputPass);
	
	$.ajax({
    type: "POST",
    url: "loginForm", // 서버의 로그인 엔드포인트 URL
    data: {
        inputId: inputId,
        inputPass: inputPass
    },
    dataType: "json",
    success:function(result){
		if(result){
	    	
	    	alert("로그인 중 입니다.");
	    	window.location.href = "/middleTest/mainPage"   
	    }else{    
	      	alert("아이디나 비밀번호가 잘못되었습니다");
	      	window.location.href = "/middleTest/login"
		}
	},error: function(error) {
		console.error(error);
	}
	});
	
	return result;

}