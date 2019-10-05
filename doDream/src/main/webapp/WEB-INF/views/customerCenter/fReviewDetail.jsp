<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>프로젝트후기 - 상세</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<meta name="description" content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">
 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet"> 
<STYLE>
#ReviewCon {
	width: 1200px;
	min-height: 900px;
	height: auto;
}  

#Review_bar {
	border-bottom: 3px solid #8E44AD;
}
 
#Review_table {
	padding-top: 20px;
	width: 100%;
	margin: auto;
}

#FReview_title {
	/* position: absolute; */
	align-content: center;
	right: 0;
	left: 0; 
	margin: 0 auto;
	width: 500px;
}
#rdCategory{
	color: #F39C12;
	display: inline-block;
}

#rdCategory1{
	text-align: left;
}
</STYLE>
</head>
<body>
	<div class="container-fluid" id="ReviewCon">
		<!-- 후기 상세 - 메인로고 -->
		<div class="row">
			<div class="col-md-12" align="center">
				<div class="jumbotron">
				<img src="resources/img/영화간판3.PNG" style="width: 100%">
				</div>
			</div>
		</div>
		<!-- 고객센터 메뉴바 -->
		<div class="sticky-top row" style="background-color: white;">
			<div class="col-md-12" id="cCenter_menu">
				<ul class="nav" style="background-color: #E1F5A9; ">
					<li class="nav-item"><a class="nav-link" href="notice.dr">      공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="T_O_Service.dr"> 이용약관</a></li>
					<li class="nav-item"><a class="nav-link" href="fReview.dr">     프로젝트 후기</a></li>
					<li class="nav-item"><a class="nav-link" href="faq.dr">         FAQ</a></li>

				</ul>
			</div>
		</div>
		
		<div class="row" id="Review_table">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<%-- <c:forEach var="rd" items="${ revdetail }" > --%>
					<div style="text-align: center;">
					제목 들어가는 곳 ${rd.revTitle}
					</div>
					<div style="text-align: center;">"부제목 들어가는 곳" ${rd.revSubTitle}</div>
					<div id="rdCategory"><b>음악 ${rd.revCategoryName}</b>
					<!-- 날짜 / 조회수  -->
					</div>
					
					<span id="rdCategory1">날짜 ${rd.revEnrollDate } / 조회수 : ${rd.revCount }</span>
					<div> http://www.dodream.com/detailSt.dr?pNo=54 해당 펀딩정보로 이동 </div>
					
					<!-- 줄 -->
					<hr id=Review_bar>
					<div>
					<img class="card-img-top" alt="Bootstrap Thumbnail First"
						src="resources/img/아이콘1.PNG" style="padding: 10px; height: 400px">
					<!-- 후기 내용 리스트 -->
					<%-- <c:if test="${ !empty revList }"> --%>
						<div>
							내용
							${rd.revContent}
						</div>
					<%-- </c:if> --%>
					</div>
				<%-- </c:forEach> --%>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>