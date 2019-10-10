$(function () {
    // 툴팁 출력
    $('[data-toggle="tooltip"]').tooltip()
    // 로그인/인포 메뉴창 토글 함수
    $("#loginMenuLink").click(function(){
        $(".loginmenu").toggle();
    }); 
    $("#veil").on("click", function(){
        $(".loginmenu").toggle();
    });
    // 메뉴바 전체 검색버튼 클릭 이벤트
    $("#titleSearchSubmit").on("click",function(){
        var keyword = $("#titleSearch").val().trim();
        if ( keyword.length != 0 ) {
            console.log(keyword);
            $("#titleSearchForm").submit();
        } else {
            return false;
        }
    });
    $(window).scroll(function(){
        if ($(this).scrollTop() > 500 ) {
            $("#top_btn").fadeIn();
        } else {
            $("#top_btn").fadeOut();
        }
    });
    $("#top_btn").on("click", function(){
        $('html, body').animate({
            scrollTop: 0
        }, 400);
        return false;
    });
});