<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>공지사항</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<STYLE> 
#noticeCon {
	width: 1200px;
	min-height: 900px;
	height: auto;
}
 
#notice_bar {
	border-bottom: 3px solid #8E44AD;
}

#notice_table {
	padding-top: 20px;
	width: 100%;
	margin: auto;
}

#faqTitle {
	width: 50%;
	float: left;
	padding: 0;
}

#faqSearch {
	/* width: 50%; */
	float: right;
	padding: 0;
}
</STYLE>
</head>
<body>


	<div class="container-fluid" id="noticeCon">
		<div class="row">
			<div class="col-md-12" align="center" style="padding: 0;">
				<div class="jumbotron">
					<img src="resources/img/영화간판4.PNG" style="width: 100%">
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
			<div class="col-md-12 ">
				<ul class="nav" style="background-color: #E1F5A9;">
					<li class="nav-item"><a class="nav-link" href="notice.dr">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="T_O_Service.dr">이용약관</a></li>
					<li class="nav-item"><a class="nav-link" href="fReview.dr">펀딩후기</a></li>
					<li class="nav-item"><a class="nav-link" href="faq.dr">FAQ</a></li>
				</ul>
			</div>
		</div>
		<div class="row" id="notice_table">
			<div class="col-md-12" style="padding: 0;">
				<div>
					<div class="col-md-12" id="faqTitle">
						<h3>FAQ</h3>
					</div>
					<div id="faqSearch">
						<form class="form-inline">
							<input class="form-control mr-sm-2" type="text" />
							<button class="btn btn-primary my-2 my-sm-0" type="submit">
								Search</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div>
				<hr id=notice_bar>
				<!-- 공지사항 제목, 내용부분 / 악코디언 부분 -->
				<div id="card-611390">
					<!-- 내용을 묶는 틀 -->
					<div class="card">
						<div class="card-header">
							<a class="card-link collapsed" href="#card-element-01"
								data-toggle="collapse" data-parent="#card-611390"> [투자]
								함께하고, 떠나세요. 가을 한정 특별 이벤트!</a>
						</div>
						<div class="collapse" id="card-element-01">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="card-link" href="#card-element-02"
								data-toggle="collapse" data-parent="#card-611390"> [W9] 전세계가
								사랑한 아티스트 데이비드 호크니 작품을 프라이빗하게 즐겨보세요!</a>
						</div>
						<div class="collapse show" id="card-element-02">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="card-link" href="#card-element-03" data-toggle="collapse"
								data-parent="#card-611390"> [투자] 제 2회 뉴딜로 희망드림 투자형 크라우드펀딩
								지원사업!</a>
						</div>
						<div class="collapse" id="card-element-03">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="card-link" href="#card-element-04" data-toggle="collapse"
								data-parent="#card-611390"> [리워드] 메이커들을 위한 9월 앵콜펀딩 혜택전 1차</a>
						</div>
						<div class="collapse" id="card-element-04">
							<div class="card-body">Anim pariatur cliche...</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="webapp/resources/js/Center-js/jquery.min.js"></script>
	<script src="webapp/resources/js/Center-js/bootstrap.min.js"></script>
	<script src="webapp/resources/js/Center-js/scripts.js"></script>
</body>
</html>