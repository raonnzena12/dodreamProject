<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림</title>
<%@ include file ="mypageHeader.jsp" %>
<style>
#myProjectList {

}
#listArea {
	min-width: 450px;
}
#myProjectList #innerCon {
	max-width: 1000px;
	margin: 0 auto;
}
#myProjectList #selectMenu {
	height: 50px;
}
.category {
	color: #F39C12 !important;
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
.projectStatus i {
	font-size: 12px;
	font-weight: bold;
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
	color: #8E44AD;
}
.ended {
	background-color: rgb(248,248,248);
}

#historysub{
	text-decoration: none;
}
#historysub>a{
	color: #444;
}

#historysub a.active{
	color: #8E44AD;
}
</style>
</head>
<body>
<section id="myProjectList">
<div class="container-fluid">
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" id="historysub">	
			<a class="" id="sub1" href="myReserveList.dr?userNo=${loginUser.userNo}">나의 참여프로젝트 결제내역</a> ｜ <a class="" id="sub2" href="myProjectList.dr?userNo=${loginUser.userNo}">나의 오픈프로젝트 결제내역</a>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<div id="innerCon">
		<div id="selectMenu">
			<span class="float-right mt-2 mr-2">
				<select name="filter" id="filter">
					<option value="ALL" ${ (empty order || order == "ALL") ? 'selected' : '' }>전체</option>
					<option value="ING" ${ ( order == "ING") ? 'selected' : '' }>진행중</option>
					<option value="END" ${ ( order == "END") ? 'selected' : '' }>펀딩 성공</option>
					<option value="CAN" ${ ( order == "CAN") ? 'selected' : '' }>펀딩 실패</option>
				</select>
			</span>
		</div>
		<c:choose>
			<c:when test="${ fn:length(pList) == 0 }">
			<div id="listArea">
			<div class="emptyList border rounded">
				<div>프로젝트 오픈 내역이 없습니다.<br>
				모두를 두드릴 당신의 꿈을 보여주세요!</div>
			</div>
			</div>
			</c:when>
			<c:otherwise>
			<div id="listArea">
			<c:forEach var="r" items="${ pList }">
			<div id="statusMain">
				<div class="projectInfo mb-3 rounded ${ (r.pStatusNum == 5 || r.pStatusNum == 7)? 'ended' : '' }">
					<p class="category text-13">${ r.pCategoryName }</p>
					<p class="projectStatus text-13">
						<c:choose>
							<c:when test="${ r.pDDay > 0 }">
							<i class="material-icons">play_arrow</i>
							진행중
						</c:when>
						<c:when test="${ r.pDDay == 0 }">
							<i class="material-icons">play_arrow</i>
							오늘마감
						</c:when>
						<c:when test="${ r.pStatusNum == 7 }">
							<i class="material-icons">done</i>
							펀딩성공
						</c:when>
						<c:when test="${ r.pStatusNum == 5 }" >
							<i class="material-icons">clear</i>
							펀딩실패
						</c:when>
						</c:choose>
					</p>
					<p class="projectName"><a href="myPrjInfo.dr?pNo=${ r.pNo }">${ r.pTitle }</a></p>
					<p class="artist mb-3">by "${ r.pArtistName }"</p>
					<div class="summary">
						<table class="summaryt">
							<tr>
								<td class="text-gray">프로젝트 번호</td>
								<td>${ r.pNo }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 오픈 날짜</td>
								<td>${ r.pStartDate }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 마감일</td>
								<td>${ r.pCloseDate }</td>
							</tr>
							<tr>
								<td class="text-gray">프로젝트 달성률</td>
								<td>${ (r.pCurrentFunding/r.pGoal)*100 } %</td>
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
		location.href='myProjectList.dr?order='+$(this).val();
	});
});

$(function(){
	var menu = ${menu} + "";
	
	if(menu ==4){
		$("menu4").addClass("active");
	}
	
	var sub = ${sub} + "";
	if(sub==2){
		$("#sub2").addClass("active");
	}else{
		$("#sub1").addClass("active");
	}
});
</script>
</body>
</html>