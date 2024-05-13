

$(function(){
	// 매물 수정 버튼이 눌렸을때 근데 여기서 동적으로 만들거라 on으로 바꿔줘야함
	$("button[name='update']").click(function(){
		
		var propertyId = $(this).closest("tr").find("td:first").text();
		alert("수정할 매물의 아이디: " + propertyId);
		
		location.href = "agentUpdate?id=" + propertyId;
		
	});

})