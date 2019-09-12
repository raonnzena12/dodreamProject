<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀드 등록하기</title>
<link rel="stylesheet" href="resources/css/accordion.css">
<style>
	#accordionContents {
		display: block;
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
    <div class="container">
		<div class="py-5 text-center">
			<h2>펀딩 등록하기</h2>
			<p class="lead">
			빨리빨리 만들어야한다 이말이야
			</p>
		</div>
		<!-- 아코디언메뉴 삽입부 -->
		<div class="row" id="accordionContents">
			<ul>
				<li>
					<input id="rad1" type="radio" name="rad" checked="checked"/>
					<label for="rad1">
						<div>기본정보</div>
					</label>
					<div class="accslide">
						<div class="content">
							<h1>1.</h1>
							<p>프로젝트 기본정보</p>
						</div>
					</div>
				</li>
				<li>
					<input id="rad2" type="radio" name="rad"/>
					<label for="rad2">
						<div>리워드</div>
					</label>
					<div class="accslide">	
						<div class="content">
							<h1>2.</h1>
							<p>리워드 정보</p>
						</div>
					</div>
				</li>
				<li>
					<input id="rad3" type="radio" name="rad"/>
					<label for="rad3">
						<div>스토리</div>
					</label>
					<div class="accslide">
						<div class="content">
							<h1>3.</h1>
							<p>스토리텔링</p>
						</div>
					</div>
				</li>
				<li>
					<input id="rad4" type="radio" name="rad"/>
					<label for="rad4">
						<div>아티스트정보</div>
					</label>
					<div class="accslide">
						<div class="content">
							<h1>4</h1>
							<p>아티스트 정보</p>
						</div>
					</div>
				</li>
			</ul>		
		</div>
	</div>
</body>
</html>