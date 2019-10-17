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
#ReviewCon {
   width: 1200px; 
   min-height: 400px;
   
}
#ReviewCon1 { 
   width: 1200px; 
   min-height: 900px;
   height: auto;
}

#faqCon    { width: 1200px; min-height: 900px;	height: auto; }
#faq_bar   { border-bottom: 3px solid #8E44AD; }
#faq_table { padding-top: 20px; width: 100%; margin: auto; }
#faqTitle  { width: 50%; float: left; padding: 0; }
#faqSearch { float: right; padding: 0; }
.jumbotron1{
	padding: 0;
	overflow: hidden;
	max-height: 400px;
	margin-bottom: 2rem;
}

/* 메뉴바 CSS */
#mid-menu 
{
	border-top: 1px solid #ced4da;
	border-bottom: 1px solid #ced4da;
	background-color: rgba(255,255,255,0.9);
	padding-top: 5px;
}
#detailnavpadding 
{
    padding-left: 250px;
    width: 1000px;
}
#detailnav
{
    width: 1000px;
    height: 70px;
    margin: 0;
    padding: 0;
    float: left;
    display: block;
}
#detailnav > div
{
    width: 100px;
    height: 70px;
    display: block;
    float: left;
    /* border: 1px solid black; */
    margin: 0;
    padding: 0;
    text-align: center;
    padding-top:20px; 
    font-weight: bold;
}
#detailnav > div:hover{
	color: #8E44AD;
	cursor: pointer;
}
#searchCondition{
	margin: 0px 10px 0px 0px;
	width: 65px;
	height: 35px;
}
.accBtn{
	padding: .75rem 1.25rem;
    margin-bottom: 0;
    /* border-bottom: 5px solid #8E44AD; */
}
.accBtn1{
color : #8E44AD;
}
.faqbtn{
	background-color: #F39C12;
}
#loadingImg {
   width: 40px;
   height: auto;
   opacity: 0;
}
</STYLE>
</head>
<body>

<section id="category">
	<div class="container-fluid" id="ReviewCon">
      <!-- 후기 상세 - 메인로고 -->
      <div class="row">
         <div class="col-md-12" align="center">
            <div class="jumbotron1">
            <img src="resources\images\backgroundImg\배경로고시안 (4).png" style="width: 100%">
            </div>
         </div>
      </div>
	</div>
	<div class="sticky-top">
      <!-- 고객센터 메뉴바 -->
      <div class="row" id="mid-menu">
            <div class="col-md-1"></div>
            <div class="col-md-10" id="detailnavpadding">
                <nav class="nav">
                    <div class="container-fluid" id="detailnav">
                        <div id="story" onclick="location.href='cCenter.dr'">공지사항</div>
                        <div id="guide" onclick="location.href='T_O_Service.dr'">이용약관</div>
                        <div id="community" onclick="location.href='fReview.dr'">프로젝트 후기</div>
                        <div id="reward" onclick="location.href='faq.dr'" style="color: rgb(142, 68, 173);">FAQ</div>
                    </div>
                </nav>
            </div>
            <div class="col-md-1"></div>
        </div>
	</div>
	<div class="container-fluid" id="ReviewCon1">
		<div class="row" id="faq_table">
			<div class="col-md-12" style="padding: 0;">
				<div>
					<div class="col-md-12" id="faqTitle">
						<h3 id="fProjectCount"></h3>
					</div>
					<!-- 검색 창 -->
					<div id="faqSearch">	
						<form class="form-inline" action="nsearch.dr" name="searchForm" method="get">
			
							<select id="searchCondition" name="searchCondition">
								<option value="all"     <c:if test="${search.searchCondition == 'all'}">selected</c:if> >전체</option>
								<option value="title"   <c:if test="${search.searchCondition == 'title'}">selected</c:if> >제목</option>
								<option value="content" <c:if test="${search.searchCondition == 'content'}">selected</c:if> >내용</option>
							</select>
						
							<input class="form-control mr-sm-2" type="search" name="searchValue" value="${search.searchValue}">
							<button class="faqbtn btn btn-primary my-2 my-sm-0">검색</button><br>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div>
				<hr id=faq_bar>
				<!-- FAQ 제목, 내용부분 / 악코디언 부분 -->
				<!-- 추후 선택 : 선택성 액션, 한번에 닫기 기능 구현 -->
				<div id="card-611390" class="resultPrint">
				
					<!-- 검색 내용이 있을 경우 -->
					<c:if test="${ !empty fList }">
						<c:forEach var="f" items="${ fList }">
							<div class="card"  style="margin-bottom: 10px">
							
								<div class="accBtn">
									<a class="card-link collapsed" href="#card-${f.fNo}"
										data-toggle="collapse"> 
										<b class="accBtn1">${f.fTitle}</b>
									</a>
								</div>
								<div class="collapse content" id="card-${f.fNo}">
									<div class="card-body">${f.fContent }</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
					
					<!-- 검색내용이 없을 경우 -->
					<c:if test="${ empty fList }">
					<div class="card">
						
							<div class="accBtn">
								<a class="card-link collapsed" href="#card-01" data-toggle="collapse"> 
									<b class="accBtn1">해당 검색 내용이 없습니다.</b>
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
		<div class="text-center">
	            <img src="resources/images/loadingSpin.gif" id="loadingImg">
	         </div>
	</div>
