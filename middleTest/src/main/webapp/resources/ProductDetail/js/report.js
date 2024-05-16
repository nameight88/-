$(function() {
    $(".reportButton").click(function(){
        alert("범인은 한기진 허위매물 신고 확인");
        window.open("report","_blank","width=500px,height=500px");
    });

    $(".next_report").click(function(){
        window.open("report_submit","_blank","width=500px,height=500px");
    });

    $(".exit_report").click(function(){
        window.close();
    });
});
