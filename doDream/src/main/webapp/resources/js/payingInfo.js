$(function(){
    // 가상 키패드 LOADING
    $('#card2').numberKeypad({
        // wrap: $('.wrapper'),
        // arrKeys: [1, 2, 3, 4, 5, 6, 7, 8, 9, 'x', 0, 'ok'],
        // login: false // 이하 커스텀 스타일
    }); 
    $('#card3').numberKeypad();
    $('#cPassword').numberKeypad();
    // 전체동의하기 체크하면 전체 체크처리
    $("#allCheck").on("click", function(){
        if( $(this).is(":checked") ) {
            $("#agree1").prop("checked","checked");
            $("#agree2").prop("checked","checked");
        } else {
            $("#agree1").prop("checked", false);
            $("#agree2").prop("checked", false);
        }
    });
    // 각각의 동의문 전부 체크되면 전체동의하기 체크처리
    $("input:checkbox").on("click", function(){
        if ( $("#agree1").is(":checked") && $("#agree2").is(":checked") ) {
            $("#allCheck").prop("checked","checked");
        } else {
            $("#allCheck").prop("checked",false);
        }
    });
    // 기존배송지 - 새 배송지 페이지 진입시 보여줄 페이지 선택
    if ( $("input[type=radio]").length == 1 ) {
        // console.log("기존 배송지가 없음");
        $("#ship2").show();
    } else {
        // console.log("기존 배송지가 있음");
        $("#ship1").show();
    }
    // 기존배송지 - 새배송지 전환시 입력Area 전환
    $("input:radio").on("click", function(){
        if ($("#current").is(":checked")) { 
            // 기존 배송지가 체크할 경우 기존 배송지 출력
            $("#ship1").show();
            $("#ship2").hide();
        }
        if ($("#newAddress").is(":checked")) {
            // 새 배송지 체크할 경우 새 배송지 출력
            $("#ship1").hide();
            $("#ship2").show();
        }
    });
    // 전화번호 정규식 검사
    $("input[id$=Phone]").on("blur",function(){
        var regExp = /^\d{3}\d{3,4}\d{4}$/;
        var pNum = $(this).val();
        if ( regExp.test(pNum) ) {
            // 정규식 통과할 경우 평범한 색으로 되돌림
            $(this).removeClass("borderRed");
            $(this).parent().parent().next().children().eq(1).children().hide();
        } else {
            // 정규식 통과하지 못할 경우 테두리를 빨간색으로 만듬
            $(this).addClass("borderRed");
            $(this).parent().parent().next().children().eq(1).children().show();
        }
    });
});