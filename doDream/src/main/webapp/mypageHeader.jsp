<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"/>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"/>
	<style>
		#navOuter{
			border-top: 1px solid lightgrey;
			border-bottom: 1px solid lightgrey;
			height: 50px;
		}
		#navOuter ul li a{
			color: #444;
		}
	</style>

</head>
<body>
	<jsp:include page="WEB-INF/views/common/menubar.jsp"/> <!-- 페이지위치 변경하기 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-10">
				<h4 class="mb-5">My Page</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">
				<h4 class="text-left mb-4">
					닉네임님 환영합니다.
					<img src="" class="rounded-circle float-sm" />
				</h4>
				<blockquote class="blockquote">
					<p class="mb-0">"자기소개자기소개 들어갑니다"</p>
				</blockquote>
				<div>
					<p>팔로워 몇명</p> &npsp; &npsp; <p>팔로잉 몇명</p>
				</div>
			</div>
			<div class="col-md-5">
				<img alt="Bootstrap Image Preview"
					src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg"
					class="rounded-circle" id=""/>
				<img
					src="resources/images/settings_icon.png"
					class="rounded-circle float-sm align-top"
					id="setting" />
			</div>
		</div>
		<div style="height: 20px;"></div>
		<div class="row sticky-top" id="navOuter">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link" href="#">펀딩</a></li>
							<li class="nav-item"><a class="nav-link" href="#">♥</a></li>
							<li class="nav-item"><a class="nav-link" href="#">알림</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link" href="#">펀딩로그</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div style="height: 2000px;"></div>
	</div>
</body>
</html>