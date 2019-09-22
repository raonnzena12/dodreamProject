<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림 - 나의 펀딩현황</title>
<%@ include file="../common/menubar.jsp" %>
<style>
#statusMain {
    max-width: 600px;
    margin: 40px auto;
}
.projectInfo, .funding-status, .funding-detail {
    padding: 24px 20px 20px;
    border: 1px solid #ccc;
}
.funding-status-additional {
    border: 1px solid #eee;
    border-top: none;
    padding: 15px 20px 5px;
    background-color: rgb(245, 245, 245);
}
.funding-detail2 {
    border: 1px solid #eee;
    border-top: none;
    padding: 15px 20px 15px;
    background-color: rgb(245, 245, 245);
}
.projectInfo>p {
    margin: 0;
}
.summary {
    padding-top: 20px;
    border-top: 1px solid #ccc;
}
.summaryt, .funddeT {
    width: 100%;
}
.summaryt td {
    font-size: 13px;
    font-weight: 400;
}
.text-gray {
    color : #888;
}
.summaryt td:nth-child(2), .funddeT td:nth-child(2) {
    text-align: right;
}
.btn-outline-warning {
    color: #F39C12;
    border-color: #F39C12;
}
.info1 {
    font-size: 13px;
}
#backToList {
    background-color: #8E44AD;
    color: #fff;
    font-weight: 400;
    text-align: center;
    margin: 20px auto;
}
</style>
</head>
<body>
<c:set var="aa" value="aa" />
<section id="fundingStatus">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div id="statusMain">
                <div class="projectInfo mb-3 rounded">
                    <p class="category">카테고리 표시되는곳</p>
                    <p class="projectStatus">프로젝트 진행여부 표시되는 곳</p>
                    <p class="projectName">프로젝트 이름 들어가는 곳</p>
                    <p class="artist mb-3">아티스트 이름 들어가는 곳</p>
                    <div class="summary">
                        <table class="summaryt">
                            <tr>
                                <td class="text-gray">펀딩 번호</td>
                                <td>번딩번호 들어가는 곳</td>
                            </tr>
                            <tr>
                                <td class="text-gray">펀딩 날짜</td>
                                <td>펀딩 결제한 날짜 들어가는 곳</td>
                            </tr>
                            <tr>
                                <td class="text-gray">펀딩 마감일</td>
                                <td>펀딩 마감되는 날짜 들어가는 곳</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="funding-status rounded-top">
                    <p>펀딩 상태</p>
                    <p>펀딩 상태가 출력되는 라인</p>
                    <p>펀딩 종료 후 1 영업일 후인,<br>
                    모월 모일 몇시에 결제 될 예정입니다.</p>
                    <button class="btn btn-outline-warning btn-block">결제 예약 취소</button>
                </div>
                <div class="funding-status-additional rounded-bottom mb-3">
                    <p class="info1">결제 예약 취소는 펀딩 마감일인 ${ aa } 까지 가능합니다.<br>
                    리워드 종류 및 수량 변경은 불가하며, 취소 후 재 펀딩하셔야 합니다.</p>
                </div>
                <div class="funding-detail rounded-top">
                    <p>결제 내역</p>
                    <!-- 나중에 여기를 for문이나 each로 돌려야 할듯? -->
                    <p>리워드 제목 들어가는 란</p>
                    <table class="funddeT">
                        <tr>
                            <td>리워드 금액 / 선택 리워드 수</td>
                            <td>리워드 금액 * 리워드 수</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                발송 시작일 : ${ aa } 예정
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="funding-detail2 rounded-bottom mb-3">
                    <table class="funddeT">
                        <tr>
                            <td>펀딩금액</td>
                            <td>펀딩금액 들어가는 란</td>
                        </tr>
                        <tr>
                            <td>추가 후원금</td>
                            <td>추가 후원금 들어가는 란</td>
                        </tr>
                        <tr>
                            <td>배송비</td>
                            <td>배송비 들어가는 란</td>
                        </tr>
                        <tr>
                            <td>최종 결제 금액</td>
                            <td>최종 결제 금액 들어가는 란</td>
                        </tr>
                    </table>
                </div>
                <div class="funding-status rounded-top">
                    <p>결제 정보</p>
                    <table class="funddeT mb-3">
                        <tr>
                            <td>결제방법</td>
                            <td>신용(체크)카드</td>
                        </tr>
                        <tr>
                            <td>카드번호</td>
                            <td>************${ aa }</td>
                        </tr>
                    </table>
                    <button class="btn btn-outline-warning btn-block">결제 정보 변경하기</button>
                </div>
                <div class="funding-status-additional rounded-bottom mb-3">
                    <p class="info1">결제 정보 변경은 펀딩 결제 예정일 ${ aa } 까지 가능합니다.</p>
                </div>
                <div class="funding-status rounded-top">
                    <p>배송지 정보</p>
                    <button class="btn btn-outline-warning btn-block">배송지 정보 변경하기</button>
                </div>
                <div class="funding-status-additional rounded-bottom mb-3">
                    <p class="info1">펀딩 종료 이 후에는 서포터의 배송지 정보가 아티스트에게 전달되기 때문에, 종료 이 후 배송 정보 변경 등에 대한 문의는 아티스트에게 직접하셔야 합니다.</p>
                </div>
                <p></p>
                <button class="btn btn-light btn-lg btn-block" id="backToList">목록으로 돌아가기</button>
            </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
</section>
</body>
</html>