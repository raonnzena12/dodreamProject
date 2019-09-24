<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>펀딩후기</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<link rel="stylesheet" href="resources/css/fundList.css">
<meta name="description"
	content="Source code generated using layoutit.com">
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
	position: absolute;
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
		<div class="sticky-top row" style="background-color: white;">
			<div class="col-md-12" id="cCenter_menu">
				<ul class="nav" style="background-color: #E1F5A9;">
					<li class="nav-item"><a class="nav-link active"
						href="notice.dr">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="T_O_Service.dr">이용약관</a></li>
					<li class="nav-item"><a class="nav-link " href="fReview.dr">펀딩후기</a></li>
					<li class="nav-item"><a class="nav-link " href="faq.dr">FAQ</a></li>

				</ul>
			</div>
		</div>
		<div class="row" id="Review_table">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>펀딩후기</h3>
				<hr id=Review_bar>
				<div style="position: relative;" class="clearfix">
					<div class="btn-group btn-group-md" role="group" id="FReview_title">
						<button class="btn btn-secondary" type="button">전체</button>
						<button class="btn btn-secondary" type="button">음악</button>
						<button class="btn btn-secondary" type="button">영화</button>
						<button class="btn btn-secondary" type="button">연극</button>
						<button class="btn btn-secondary" type="button">미술</button>
						<button class="btn btn-secondary" type="button">ETC</button>
					</div>
				</div>
				<div class="container-fluid clearfix" id="categoryTop">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10" id="categoryTopMenu">
							<div id="categoryArea" class="my-5">
								<input type="radio" name="category" id="all" value="all" checked><label
									for="all">전체</label> <input type="radio" name="category"
									id="music" value="music"><label for="music">음악</label>
								<input type="radio" name="category" id="movie" value="movie"><label
									for="movie">영화</label> <input type="radio" name="category"
									id="play" value="play"><label for="play">연극</label> <input
									type="radio" name="category" id="art" value="art"><label
									for="art">미술</label> <input type="radio" name="category"
									id="etc" value="etc"><label for="etc">ETC</label>
							</div>
						</div> 
					</div>
				</div>
				<div class="row" style="margin-bottom: 50px">
					<div class="col-md-4">
						<div class="card" style="height: 500px">
							<img class="card-img-top" alt="Bootstrap Thumbnail First"
								src="resources/img/아이콘1.PNG" style="padding: 10px; height: 100%"">
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
					<div class="col-md-4">
						<div class="card" style="height: 500px">
							<img class="card-img-top" alt="Bootstrap Thumbnail Second"
								src="resources/img/아이콘2.PNG" style="padding: 10px; height: 100%">
							<div class="card-block">
								<h5 class="card-title">연극 공연</h5>
								<p class="card-text">나의 아티스트에게 기회를</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card" style="height: 500px">
							<img class="card-img-top" alt="Bootstrap Thumbnail Third"
								src="resources/img/아이콘3.PNG" style="padding: 10px; height: 100%"">
							<div class="card-block">
								<h5 class="card-title">시진전</h5>
								<p class="card-text">힐링되는 시간</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" alt="Bootstrap Thumbnail First"
								src="https://www.layoutit.com/img/people-q-c-600-200-1.jpg">
							<div class="card-block">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Cras justo odio, dapibus ac facilisis
									in, egestas eget quam. Donec id elit non mi porta gravida at
									eget metus. Nullam id dolor id nibh ultricies vehicula ut id
									elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" alt="Bootstrap Thumbnail Second"
								src="https://www.layoutit.com/img/city-q-c-600-200-1.jpg">
							<div class="card-block">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Cras justo odio, dapibus ac facilisis
									in, egestas eget quam. Donec id elit non mi porta gravida at
									eget metus. Nullam id dolor id nibh ultricies vehicula ut id
									elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" alt="Bootstrap Thumbnail Third"
								src="https://www.layoutit.com/img/sports-q-c-600-200-1.jpg">
							<div class="card-block">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Cras justo odio, dapibus ac facilisis
									in, egestas eget quam. Donec id elit non mi porta gravida at
									eget metus. Nullam id dolor id nibh ultricies vehicula ut id
									elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>