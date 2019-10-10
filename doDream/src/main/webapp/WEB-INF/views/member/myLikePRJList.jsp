<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="https://cdn.jsdelivr.net/npm/@mojs/core"></script> -->
<style>
.resultPrint {
	/* display: flex; */
	width: 100%;
	flex-wrap: wrap;
	justify-content: space-around;
	align-content: space-around;
}

.resultPrint>div {
	margin: 10px;
	min-width: 300px;
	height: 400px;
	/*     flex: 1;
    flex-basis: 20%; */
	padding: 10px;
	position: relative;
	display: inline-block;
}

.fundCon {
	/* border: 1px solid red; */
	width: 250px;
	height: 350px;
	position: absolute;
	margin: auto;
	right: 0;
	left: 0;
	box-shadow: 1px 1px 3px #ccc;
}

.fundCon:hover {
	box-shadow: 1px 1px 4px #aaa;
}

.fundItem {
	display: grid;
	grid-template-columns: 200px 50px;
	grid-template-rows: 180px 50px 50px 70px;
}

.fundImg, .chartArea {
	grid-column-start: 1;
	grid-column-end: 3;
}

.detailArea {
	grid-column-start: 1;
	grid-column-end: 3;
	padding-left: 15px;
	padding-right: 15px;
	line-height: 15px;
	padding-top: 3px;
}

.nameArea {
	grid-column-start: 1;
	grid-column-end: 3;
	padding-left: 15px;
	line-height: 21px;
	padding-top: 12px;
}

.fundImg>img {
	width: 100%;
	height: 180px;
}

.categoryName {
	font-weight: 800;
	font-size: 15px;
	color: #F39C12;
}

.fundName {
	font-weight: 900;
	font-size: 18px;
}

.detailText {
	font-size: 14px;
	color: #777;
}

.chartBar {
	width: 100%;
	height: 5px;
	background-color: #ddd;
	border-radius: 5px;
}

.purpleBar {
	border-radius: 5px;
	background-color: #8E44AD;
	height: 100%;
	/* width: 25%; */
}

.chartInfo1 {
	float: left;
}

.chartInfo2 {
	float: right;
}

.chartInfo>span {
	font-size: 14px;
	font-weight: bold;
}

.chartDate {
	font-size: 13px;
	font-weight: bold;
	float: right;
	color: #777;
	margin-right: 5px;
}

.fundItem {
	cursor: pointer;
}

.heartIcon {
	text-align: right;
	padding-right: 7px;
	padding-top: 5px;
	cursor: pointer;
	position: absolute;
	float: right;
	top: 180px;
	right: 0;
}

.heart-fund {
	color: #F39C12;
	font-size: 30px;
}

#myfundingsub {
	text-decoration: none;
}

#myfundingsub>a {
	color: #444;
}

