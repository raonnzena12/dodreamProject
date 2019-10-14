<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>공지사항</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<meta name="description" content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<STYLE>
#noticeCon {
	width: 1200px;
	min-height:900px;
	height: auto;
}
#cCenter_menu{
	padding: 0;
}
#notice_bar {
	border-bottom: 3px solid #8E44AD;
}

#notice_table {
	padding-top: 20px;
	width: 100%;
	margin: auto;
}
#row{

}
#mounImage{
	width: 100%;
}
.jumbotron{
	padding: 0;
}
</STYLE>
</head>
<body>


	<div class="container-fluid" id="noticeCon">
		<div class="row">
			<div class="col-md-12" align="center">
				<div id=mounImage class="jumbotron">
					<img src="resources/images/backgroundImg/배경로고시안 (3).png" style="width: 100%">
					
					<!-- <h2>Hello, world!</h2>
					<p>This is a template for a simple marketing or informational
						website. It includes a large callout called the hero unit and
						three supporting pieces of content. Use it as a starting point to
						create something more unique.</p>
					<p>
						<a class="btn btn-primary btn-large" href="#">Learn more</a>
					</p> -->
				</div>
			</div>
		</div>
		<div class="sticky-top row">
			<div class="col-md-12 " >
				<ul class="nav" style="background-color: #E1F5A9; ">
					<li class="nav-item"><a class="nav-link active" href="cCenter.dr">공지사항</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="T_O_Service.dr">이용약관</a></li>
					<li class="nav-item"><a class="nav-link " href="fReview.dr">프로젝트 후기</a></li>
					<li class="nav-item"><a class="nav-link " href="faq.dr">FAQ</a></li>

				</ul>
			</div>
		</div>
		<div class="row" id="notice_table">
			<div class="col-md-12" id="cCenter_menu">
				<h3>공지사항</h3>
				<hr id=notice_bar>
				<!-- 공지사항 제목, 내용부분 / 악코디언 부분 -->
				<div id="card-611390"><!-- 내용을 묶는 틀 -->
				
					<!--
					<div class="card">
						<div class="card-header">
							<a class="card-link" href="#card-element-02"
								data-toggle="collapse" data-parent="#card-611390">
								게시글 2 [W9] 전세계가 사랑한 아티스트 데이비드 호크니 작품을 프라이빗하게 즐겨보세요!</a>
						</div>
						<div class="collapse show" id="card-element-02">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="card-link" href="#card-element-03" data-toggle="collapse"
								data-parent="#card-611390">
								게시글 3 [투자] 제 2회 뉴딜로 희망드림 투자형 크라우드펀딩 지원사업!</a>
						</div>
						<div class="collapse" id="card-element-03">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
					-->
				
					<c:forEach var="n" items="${ nList }">
						<div class="card">
							<div class="card-header">
								<a class="card-link collapsed" href="#card-${n.nNo}" target="#card-${n.nNo}"
									data-toggle="collapse"> 
									${n.nTitle}
								</a>
							</div>
							<div class="collapse content" id="card-${n.nNo}">
								<div class="card-body">${n.nContent }</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- <script type="text/javascript">
	
		$card.click(function() {
			var obj = $(this);
			var target = $(this).attr("target");
	
/* 			$card.find("a").removeClass("on");
			obj.addClass("on"); */
	
			$card.find(".content").hide();
			if (tab_urls[target] != null) {
				loadPage(target, 1);
			}
			$card.find(target).show();
		});
		
	</script> -->
	<script src="webapp/resources/js/Center-js/jquery.min.js"></script>
	<script src="webapp/resources/js/Center-js/bootstrap.min.js"></script>
	<script src="webapp/resources/js/Center-js/scripts.js"></script>
</body>
</html>