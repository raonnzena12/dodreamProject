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
			<c:forEach var="f" items="${ fList }">
				<div class="col-md-12">
					<h3>프로젝트 제목</h3>
					<c:if test="${ !empty fList }">
						<div>
							${f.fTitle}
							<!-- 제목 -->
						</div>
						<div class="card">
							<div class="card-header">
								<a class="card-link collapsed" href="#card-${f.fNo}"
									data-toggle="collapse"> ${f.fTitle} </a>
							</div>
							<div class="collapse content" id="card-${f.fNo}">
								<div class="card-body">${f.fContent }</div>
							</div>
						</div>
					</c:if>
					<div></div>
					<hr id=Review_bar>

					<div class="row" style="margin-bottom: 50px">
						<div class="col-md-4">
							<div class="card" style="height: 500px">
								<img class="card-img-top" alt="Bootstrap Thumbnail First"
									src="resources/img/아이콘1.PNG"
									style="padding: 10px; height: 100%"">
								<div class="card-block">
									<h5 class="card-title">인디밴드 공연</h5>
									<p class="card-text">보람있는 펀딩!</p>
									<p>
										<a class="btn btn-primary" href="#">Action</a> <a class="btn"
											href="#">Action</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>