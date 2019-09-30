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
	position: absolute;
	align-content: center;
	right: 0;
	left: 0;
	margin: 0 auto;
	width: 500px;
}
.jumbotron{
	padding: 0;
}
#categoryTopMenu {
    text-align: center;
    padding: 0 20px;
}
</STYLE>
</head>
<body>

	<div class="container-fluid" id="ReviewCon">
		<div class="row">
			<div class="col-md-12" align="center">
				<div class="jumbotron">
					<img src="resources/images/backgroundImg/배경로고시안 (2).png" style="width: 100%">
				</div>
			</div>
		</div>
		<div class="sticky-top row" style="background-color: white;">
			<div class="col-md-12" id="cCenter_menu">
				<ul class="nav" style="background-color: #E1F5A9;">
					<li class="nav-item"><a class="nav-link" href="cCenter.dr">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="T_O_Service.dr">이용약관</a></li>
					<li class="nav-item"><a class="nav-link" href="fReview.dr">프로젝트 후기</a></li>
					<li class="nav-item"><a class="nav-link" href="faq.dr">FAQ</a></li>

				</ul>
			</div>
		</div>
		<div class="row" id="Review_table">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>프로젝트 후기</h3>
				<hr id=Review_bar>
				
				<!-- 프로젝트 후기 카테고리 -->
				<div class="container-fluid clearfix" id="categoryTop">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10" id="fReviewTopMenu">
							<div id="categoryArea" class="my-5">
								<input type="radio" name="category" id="all"   value="all" checked><label for="all">전체</label> 
								<input type="radio" name="category" id="music" value="music"> <label for="music">음악</label>
								<input type="radio" name="category" id="movie" value="movie"> <label for="movie">영화</label> 
								<input type="radio" name="category" id="play"  value="play">  <label for="play">연극</label> 
								<input type="radio" name="category" id="art"   value="art">   <label for="art">미술</label> 
								<input type="radio" name="category" id="etc"   value="etc">   <label for="etc">ETC</label>
							</div> 
						</div>  
					</div>
				</div>
				
				<!-- 프로젝트 후기 검색 리스트 -->
				<%-- 
				<div id="resultMenu" class="my-4">
                  <span>전체보기</span>
                  <span class="float-right">
                     <form action="${ keywordSearch }">
                     <input type="search" name="fundKeyword" id="fundKeyword">
                     <i class="ver-super material-icons" id="titleSearchSubmit">search</i>
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
               --%>
               
               <!-- 프로젝트 후기 리스트 출력 -->
				<div class="resultPrint">
	              <c:forEach var="fr" items="${ rList }" >
	              <div>
	                 <div class="fundCon">
	                    <div class="fundItem" id="${ fr.rNo }">
	                       <div class="fundImg">
	                          <!-- <img src="resources/projectImg/thumbnail/${ fr.pThumbImage }"> -->
	                          <img src="resources\img\고양이.PNG">
	                       </div>
	                       <div class="nameArea">
	                          <span class="categoryName">
	                          	<%-- ${ fr.pCategoryName } --%>
	                          	프로젝트 후기 이름
	                          </span><br>
	                          <span class="fundName">
	                             <!--
	                             <c:choose>
	                                <c:when test="${ fn:length(fr.pTitle) > 10 }">
	                                ${ fn:substring(fr.pTitle,0,10) }…
	                                </c:when>
	                                <c:otherwise>
	                                ${ fr.pTitle }
	                                </c:otherwise>
	                             </c:choose>
	                             -->
	                          </span>
	                       </div>
	                       <div class="heartIcon">
	                          <i class="material-icons heart-fund">favorite_border</i>
	                       </div>
	                       <div class="detailArea my-1">
	                          <span class="detailText">
	                             <c:choose>
	                                <c:when test="${ fn:length(fr.pSummaryText) > 45 }">
	                                ${ fn:substring(fr.pSummaryText,0,60) }…
	                                </c:when>
	                                <c:otherwise>
	                                ${ fr.pSummaryText }
	                                </c:otherwise>
	                             </c:choose>
	                          </span>
	                       </div>
	                       <div class="chartArea px-3 mt-2">
	                          <div class="chartInfo clearfix">
	                             <span class="chartInfo1">￦<fmt:formatNumber value="${ fr.pCurrentFunding }" groupingUsed="true" /></span>
	                             <span class="chartInfo2"><fmt:parseNumber value="${ (fr.pCurrentFunding / fr.pGoal) * 100 }" integerOnly="true" />%</span>
	                          </div>
	                          <div class="chartBar">
	                          <c:choose>
	                             <c:when test="${ ((fr.pCurrentFunding / fr.pGoal) * 100) < 100 }">
	                             <div class="purpleBar" style="width:${ (fr.pCurrentFunding / fr.pGoal) * 100 }%"></div>
	                             </c:when>
	                             <c:otherwise>
	                             <div class="purpleBar"></div>                                       
	                             </c:otherwise>
	                          </c:choose>
	                          </div>
	                          <c:choose>
	                             <c:when test="${ fr.pDDay > 0 }">
	                             <div class="chartDate">${ fr.pDDay }일 남음</div>
	                             </c:when>
	                             <c:otherwise>
	                             <div class="chartDate">펀딩 종료</div>
	                             </c:otherwise>
	                          </c:choose>
	                       </div>
	                    </div>
	                 </div>
	              </div>
	              </c:forEach>
	           </div>
			</div>
			
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>