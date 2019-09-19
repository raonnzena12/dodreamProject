<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../common/menubar.jsp" %>
<style>
	#category div {
		/* border: 1px solid; */
		/* height: 100px; */
		width: 100%;
	}
	#categoryTop {
		border-bottom: 1px solid #ddd;
	}
	#categoryArea input[type=radio] {
		display: none;
	}
	#categoryArea input[type=radio]:checked+label {
		color: #fff;
		background-color: #F39C12;
	}
	#categoryArea label {
		display: inline-block;
		width: 100px;
		height: 40px;
		margin: 0 20px;
		background-color: #ddd;
		text-align: center;
		vertical-align: center;
		border-radius: 5px;
		line-height: 40px;
	}
	#categoryTopMenu {
		text-align: center;
		padding-top: 60px;
		padding-bottom: 20px;
	}
	.font15 {
		font-size: 15px;
	}
	#resultMenu input, #resultMenu select, #resultMenu option {
		border: none;
		text-align: right;
	}
	#resultMenu input[type=search]:focus, #resultMenu select:focus {
		outline: none;
	}
</style>
</head>
<body>
	<section id="category">
		<div class="container-fluid clearfix" id="categoryTop">
			<div class="row">
				<div class="col-md-1">
				</div>
				<div class="col-md-10" id="categoryTopMenu">
					<span class="font15">당신의 마음을 두드릴 아티스트를 찾아보세요</span>
					<div id="categoryArea" class="my-5">
						<input type="radio" name="category" id="all" value="all" checked><label for="all">전체</label>
						<input type="radio" name="category" id="music" value="music"><label for="music">음악</label>
						<input type="radio" name="category" id="movie" value="movie"><label for="movie">영화</label>
						<input type="radio" name="category" id="play" value="play"><label for="play">연극</label>
						<input type="radio" name="category" id="art" value="art"><label for="art">미술</label>
						<input type="radio" name="category" id="etc" value="etc"><label for="etc">ETC</label>
					</div>
				</div>
				<div class="col-md-1">
				</div>
			</div>
		</div>
		<div class="container-fluid" id="categoryResult">
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-10">
						<div id="resultMenu" class="my-4">
							<span>전체보기</span>
							<span>
								<form action="">
								<input type="search" name="fundKeyword" id="fundKeyword">
								<i class="material-icons" id="titleSearchSubmit">search</i>
								<select name="filter" id="filter">
									<option value="allFunding" selected>전체</option>
									<option value="runFunding">진행중인 펀딩</option>
									<option value="endFunding">종료된 펀딩</option>
								</select>
								<select name="filter2" id="filter2">
									<option value="popularClick">인기순</option>
									<option value="newest">최신순</option>
									<option value="priceless">최고금액순</option>
									<option value="popularFund">최다후원순</option>
									<option value="Deadline">마감임박순</option>
								</select>
								</form>
							</span>
						</div>
					</div>
					<div class="col-md-1">
					</div>
				</div>
			</div>
	</section>
</body>
</html>