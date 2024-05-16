//회원가입 submit 전 유효성 검사
$(".signupForm").submit(function() {

	var result = checkBeforeSubmit();
	if (result==true) {
		alert("회원가입이 완료되었습니다!");
	}
	
	return result;
});

//회원정보 수정 submit 전 유효성 검사
$(".modifySubmit").submit(function() {
	var result = checkBeforeSubmit();
	
	if (result==true) {
		alert("회원정보 수정이 완료되었습니다.");
	}
	
	return result;
})

$('.idCheck').click(function(){
	// 폼 제출 방지
	event.preventDefault();
	
	var checkBeforeId = $(".form-control[name='agent_id']").val();
	// 아이디가 공백일 경우
	if (checkBeforeId.length < 2) {
		alert("ID를 형식에 맞춰 입력하세요.");
	// admin manager 입력방지*(일단 대문자 소문자만)
	}else if(checkBeforeId.toLowerCase().includes("admin")||checkBeforeId.toUpperCase().includes("admin")){
		alert("포함할 수 없는 단어가 들어가있습니다.");
	}else if(checkBeforeId.toLowerCase().includes("manager")||checkBeforeId.toUpperCase().includes("manager")){
		alert("포함할 수 없는 단어가 들어가있습니다.");
	}else{
	// 아이디 중복 검사
		$.ajax({
	        url:"userIdCheck.do",
	        type:"post",
	        data:{ checkBeforeId },
	        dataType: "json",
	        success:function(result){
		        if(result){
		        	alert("사용가능한 아이디입니다.");
		        	$(".resultIdMessage").text("사용 가능한 아이디입니다.").css("color", "green").css("font-weight", "bold").css("font-size", "10px");
		            $(".form-control[name='agent_id']").val()
		            $('.id-checkbox').prop('checked', true);
		            event.preventDefault(); // 폼 제출 방지
		        }else{    
		        	alert("이미사용중인 아이디입니다 다시 입력해주세요");
		        	$(".resultIdMessage").text("이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요.").css("color", "red").css("font-weight", "bold").css("font-size", "10px");
		            $(".form-control[name='agent_id']").val("");
		            $('.id-checkbox').prop('checked', false);  
		        }
		    },error: function(error) {
	        	console.error(error);
	    	}   
	    });// end of ajax	
	}// end of if문

});// end of 'ID-Check' click event


// 이메일 중복검사
$(".form-control[name='agent_email']").change(function(){

	// 이메일 중복확인
	var checkEmail = $(".form-control[name='agent_email']").val();
	$.ajax({
	        url:"userEmailCheck.do",
	        type:"post",
	        data:{ checkEmail },
	        dataType: "json",
	        success:function(result){
		         if(result) {
                    $(".resultMessage").text("사용 가능한 이메일입니다.").css("color", "green").css("font-weight", "bold").css("font-size", "10px");
                } else {
                    $(".resultMessage").text("이미 사용 중인 이메일입니다. 다른 이메일을 입력해주세요.").css("color", "red").css("font-weight", "bold").css("font-size", "10px");
                    $(".form-control[name='agent_email']").val("")
                }
		    },error: function(error) {
	        	console.error(error);
	    	}   
	    });// end of ajax	
	
});

//회원가입, 회원정보 수정 submit 전 유효성 검사하는 함수
function checkBeforeSubmit() {
	var formControls = $(".form-control");
	var result = true;
	
	//제출 시 null값이 존재하는지 확인하는 유효성 검사
	for (var i=0; i<formControls.length; i++) {
		console.log(formControls[i].value);
		if (formControls[i].value=="") {
			alert("모든 값이 입력되지 않았습니다.");
			formControls[i].focus();
			result = false;
			
			return result;
		}
	}
	
	// 비밀번호 체크
	var passcheck = $(".form-control[name='PassChk']").val();
	var pass = $(".form-control[name='Pass']").val();
	if (passcheck !== pass) {
    	alert("비밀번호가 다릅니다.");
    	result = false;
    	return result;
	}
	
	
	//전화번호 형식 유효성 검사
	var regPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	var inputCustomerType = $(".form-control[name=customerType]");
	var inputCustomerPhone = $(".form-control[name=agent_phone]");
	
	if (inputCustomerType.val()==2) {
		var inputCompanyPhone = $(".form-control[name=companyPhone]");
		if (!regPhone.test(inputCustomerPhone.val())||!regPhone.test(inputCompanyPhone.val())) {
			alert("휴대전화 형식을 맞춰주세요");
			result = false;
		}
	}
	else {
		if (!regPhone.test(inputCustomerPhone.val())) {
			alert("휴대전화 형식을 맞춰주세요");
			result = false;
		}
	}
	
	//아이디 중복확인 검사 필수
	var idCheckBox = $('.id-checkbox').prop('checked');
	if(!idCheckBox){
		alert("ID 중복을 확인해주세요");
		event.preventdefault();
		result = false;
		
		return result;
	}
	
	return result;
} 