</section>
<script>
var currentPage = 1;
var maxPage = "${ pi.maxPage }";

$(function () {
	$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	     // console.log($(window).scrollTop());
	     // console.log($(document).height());
	     // console.log($(window).height());
	     // console.log($(document).height() - $(window).height());
	     // console.log($(window).scrollTop() >= ($(document).height() - $(window).height() - 0.5));
	     if($(window).scrollTop() >= ($(document).height() - $(window).height()-0.5 ) ) {
	        if ( currentPage == maxPage ) return false;
	        var oldDocHei = $(document).height();
	        $("#loadingImg").css("opacity","1");
	        setTimeout(function(){
	        listLoading();
	        $("#loadingImg").css("opacity","0");
	        $(window).scrollTop(oldDocHei-($(window)/* 스크롤바의 상단 위치 */
	        		.height()+($(window)/* 스크롤바를 갖는 div의 높이 */
	        				.height()/4)));
	        },500);
	     } 
	  });
})
//펀드 리스트 출력하는 함수(수정중)
function printFunds(list) {
	console.log("프린트펀드즈 호출");
	console.log(list);
var $resultPrint = $(".resultPrint");

   $.each(list, function(i){
   var $conDiv = $("<div>");
   // 펀딩 인덱스 아이디로 추가할 것
   var $card = $("<div>").addClass("card");
   var $accBtn = $("<div>").addClass("accBtn");   
   var $card_link = $("<a>").addClass("card-link").attr("href","#card-"+list[i].nNo)
                   .attr("target", "#card-" + list[i].nNo).attr("data-toggle","collapse");
   var $card_link = $("<b>").addClass("accBtn1").text(list[i].nTitle);
   $card_link.append($accBtn1);
   $accBtn.append($card_link);
   $card.append($accBtn);
   
   var $collapse = $("<div>").addClass("collapse").attr("id","card-" + list[i].nNo);
   var $card_body = $("<div>").addClass("card-body").text(list[i].nContent);
   
   $collapse.append($card_body);
   $card.append($collapse);
   $conDiv.append($card);
   $resultPrint.append($conDiv);
});
}
//컴마 추가하는 함수
function addComma(num) { 
var regexp = /\B(?=(\d{3})+(?!\d))/g;
return num.toString().replace(regexp, ',');
}

//후기 카테고리별 리스트 호출
function listLoading() {
	console.log("테스트");
if ( currentPage > maxPage ) {
   console.log(currentPage);
   return false;
}
currentPage += 1;

console.log("리스트 로딩중 ");

$.ajax({
   url: "faqListByAjax.dr",
   type: "GET",
   data: { page: currentPage},
   dataType: "json",
   success: function(fList){
      printFunds(fList);
   },
   error: function(e){
       console.log(e);
   }  
});
}

$(function(){
	
	$.ajax({ 
		url : "fProjectCount.dr",
		success : function(result){
			console.log(result);
			$("#fProjectCount").text("FAQ ( "+result+ " )");
		}
	});

	/* $.ajax({ 
		url : "projectCount.dr",
		success : function(result){
			console.log(result);
			$("#community").text("프로젝트 후기 ( 총 게시글 수 : "+result+ ")");
		}
	}); */
});
</script>
<script>
	// 아코디언과 관련된 스크립트입니다.
	$(".accBtn:not(.active)").next().slideUp();
	$(function() {
		$(".accBtn").click(function() {
			$(".accBtn").removeClass("active");
			$(this).addClass("active");
			$(this).next().slideDown();
			$(".accBtn:not(.active)").next().slideUp();
			var scrollPosition = $(".accWrapper").offset().top;
			$("html").animate({
				scrollTop : scrollPosition
			});
		});
	});
</script>
</body>
</html>