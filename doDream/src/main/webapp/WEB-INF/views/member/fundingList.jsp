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
			<!-- 작업중 // 나중에 조건 값 0으로 바꿔줄것 -->
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
			<div id="selectMenu">
				<span class="float-right mt-2 mr-2">
					<select name="filter" id="filter">
						<option value="ALL" selected>전체</option>
						<option value="1">결제 예약</option>
						<option value="2">결제 완료</option>
						<option value="3">결제 취소/실패</option>
					</select>
				</span>
			</div>
			<div id="listArea">
				rList가 있습니다.
			</div>
			</c:otherwise>
		</c:choose>
		</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>
</section>
</body>
</html>