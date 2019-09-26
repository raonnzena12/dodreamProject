<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>FAQ</title>
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
					<li class="nav-item"><a class="nav-link" href="cCenter.dr">공지사항</a></li>
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
					<!-- 검색 창 -->
					<div id="faqSearch">	
						<form class="form-inline" action="nsearch.dr" name="searchForm" method="get">
			
							<select id="searchCondition" name="searchCondition">
								<option value="all" <c:if test="${search.searchCondition == 'all'}">selected</c:if> >전체</option>
								<option value="title" <c:if test="${search.searchCondition == 'title'}">selected</c:if> >제목</option>
								<option value="content" <c:if test="${search.searchCondition == 'content'}">selected</c:if> >내용</option>
							</select>
							
							<input class="form-control mr-sm-2" type="search" name="searchValue" value="${search.searchValue}">
							<button class="btn btn-primary my-2 my-sm-0">검색</button><br>
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
					<c:if test="${ !empty fList }">
					<c:forEach var="f" items="${ fList }">
						<div class="card">
						
							<div class="card-header">
								<a class="card-link collapsed" href="#card-${f.fNo}"
									data-toggle="collapse"> 
									${f.fTitle}
								</a>
							</div>
							<div class="collapse content" id="card-${f.fNo}">
								<div class="card-body">${f.fContent }</div>
							</div>
						</div>
					</c:forEach>
					</c:if>
					<c:if test="${ empty fList }">
					<div class="card">
						
							<div class="card-header">
								<a class="card-link collapsed" href="#card-01"
									data-toggle="collapse"> 
									해당 검색 내용이 없습니다.
								</a>
							</div>
							<div class="collapse content show" id="card-01">
								<div class="card-body">다시 입력하시기 바랍니다.</div>
							</div>
						</div>
					</c:if>
					
				</div>
			</div>
		</div>
	</div>


	<script src="webapp/resources/js/Center-js/jquery.min.js"></script>
	<script src="webapp/resources/js/Center-js/bootstrap.min.js"></script>
	<script src="webapp/resources/js/Center-js/scripts.js"></script>
</body>
</html>