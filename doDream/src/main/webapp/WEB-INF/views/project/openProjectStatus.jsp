<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림 - 나의 오픈 프로젝트 현황</title>
<%@ include file="../common/menubar.jsp" %>
<style>
#statusMain {
    min-width: 450px;
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
#creditCard {
    font-size: 15px;
}
#creditCard input[type="number"]::-webkit-outer-spin-button,
#creditCard input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
#creditCard input {
    background-color: #fff;
}
.changeCredit {
    display: none;
}
</style>
<!-- 가상 숫자패드 CSS/JS --> 
</head>
<body>
<c:set var="aa" value="aa" />
<section id="fundingStatus">
<c:url var="fundingDetail" value="detailSt.dr" >
    <c:param name="pNo" value="${ prj.pNo }" />
</c:url>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div id="statusMain">
				<div class="projectInfo mb-3 rounded ${ (prj.pStatusNum == 5 || prj.pStatusNum == 7)? 'ended' : '' }">
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
						<c:when test="${ prj.pStatusNum == 7 }">
							<i class="material-icons">done</i>
							펀딩성공
						</c:when>
						<c:when test="${ prj.pStatusNum == 5 }" >
							<i class="material-icons">clear</i>
							펀딩실패
						</c:when>
						</c:choose>
					</p>
					<p class="projectName"><a href="#" target="_blank">${ prj.pTitle }</a></p>
					<p class="artist mb-3">by "${ prj.pArtistName }"</p>
					<div class="summary">
						<table class="summaryt">
							<tr>
								<td class="text-gray">프로젝트 번호</td>
								<td>${ prj.pNo }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 오픈 날짜</td>
								<td>${ prj.pStartDate }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 마감일</td>
								<td>${ prj.pCloseDate }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 달성률</td>
								<td>${ (prj.pCurrentFunding/prj.pGoal)*100 } %</td>
							</tr>
						</table>
					</div>
				</div>

                <div class="funding-detail rounded-top mt-3">
                    <p class="text-13">리워드 예약 내역</p>
                <c:set var="rwdSum" value="0" />
                <c:forEach var="rwd" items="${ rList }" varStatus="status" >
                    <p class="rewardTitle">${ rwd.rName }</p>
                    <table class="funddeT rewardInfo">
                        <tr>
                            <td colspan="2"><fmt:formatNumber value="${ rwd.rPrice }" groupingUsed="true"/> / ${ rwd.rLimit }개 제한 / ${ rwd.rSum }개 주문</td>
                        </tr>
                        <tr>
                            <td>
                                발송 시작일 : ${ rwd.rShipDate } 예정
                            </td>
                            <td>총 금액 ￦<fmt:formatNumber value="${ rwd.rPrice * rwd.rSum }" groupingUsed="true"/></td>
                        </tr>
                    </table><br>
                <c:set var="rwdSum" value="${ rwdSum + (rwd.rPrice * rwd.rSum) }" />
                <c:if test="${ status.index != fn:length(rList)-1 }">
                <hr class="mt-1">
                </c:if>
                </c:forEach>
                </div>
                <div class="funding-detail2 rounded-bottom mb-3">
                    <table class="funddeT fundingTotal">
                        <tr>
                            <td>펀딩 금액</td>
                            <td><fmt:formatNumber value="${ rwdSum }" groupingUsed="true"/></td>
                        </tr>
                        <tr>
                            <td>추가 후원금</td>
                            <td><fmt:formatNumber value="${ prj.additional }" groupingUsed="true"/></td>
                        </tr>
                        <tr>
                            <td class="border-top pt-2 totalCharge">최종 펀딩 금액</td>
                            <td class="border-top pt-2 totalCharge"><fmt:formatNumber value="${ rwdSum + prj.additional }" groupingUsed="true"/></td>
                        </tr>
                    </table>
                </div>
                <button class="btn btn-light btn-lg btn-block mt-4" id="backToList" type="button">목록으로 돌아가기</button>
            </div>
        </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
</section>
<script>
$(function(){
    $("#backToList").on("click", function(){
        location.href='myProjectList.dr';
    });
});
</script>
</body>
</html>