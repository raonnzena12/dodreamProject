<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>공지사항</title>
<%@ include file="../common/menubar.jsp"%>
<meta name="description" content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<STYLE>
#noticeCon {
	width: 1200px;
	min-height:900px;
	height: auto;
}
#cCenter_menu{
	padding: 0;
}
#notice_bar {
	border-bottom: 3px solid #8E44AD;
}

#notice_table {
	padding-top: 20px;
	width: 100%;
	margin: auto;
}
#row{

}
#mounImage{
	width: 100%;
}
.jumbotron{
	padding: 0;
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
	<div class="container-fluid" id="noticeCon">
		<div class="row">
			<div class="col-md-12" align="center">
				<div id=mounImage class="jumbotron">
					<img src="resources/images/backgroundImg/배경로고시안 (3).png" style="width: 100%">
				</div>
			</div>
		</div>
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
		<div class="row" id="notice_table">
			<div class="col-md-12" id="cCenter_menu">
				<h3>공지사항</h3>
				<hr id=notice_bar>
				<!-- 공지사항 제목, 내용부분 / 악코디언 부분 -->
				<div id="resultPrint card-611390"><!-- 내용을 묶는 틀 -->
					<c:forEach var="n" items="${ nList }">
						<div class="card">
						
							<div class="card-header">
								<a class="card-link collapsed" href="#card-${n.nNo}" target="#card-${n.nNo}"
									data-toggle="collapse"> 
									${n.nTitle}
								</a>
							</div>
							<div class="collapse content" id="card-${n.nNo}">
								<div class="card-body">${n.nContent }</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="text-center">
                        <img src="resources/images/loadingSpin.gif" id="loadingImg">
                </div>
			</div>
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
   var $card_header = $("<div>").addClass("card-header");   
   var $card_link = $("<a>").addClass("card-link").attr("href","#card-"+list[i].nNo)
                   .attr("target", "#card-" + list[i].nNo).attr("data-toggle","collapse")
                   .text(list[i].nTitle);
   
   $card_header.append($card_link);
   $card.append($card_header);
   
   var $collapse = $("<div>").addClass("collapse").attr("id","card-" + list[i].revNo);
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
   url: "noticeListByAjax.dr",
   type: "GET",
   data: { page: currentPage},
   dataType: "json",
   success: function(nList){
      printFunds(nList);
   },
   error: function(e){
       console.log(e);
   }  
});
}
$(function(){
	$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		console.log("스크롤");
	   // console.log($(window).scrollTop());
	   // console.log($(document).height());
	   // console.log($(window).height());
	   // console.log($(document).height() - $(window).height());
	   // console.log($(window).scrollTop() >= ($(document).height() - $(window).height() - 0.5));
	   if($(window).scrollTop() >= ($(document).height() - $(window).height()-0.5 ) ) {
		   console.log("스크롤 로딩");
	      if ( currentPage == maxPage ) return false;
	      var oldDocHei = $(document).height();
	      $("#loadingImg").css("opacity","1");
	      setTimeout(function(){
	      listLoading();
	      $("#loadingImg").css("opacity","0");
	      $(window).scrollTop(oldDocHei-($(window).height()+($(window).height()/4)));
	      },500);
	   } 
	});
})
</script>

<script>
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
	<script src="webapp/resources/js/Center-js/jquery.min.js"></script>
	<script src="webapp/resources/js/Center-js/bootstrap.min.js"></script>
	<script src="webapp/resources/js/Center-js/scripts.js"></script>
</body>
</html>