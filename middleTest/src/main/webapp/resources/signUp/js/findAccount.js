function id_search(){
	var frm = document.idfindscreen;
	
	if(frm.findId_email.value.length <= 1){
		alert("이메일을 입력해주세요.")
		
		return;
	}
	
	frm.method ="post";
	frm.action ="signUp/findIdResult.jsp"; // 넘어간화면
	frm.submit();
}