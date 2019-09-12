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
});