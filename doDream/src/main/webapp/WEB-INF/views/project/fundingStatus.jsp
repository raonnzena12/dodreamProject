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
.text-13 {
    font-size: 13px;
    font-weight: bold;
    color: #666;
}
#backToList {
    background-color: #8E44AD;
    color: #fff;
    font-weight: 400;
    text-align: center;
    margin: 20px auto;
}
.category {
    color: #8E44AD;
}
.projectStatus {
    color: #666;
}
.projectStatus i {
    font-size: 13px;
    vertical-align: middle;
    color: #F39C12;
}
.projectName {
    font-size: 28px;
    text-decoration: underline;
}
.projectName a {
    color: #444;
}
.artist {
    font-size: 14px;
}
.artist a {
    color: #444;
    text-decoration: underline;
}
.fStatus {
    font-size: 24px;
    color: #8E44AD;
}
.chargeInfo {
    font-size: 15px;
    line-height: 17px;
}
.rewardTitle {
    font-size: 24px;
    font-weight: 500px;
}
.rewardInfo td {
    font-size: 14px;
    color: #777;
}
.totalCharge {
    font-size: 17px;
    font-weight: 700;
}
.fundingTotal td:not(.totalCharge) {
    font-size: 15px;
    color: #666;
}
.shipPrint p {
    margin-bottom: 2px;
    font-size: 15px;
}
.btn-outline-primary {
    color: #8E44AD;
    border-color: #8E44AD;
}
.btn-outline-primary:hover {
    color: #fff;
    background-color: #8E44AD;
    border-color: #8E44AD;
}
.changeShip {
    display: none;
}
#fundingStatus input[type=text] {
    background-color: #fff;
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
                    <p class="category text-13">${ prj.pCategoryName }</p>
                    <p class="projectStatus text-13">
                        <c:choose>
                            <c:when test="${ prj.pDDay > 0 }">
                            <i class="material-icons">play_arrow</i>
                            진행중
                        </c:when>
                        <c:when test="${ prj.pDDay == 0 }">
                            <i class="material-icons">play_arrow</i>
                            오늘마감
                        </c:when>
                        <c:when test="${ prj.pGoal <= prj.pCurrentFunding }">
                            <i class="material-icons">done</i>
                            펀딩성공
                        </c:when>
                        <c:when test="${ prj.pGoal > prj.pCurrentFunding }" >
                            <i class="material-icons">clear</i>
                            펀딩실패
                        </c:when>
                        </c:choose>
                    </p>
                    <p class="projectName"><a href="#">${ prj.pTitle }</a></p>
                    <p class="artist mb-3">by "<a href="#">${ prj.pArtistName }</a>"</p>
                    <div class="summary">
                        <table class="summaryt">
                            <tr>
                                <td class="text-gray">펀딩 번호</td>
                                <td>${ prj.pNo }</td>
                            </tr>
                            <tr>
                                <td class="text-gray">펀딩 날짜</td>
                                <td>${ rsv.resDate }</td>
                            </tr>
                            <tr>
                                <td class="text-gray">펀딩 마감일</td>
                                <td>${ prj.pCloseDate }</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="funding-status rounded-top">
                    <p class="text-13 mb-1">펀딩 상태</p>
                    <p class="fStatus">
                        <c:choose>
                            <c:when test="${ rsv.resStatusNo == 1 }">
                                결제 대기중
                            </c:when>
                            <c:when test="${ rsv.resStatusNo == 2 }">
                                결제 완료 - 리워드 발송 대기중
                            </c:when>
                            <c:when test="${ rsv.resStatusNo == 3 }">
                                결제 취소
                            </c:when>
                        </c:choose>
                    </p>
                    <c:if test="${ rsv.resStatusNo == 1 }">
                    <p class="chargeInfo">펀딩 종료 후 1 영업일 후인,<br>
                        ${ rsv.resFundDate } 17시에 결제 될 예정입니다.</p>
                    <button class="btn btn-outline-warning btn-block">결제 예약 취소</button>
                    </c:if>
                </div>
                <c:if test="${ rsv.resStatusNo == 1 }">
                <div class="funding-status-additional rounded-bottom">
                    <p class="text-13">결제 예약 취소는 펀딩 마감일인 ${ prj.pCloseDate } 까지 가능합니다.<br>
                    리워드 종류 및 수량 변경은 불가하며, 취소 후 재 펀딩하셔야 합니다.</p>
                </div>
                </c:if>
                <div class="funding-detail rounded-top mt-3">
                    <p class="text-13">결제 내역</p>
                    <!-- 나중에 여기를 for문이나 each로 돌려야 할듯? -->
                <c:set var="rwdSum" value="0" />
                <c:forEach var="rwd" items="${ rList }" >
                    <p class="rewardTitle">${ rwd.rName }</p>
                    <table class="funddeT rewardInfo">
                        <tr>
                            <td>${ rwd.rPrice } / ${ rwd.userAmount }</td>
                            <td>${ rwd.rPrice * rwd.userAmount }</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                발송 시작일 : ${ rwd.rShipDate } 예정
                            </td>
                        </tr>
                    </table><br>
                <c:set var="rwdSum" value="${ rwdSum + (rwd.rPrice * rwd.userAmount) }" />
                </c:forEach>
                </div>
                <div class="funding-detail2 rounded-bottom mb-3">
                    <table class="funddeT fundingTotal">
                        <tr>
                            <td>펀딩금액</td>
                            <td>${ rwdSum }</td>
                        </tr>
                        <tr>
                            <td>추가 후원금</td>
                            <td>${ rsv.addi }</td>
                        </tr>
                        <tr>
                            <td class="border-top pt-2 totalCharge">최종 결제 금액</td>
                            <td class="border-top pt-2 totalCharge">${ rwdSum + rsv.addi }</td>
                        </tr>
                    </table>
                </div>
                <div class="funding-status rounded-top">
                    <p class="text-13">결제 정보</p>
                    <table class="funddeT mb-3 fundingTotal">
                        <tr>
                            <td>결제방법</td>
                            <td>신용(체크)카드</td>
                        </tr>
                        <tr>
                            <c:set var="length" value="${ fn:length(rsv.resCustomerUid) }" />
                            <td>카드번호</td>
                            <td>************${ fn:substring(rsv.resCustomerUid, length-2, length) }</td>
                        </tr>
                    </table>
                    <c:if test="${ rsv.resStatusNo == 1 }">
                    <button class="btn btn-outline-warning btn-block">결제 정보 변경하기</button>
                    </c:if>
                </div>
                <c:if test="${ rsv.resStatusNo == 1 }" >
                <div class="funding-status-additional rounded-bottom text-13">
                    <p class="info1">결제 정보 변경은 펀딩 결제 예정일 ${ rsv.resFundDate } 까지 가능합니다.</p>
                </div>
                </c:if>
                <div class="funding-status rounded-top mt-3">
                    <p class="text-13">배송지 정보</p>
                    <div class="shipPrint mb-3">
                        <p class="shipName">${ rsv.resName }</p>
                        <p class="shipPhone">${ rsv.resContact }</p>
                        <p class="shipAddr1">(${ fn:split(rsv.resAddress,",")[0] })${fn:split(rsv.resAddress,",")[1]}</p>
                        <p class="shipAddr2">${ fn:split(rsv.resAddress,",")[2] }</p>
                        <p class="shipRequest mb-3">배송 요청사항 : ${ rsv.resRequest }</p>
                        <c:if test="${ rsv.resStatusNo == 1 }">
                        <button class="btn btn-outline-warning btn-block" id="changeShipAddr">배송지 정보 변경하기</button>
                        </c:if>
                    </div>
                    <div class="changeShip mb-3">
                        <table>
                            <tr>
                                <td class="p-1"><input type="text" name="cShipName" id="cShipName" class="form-control" placeholder="이름" value="${ rsv.resName }"></td>
                                <td class="p-1"><input type="text" name="cShipPhone" id="cShipPhone" class="form-control" placeholder="전화번호" value="${ rsv.resContact }"></td>
                            </tr>
                            <tr>
                                <td class="p-1">
                                    <input type="text" name="cShipPostCode" id="cShipPostCode" class="form-control" placeholder="우편번호" value='${fn:split(rsv.resAddress,",")[0]}' readonly>
                                </td>
                                <td cladd="p-1">
                                    <input type="text" name="cShipAddr1" id="cShipAddr1" class="form-control" placeholder="주소" value='${fn:split(rsv.resAddress,",")[1]}' readonly>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="p-1">
                                    <input type="text" name="cShipAddr2" id="cShipAddr2" class="form-control" placeholder="상세주소" value='${ fn:split(rsv.resAddress,",")[2]}'>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="p-1">
                                    <input type="text" name="resRequest" id="resRequest" class="form-control" placeholder="배송시 요청사항" value='${ rsv.resRequest }'>
                                </td>
                            </tr>
                            <tr>
                                <td class="p-1">
                                    <button class="btn btn-outline-primary btn-block" id="cancelC">취소</button>
                                </td>
                                <td class="p-1">
                                    <button class="btn btn-outline-warning btn-block" id="shipChangeBtn">배송지 정보 변경</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="funding-status-additional rounded-bottom mb-3 text-13">
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
<script>
$(function(){
    $("#changeShipAddr").on("click", function(){
        $(this).parent().hide();
        $(".changeShip").show();
    });
    $("#cancelC").on("click", function(){
        $(".changeShip").hide();
        $(".shipPrint").show();
    });
    $("#cShipAddr1, #cShipPostCode").postcodifyPopUp({
        insertPostcode5 :"#cShipPostCode",
        insertAddress : "#cShipAddr1",
        insertDetails: "#cShipAddr2"
    });
    $("#shipChangeBtn").on("click", function(){
        var newName = $("#cShipName").val();
        var newPhone = $("#cShipPhone").val();
        var newPost5 = $("#cShipPostCode").val();
        var newAddr1 = $("#cShipAddr1").val();
        var newAddr2 = $("#cShipAddr2").val();
        var newRequest = $("#resRequest").val();
        var rsvNo = ${ rsv.resNo };

        $.ajax({
            url: "ajaxAddressChange.dr",
            data: { resNo: rsvNo,
                    resName: newName,
                    resContact: newPhone,
                    resAddress: newAddr1+newAddr2+newPost5,
                    resRequest: newRequest },
            error: function(e){ console.log(e); },
            success: function(result) {
                console.log(result);
            }
        });
    }); 
});
</script>
</body>
</html>