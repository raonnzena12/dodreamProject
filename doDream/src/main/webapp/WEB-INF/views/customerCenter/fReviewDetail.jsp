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
</STYLE>
</head>
<body>

	<div class="container-fluid" id="ReviewCon">
		<div class="row">
			<div class="col-md-12" align="center">
				<div class="jumbotron">
				<img src="resources/img/영화간판3.PNG" style="width: 100%">
				</div>
			</div>
		</div>
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
				<div style="text-align: center;">
				제목 들어가는 곳
				</div>
				<div style="text-align: center;">"부제목 들어가는 곳"</div>
				<div>음악</div>
				<div>${rev.revEnrollDate } / 조회수 : 1,000</div>
				
				<c:if test="${ !empty revList }">
					<div>
						${f.revTitle} <!-- 제목 -->
					</div>
					<c:forEach var="rev" items="${ fList }">
						<div class="card">
							<div class="card-header">
								<a class="card-link collapsed" href="#card-${f.fNo}"
									data-toggle="collapse"> 
									${f.fTitle}
								</a>
							</div>
						<div class="collapse content" id="card-${f.revNo}">
							<div class="card-body">${f.revContent }</div>
						</div>
					</div>
				</c:forEach>
				</c:if>
				<div>
				</div>
				<hr id=Review_bar>
				<div>
				<img class="card-img-top" alt="Bootstrap Thumbnail First"
					src="resources/img/아이콘1.PNG" style="padding: 10px; height: 100%"">
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>