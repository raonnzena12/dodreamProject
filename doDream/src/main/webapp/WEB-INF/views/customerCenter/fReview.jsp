<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>프로젝트 후기</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<link rel="stylesheet" href="resources/css/fundList.css">
<style>
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
.fundImg>img {
    width: 100%;
    height: 180px;
}
.fundCon {
    /* border: 1px solid red; */
    width: 250px;
    height: 350px;
    /* position: absolute; */
    margin: auto;
    right: 0;
    left: 0;
    box-shadow: 1px 1px 3px #ccc;
}
.fundCon:hover {
    box-shadow: 1px 1px 4px #aaa;
}
#REviewCon row{
	
	widows: 100%;
	height: 100px;

}
#mounImage{
	width: 100%;
}
.jumbotron{
	padding: 0;
}
</style>
</head>
<body>


	<div class="container-fluid" id="ReviewCon">
		
		<!-- 메인로고 이미지 -->
		<div class="row">
			<div class="col-md-12" align="center">
				<div id=mounImage class="jumbotron">
					<img src="resources/images/backgroundImg/배경로고시안 (3).png" style="width: 100%">
				</div>
			</div>
		</div>
		
		<!-- 고객센터 메뉴 -->
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
		<div class="row" id="Review_table">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>프로젝트 후기</h3>
				<hr id=Review_bar>
				
				<!-- 프로젝트 후기 메뉴 -->
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
	             <%--  <c:forEach var="rev" items="${ revList }" > --%>
	              <div>
	                 <div class="fundCon">
	                    <div class="fundItem"><!--id="${ rev.rNo }" 후기 번호 -->
	                       <div class="fundImg">
	                          <!-- <img src="resources/projectImg/thumbnail/${ fr.pThumbImage }"> -->
	                          <img src="resources\img\고양이.PNG"><!-- 썸네일이미지 -->
	                       </div>
	                       <div class="nameArea">
	                       <p>음악</p>
	                          <span class="categoryName">  
	                          	프로젝트 후기 이름
	                          	<%-- ${ fr.pCategoryName } --%>   
	                          	<!-- 프로젝트 후기 이름 -->
	                          </span><br> 
	                          <span class="fundName">
	                          	우키키키키키
	                             
	                          </span>
	                       </div>
	                       <!--  
	                       <div class="heartIcon">
	                          <i class="material-icons heart-fund">favorite_border</i>
	                       </div>
	                       -->
	                       <%-- 
	                       <div class="detailArea my-1">
	                          <span class="detailText">
	                             <c:choose>
	                                <c:when test="${ fn:length(fr.pSummaryText) > 45 }">
	                                ${ fn:substring(fr.pSummaryText,0,60) }…
	                                </c:when>
	                                <c:otherwise>
	                                ${ rev.pSummaryText }
	                                </c:otherwise>
	                             </c:choose>
	                          </span>
	                       </div> 
	                       --%>
	                    </div>
	                 </div>
	              </div>
	             <!--  </c:forEach> -->
	           </div>
			</div>
			
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>