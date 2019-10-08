<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file ="../common/menubar.jsp" %>
<style>
#myFundList {

}
#myFundList #innerCon {
	max-width: 1000px;
	margin: 0 auto;
}
#myFundList #selectMenu {
	height: 50px;
}
.emptyList {
	width: 90%;
	min-height: 300px;
	margin: 100px auto;
	vertical-align: center;
	text-align: center;
	position: relative;
}
.emptyList div {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
	height: 50px;
	color: #999;
	font-size: 14px;
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
</style>
</head>
<body>
<section id="myFundList">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<div id="innerCon">
		<div id="selectMenu">
			<span class="float-right mt-2 mr-2">
				<select name="filter" id="filter">
					<option value="ALL" ${ (empty order || order == "ALL") ? 'selected' : '' }>전체</option>
					<option value="ING" ${ ( order == "ING") ? 'selected' : '' }>결제 예약</option>
					<option value="END" ${ ( order == "END") ? 'selected' : '' }>결제 완료</option>
					<option value="CAN" ${ ( order == "CAN") ? 'selected' : '' }>결제 취소/실패</option>
				</select>
			</span>
		</div>
		<c:choose>
			<c:when test="${ fn:length(rList) == 0 }">
			<div id="listArea">
			<div class="emptyList border rounded">
				<div>후원 내역이 없습니다.<br>
				당신의 아티스트를 후원해보세요!</div>
			</div>
			</div>
			</c:when>
			<c:otherwise>
			<div id="listArea">
			<c:forEach var="r" items="${ rList }">
			<div id="statusMain">
				<div class="projectInfo mb-3 rounded">
					<p class="category text-13">${ r.prjCategoryName }</p>
					<p class="projectStatus text-13">
						<c:choose>
							<c:when test="${ r.dDay > 0 }">
							<i class="material-icons">play_arrow</i>
							진행중
						</c:when>
						<c:when test="${ r.dDay == 0 }">
							<i class="material-icons">play_arrow</i>
							오늘마감
						</c:when>
						<c:when test="${ r.resRefPst == 7 }">
							<i class="material-icons">done</i>
							펀딩성공
						</c:when>
						<c:when test="${ r.resRefPst == 5 }" >
							<i class="material-icons">clear</i>
							펀딩실패
						</c:when>
						</c:choose>
					</p>
					<p class="projectName"><a href="myFundingInfo.dr?rsvNo=${ r.resNo }" target="_blank">${ r.pTitle }</a></p>
					<p class="artist mb-3">by "<a href="#">${ r.artistNickname }</a>"</p>
					<div class="summary">
						<table class="summaryt">
							<tr>
								<td class="text-gray">펀딩 번호</td>
								<td>${ r.resNo }</td>
							</tr>
							<tr>
								<td class="text-gray">펀딩 날짜</td>
								<td>${ r.resDate }</td>
							</tr>
							<tr>
								<td class="text-gray">펀딩 마감일</td>
								<td>${ r.resFundDate }</td>
							</tr>
							<tr>
								<td class="text-gray">펀딩 상태</td>
								<td>
								<c:choose>
									<c:when test="${ r.resStatusNo == 1 }">
									결제 예약
									</c:when>
									<c:when test="${ r.resStatusNo == 2 }">
									결제 완료
									</c:when>
									<c:when test="${ r.resStatusNo == 3 }">
									결제 취소
									</c:when>
									<c:when test="${ r.resStatusNo == 4 }">
									결제 실패
									</c:when>
								</c:choose>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			</c:forEach>
			</c:otherwise>
		</c:choose>
		</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>
</section>
<script>
$(function(){
	$("#filter").on("change", function(){
		location.href='myReserveList.dr?order='+$(this).val();
	});
});
</script>
</body>
</html>