#myfundingsub>a.active {
	color: #8E44AD;
	font-weight: 600;
}
</style>
</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp"/>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="myfundingsub">
					<a id="sub1" href="myFundingList.dr?userNo=${loginUser.userNo}">내가	참여한</a> ｜ <a id="sub2" href="myOpenProjectList.dr?userNo=${loginUser.userNo}">내가 오픈한</a> ｜ <a id="sub3" href="myLikePRJList.dr?userNo=${loginUser.userNo}">내가 관심있는</a>
			</div>
			<div class="col-md-2"></div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8 resultPrint">
					<c:if test="${ empty pList }">
						<h4 class="text-center">좋아요한 프로젝트가 없습니다.</h4>
					</c:if>
					<c:if test="${ fn:length(pList) >0 }">
						<c:forEach var="pList" items="${ pList }">
							<div id="pList">
								<div class="fundCon">
									<div class="fundItem" id="${ pList.pNo }">
										<div class="fundImg">
											<img
												src="resources/images/projectImg/thumbnail/${ pList.pThumbImage }">
										</div>
										<div class="nameArea">
											<p class="categoryName mb-0">${ pList.pCategoryName }</p>
											<span class="fundName"> ${ pList.pTitle } </span>
										</div>
										<div class="heartIcon">
			                                 <i class="material-icons heart-fund">favorite</i>
			                           </div>
			                           <div class="detailArea my-1"></div>
										<div class="chartArea px-3 mt-2">
											<div class="chartInfo clearfix">
												<span class="chartInfo1">￦<fmt:formatNumber
														value="${ pList.pCurrentFunding }" groupingUsed="true" /></span>
												<span class="chartInfo2"><fmt:parseNumber
														value="${ (pList.pCurrentFunding / pList.pGoal) * 100 }"
														integerOnly="true" />%</span>
											</div>
											<div class="detailArea my-1">
           		                           	</div>
											<div class="chartBar">
												<c:choose>
													<c:when
														test="${ ((pList.pCurrentFunding / pList.pGoal) * 100) < 100 }">
														<div class="purpleBar"
															style="width:${ (pList.pCurrentFunding / pList.pGoal) * 100 }%"></div>
													</c:when>
													<c:otherwise>
														<div class="purpleBar"></div>
													</c:otherwise>
												</c:choose>
											</div>
											<c:choose>
												<c:when test="${ pList.pDDay > 0 }">
													<div class="chartDate">${ pList.pDDay }일남음</div>
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
					</c:if>
				</div>
			</div>
		<div class="col-md-2"></div>
	</div>
		<script>
		// 페이지 접속하면 currentPage = 1;
		/* var currentPage = 1;
		 var maxPage = ${ pi.maxPage };
		 var cate = null;
		 var order = null;
		 var endYn = null;
		 var keyword = null; */
		  // 좋아요 누르는 함수 만들것
		 $(function() {
		    // 리뷰 좋아요 체크하는 함수
		    $(document).on("click",".heartIcon", function(e){
/* 		       if ( ${ empty loginUser } ) {
		           Swal.fire( '로그인이 필요합니다!', '좋아요를 누르기 전 로그인을 해주세요!', 'warning' );
		           return false;
		       } */
		       var icheck = $(this).children().text();
		       
		       var pno = $(this).parent().attr("id");
		       
		       if ( icheck == 'favorite_border') {
		          likeProject(pno, 1);
		          $(this).children().text('favorite');
/* 		          $("body div[data-name='mojs-shape']").css({"z-index":"0","cursor":"pointer"});
		          const coords = { x: $(this).offset().left+15, y: $(this).offset().top+18};
		          burst.tune( coords ).replay();
		          circle.tune( coords ).replay();
		          /* 이펙트 실행후 이펙트 플레이 div를 아래로 숨겨준다 
		          setTimeout(function(){
		          $("body div[data-name='mojs-shape']").css({"z-index":"-10","cursor":"pointer"});
		          },800); */
		       } else {
		          likeProject(pno, 0);
		          $(this).children().text('favorite_border');
		          
		       }
		    });
/* 		    $(document).on("click",".fundItem div:not(.heartIcon)", function(){
		       location.href='detailSt.dr?pNo='+$(this).parent().attr("id");
		    }); */
		 });
		 // 좋아요 누르고/취소하는 함수
		 // status로 1을 보내면 좋아요 누르기
		 // status로 0을 보내면 좋아요 취소
		 function likeProject(pno, status) {
		    var uno = "${ loginUser.userNo }";
		    $.ajax({
		       url: "ajaxProjectLike.dr",
		       type: "POST",
		       data: { uNo: uno,
		               pNo: pno,
		               status: status},
		       error: function(e){ console.log(e); },
		       success: function(result){ console.log(result); location.reload();}
		    });
		 }

		// 펀드 리스트 출력하는 함수(수정중)
		function printFunds(list) {

			 var $resultPrint = $(".resultPrint");

				$.each(
					list,
					function(i) {
						var $conDiv = $("<div>");
						// 펀딩 인덱스 아이디로 추가할 것
						var $fundCon = $("<div>").addClass("fundCon");
						var $fundItem = $("<div>").addClass("fundItem").attr("id", list[i].pNo);
						var $fundImg = $("<div>").addClass("fundImg");
						// 이미지 url 지정할것
						var $img = $("<img>").attr("src","resources/images/projectImg/thumbnail/"+ list[i].pThumbImage);
						$fundImg.append($img);
						var $nameArea = $("<div>").addClass("nameArea");
						// 들어갈 텍스트들 지정할 것
						var $categoryName = $("<p>").addClass("categoryName mb-0").text(list[i].pCategoryName);
						var $fundName = $("<span>").addClass("fundName").text(list[i].pTitle);
						$nameArea.append($categoryName, $fundName);
						
						 // 하트 누른 값에따라 채워진 하트/빈하트 구분
					      var $heartIcon = $("<div>").addClass("heartIcon");
					      var $heart_fund = $("<i>").addClass("material-icons heart-fund");
					      if ( list[i].iLike == 1 ) { // 좋아요 찍은 내력이 있을 시 꽉찬 하트를 프린트한다
					         $heart_fund.text("favorite");
					      } else { // 내역이 없을 시 빈하트를 프린트한다
					         $heart_fund.text("favorite_border");
					      }
					      $heartIcon.append($heart_fund);
						var $detailArea = $("<div>").addClass("detailArea my-1");
						var $detailText = $("<span>").addClass("detailText")/*.text(list[i].pSummaryText)*/;
						$detailArea.append($detailText);
						var $chartArea = $("<div>").addClass("chartArea px-3 mt-2");
						var $chartInfo = $("<div>").addClass("chartInfo clearfix");
						var $chartInfo1 = $("<span>").addClass("chartInfo1").text("￦"+ addComma(list[i].pCurrentFunding));
						var $chartInfo2 = $("<span>").addClass("chartInfo2").text(Math.floor((list[i].pCurrentFunding / list[i].pGoal) * 100)+ "%");
						$chartInfo.append($chartInfo1, $chartInfo2);
						var $chartBar = $("<div>").addClass("chartBar");
						// 진행바 가로길이 지정
						var $purpleBar = $("<div>").addClass("purpleBar").css("width",(list[i].pCurrentFunding / list[i].pGoal)	* 100 + "%");
						$chartBar.append($purpleBar);
						var $chartDate = $("<div>").addClass("chartDate").text(list[i].pDDay + "일 남음");
						$chartArea.append($chartInfo, $chartBar, $chartDate);
						$fundItem.append($fundImg, $nameArea, $detailArea, $chartArea);
						$fundCon.append($fundItem);
						$conDiv.append($fundCon);
						$resultPrint.append($conDiv);
					 });
		};

		// 컴마 추가하는 함수
		function addComma(num) {
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			return num.toString().replace(regexp, ',');
		};
		
	    $(document).on("click",".fundItem div:not(.heartIcon)", function(){
		       location.href='detailSt.dr?pNo='+$(this).parent().attr("id");
		  });
	    
	    $(function(){
			var menu = ${menu} + "";
			
			if(menu ==1){
				$("menu1").addClass("active");
			}
			
			var sub = ${sub} + "";
			if(sub==3){
				$("#sub3").addClass("active");
			}else if(sub==2){
				$("#sub2").addClass("active");
			}else{
				$("#sub1").addClass("active");
			}
		});
    </script>
    
<!--     <script>
 	const CIRCLE_RADIUS = 20;
 	 const RADIUS = 32;
 	 const circle = new mojs.Shape({
	     left: 0, top: 0,
	     stroke:   '#FF9C00',
	     strokeWidth: { [2*CIRCLE_RADIUS] : 0 },
	     fill:       'none',
	     scale:      { 0: 1 },
	     radius:     CIRCLE_RADIUS,
	     duration:   400,
	     easing:     'cubic.out'
 	 });

  	const burst = new mojs.Burst({
	     left: 0, top: 0,
	     radius:   { 4: RADIUS },
	     angle:    45,
	     count:    14,
	     timeline: { delay: 300 },
	     children: {
	       radius:       2.5,
	       fill:         '#FD7932',
	       scale:        { 1: 0, easing: 'quad.in' },
	       pathScale:    [ .8, null ],
	       degreeShift:  [ 13, null ],
	       duration:     [ 500, 700 ],
	       easing:       'quint.out'
	     }
	  });
    </script>
  -->
  
  
</body>
</html> 