<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THANK YOU!</title>
<%@ include file="../common/menubar.jsp" %>
<style>
#fdComplete #innerCon {
    max-width: 600px;
    margin: 20px auto;
}
#fdComplete .thanksText {
    text-align: center;
    border: 1px solid #8E44AD;
    border-radius: 5px;
    color: #8E44AD;
    font-weight: 600;
    padding: 30px;
    font-size: 20px;
}
#shareBtn {
    width: 40px;
    height: 40px;
    padding: 0;
}
.font-14 {
    font-size: 14px;
}
.infoText {
    font-size: 13px;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
}
</style>
</head>
<body>
<section id="fdComplete">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12 py-4">
                    <div id="innerCon">
                        <div class="thanksText">
                            ${ loginUser.userNickname }서포터님!<br>
                            펀딩에 참가해주셔서 감사합니다!
                        </div>
                        <div class="sharing my-5 px-4 row">
                            <div class="col-md-9 font-14">
                                공유하기로 프로젝트를 응원하세요 :)<br>
                                아티스트의 꿈이 세상에 알려질 수 있도록 공유해주세요
                            </div>
                            <div class="col-md-3">
                                <button type="button" class="btn btn-light rounded-circle border" id="shareBtn"><i class="material-icons">share</i></button>
                            </div>
                        </div>
                        <div class="infoArea">
                            <p class="font-14 px-4">두드림의 프로젝트 펀딩은 결제 예약 시스템을 이용합니다.</p>
                            <div class="infoText pt-4 pb-3">
                                <ul>
                                    <li class="my-1">쇼핑하기처럼 지금 결제가 되지 않았습니다. 프로젝트가 성공하면 결제가 실행됩니다.</li>
                                    <li class="my-1">프로젝트 종료일(${ pCloseDate })의 다음 영업일에 펀딩 선공여부에 따라 결제실행/결제취소가 진행됩니다.</li>
                                    <li class="my-1">프로젝트 실패 시 결제예약 정보가 자동으로 삭제되고 결제가 진행되지 않습니다.</li>
                                    <li class="my-1">결제실행일에 결제자 귀책사유(카드재발급, 한도초과, 이용정지 등)로 인하여 결제가 실패 할 수 있으니, 결제예약으로 등록하신 카드가 유효한지 다시 한번 확인하세요.</li>
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
        </div>
        </div>
    </div>
</section>
</body>
</html>