<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/menubar.jsp"%>
<link rel="stylesheet" href="resources/css/fReview.css">
<style>
#ReviewCon {
   width: 1200px; 
   min-height: 400px;
   
}
#ReviewCon1 {
   width: 1200px; 
   min-height: 900px;
   height: auto;
}
.fundItem {
   cursor: pointer;
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
   padding-top: 20px;
   padding-bottom: 20px;
   width: 100%;
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

#category .ver-super {
   vertical-align: sub;
}

#category .resultPrint {
   display: inline-flex;
   width: 100%;
   flex-wrap: wrap;
   justify-content: space-around;
   align-content: space-around;
}

#category .resultPrint>div {
   margin: 10px;
   min-width: 250px;
   height: 400px;
   flex: 1;
   flex-basis: 20%;
   padding: 10px;
   position: relative;
}

#category .fundCon {
   /* border: 1px solid red; */
   width: 250px;
   height: 350px;
   position: absolute;
   margin: auto;
   right: 0;
   left: 0;
   box-shadow: 1px 1px 3px #ccc;
}

#category .fundCon:hover {
   box-shadow: 1px 1px 4px #aaa;
}

#category .fundItem {
   display: grid;
   grid-template-columns: 200px 50px;
   grid-template-rows: 180px 50px 50px 70px;
}

#category .fundImg, #category .chartArea {
   grid-column-start: 1;
   grid-column-end: 3;
}

#category .detailArea {
   grid-column-start: 1;
   grid-column-end: 3;
   padding-left: 15px;
   padding-right: 15px;
   line-height: 15px;
   padding-top: 3px;
}

#category .nameArea {
   grid-column-start: 1;
   grid-column-end: 3;
   padding-left: 15px;
   line-height: 21px;
   padding-top: 12px;
}

#category .fundImg>img {
   width: 100%;
   height: 180px;
}

#category .categoryName {
   font-weight: 800;
   font-size: 15px;
   color: #F39C12;
}

#category .fundName {
   font-weight: 900;
   font-size: 18px;
}

#category .detailText {
   font-size: 14px;
   color: #777;
}

#category .chartBar {
   width: 100%;
   height: 5px;
   background-color: #ddd;
   border-radius: 5px;
}

#category .purpleBar {
   border-radius: 5px;
   background-color: #8E44AD;
   height: 100%;
   /* width: 25%; */
}

#category .chartInfo1 {
   float: left;
}

#category .chartInfo2 {
   float: right;
}

#category .chartInfo>span {
   font-size: 14px;
   font-weight: bold;
}

#category .chartDate {
   font-size: 13px;
   font-weight: bold;
   float: right;
   color: #777;
   margin-right: 5px;
}

#category .heartIcon {
   text-align: right;
   padding-right: 7px;
   padding-top: 5px;
   cursor: pointer;
   position: absolute;
   float: right;
   top: 180px;
   right: 0;
}

#category .heart-fund {
   color: #F39C12;
   font-size: 30px;
}

#loadingImg {
   width: 40px;
   height: auto;
   opacity: 0;
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

.jumbotron1{
	padding: 0;
	overflow: hidden;
	max-height: 400px;
	margin-bottom: 2rem;
}

#categoryTopMenu {
   text-align: center;
   padding: 0 20px;
}

.fundImg>img {
   width: 100%;
   height: 180px;
}

.reviewCon {
   /* border: 1px solid red; */
   width: 250px;
   height: 350px;
   /* position: absolute; */
   float: left;
   margin: 2%;
   right: 0;
   left: 0;
   box-shadow: 1px 1px 3px #ccc;
}

.reviewCon:hover {
   box-shadow: 1px 1px 4px #aaa;
}

#img, #Name {
   padding: 10px;
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
    padding-left: 80px;
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

</style>
<!-- mojs(좋아요 클릭시 효과) 추가 -->
<script src="https://cdn.jsdelivr.net/npm/@mojs/core"></script>
</head>
<body>
   <c:url var="keywordSearch" value="tmptmp" />
   <section id="category">
	<div class="container-fluid" id="ReviewCon">
      <!-- 후기 상세 - 메인로고 -->
      <div class="row">
         <div class="col-md-12" align="center">
            <div class="jumbotron1">
            <img src="resources\images\backgroundImg\배경로고시안 (3).png" style="width: 100%">
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
                        <div id="story" onclick="location.href='cCenter.dr'" >공지사항</div>
                        <div id="guide" onclick="location.href='T_O_Service.dr'">이용약관</div>
                        <div id="community" onclick="location.href='fReview.dr'" style="color: rgb(142, 68, 173);">프로젝트 후기</div>
                        <div id="reward" onclick="location.href='faq.dr'">FAQ</div>
                    </div>
                </nav>
            </div>
            <div class="col-md-1"></div>
        </div>
	</div>
	<div class="container-fluid" id="ReviewCon1">
	   <div class="row" id="Review_table">
	      <div class="col-md-12"></div>
	   </div>
	   <h3 id="projectCount"></h3>
	   <hr id=Review_bar>
	   <div class="container-fluid clearfix" id="categoryTop">
	      <div class="row">
	         <div id="categoryTopMenu">
	            <div id="categoryArea" class="my-5">
	               <input type="radio" name="category" id="total" value="total" ${ (empty cate || cate == 'total')? 'checked':''  } ><label for="total">전체</label> 
	               <input type="radio" name="category" id="music" value="music" ${ ( cate == 'music')? 'checked':''  }>        <label for="music">음악</label> 
	               <input type="radio" name="category" id="movie" value="movie" ${ ( cate == 'movie')? 'checked':''  }>        <label for="movie">영화</label> 
	               <input type="radio" name="category" id="play"  value="play" ${ ( cate == 'play')? 'checked':''  }>         <label for="play" >연극</label> 
	               <input type="radio" name="category" id="art"   value="art" ${ ( cate == 'art')? 'checked':''  }>          <label for="art"  >미술</label> 
	               <input type="radio" name="category" id="show" value="show" ${ (cate == 'show') ? 'checked' :'' }>		 <label for="show">공연</label>
	               <input type="radio" name="category" id="etc"   value="etc" ${ ( cate == 'etc')? 'checked':''  }>          <label for="etc"  >ETC</label>
	            </div>
	         </div>
	      </div>
	<div class="container-fluid" id="categoryResult">
	   <div class="row">
	      <div>
	         <div class="resultPrint">
	            <c:forEach var="rev" items="${ revList }">
	               <div>
	                  <div class="fundCon">
	                     <div class="fundItem" id="${ rev.revNo }">
	                        <div class="fundImg">
	                           <img src="/spring/resources/images/summernoteimg/${ rev.reviewTnImg }">
	                           <!-- <img src="resources/images/backgroundImg/배경로고시안 (2).png" style="width: 100%"> -->
	                        </div>
	
	                        <div class="nameArea">
	                           <p class="categoryName mb-0">${ rev.revCatName }</p>
	
	                           <!-- 카테고리 -->
	                           <!-- 부제목 -->
	                           <p class="fundName">${ rev.revTitle }
	                           </p>
	
	                           <!-- 부제목 -->
	                           <span class="fundName">${ rev.revSubTitle }</span>
	                        </div>
	                        <div class="detailArea my-1"></div>
	                     </div>
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
	</div>
	</div>
</section>
<script>
// 페이지 접속하면 currentPage = 1;
var currentPage = 1;
var maxPage = ${ pi.maxPage };

// 좋아요 누르는 함수 만들것
$(function() {
   $(document).on("click",".fundItem div:not(.heartIcon)", function(){
      // console.log($(this).parent().attr("id"));
      location.href='fReviewDetail.dr?revNo='+$(this).parent().attr("id");
   });

});

// 펀드 리스트 출력하는 함수(수정중)
function printFunds(list) {
	console.log("프린트펀드즈 호출");
	console.log(list);
   var $resultPrint = $(".resultPrint");

   $.each(list, function(i){
      var $conDiv = $("<div>");
      // 펀딩 인덱스 아이디로 추가할 것
      var $fundCon = $("<div>").addClass("fundCon");
      var $fundItem = $("<div>").addClass("fundItem").attr("id",list[i].revNo);
      var $fundImg = $("<div>").addClass("fundImg");
      // 이미지 url 지정할것
      var $img = $("<img>").attr("src", "resources/images/summernoteimg/"+list[i].reviewTnImg);
      $fundImg.append($img);
      var $nameArea = $("<div>").addClass("nameArea");
      // 들어갈 텍스트들 지정할 것
      var $categoryName = $("<p>").addClass("categoryName mb-0").text(list[i].revCatName);
      var $fundName = $("<p>").addClass("fundName").text(list[i].revTitle);
      var $fundName = $("<span>").addClass("fundName").text(list[i].revSubTitle);
      $nameArea.append($categoryName,$fundName);
      $fundItem.append($fundImg,$nameArea);
      $fundCon.append($fundItem);
      $conDiv.append($fundCon);
      $resultPrint.append($conDiv);
   });
}
// 컴마 추가하는 함수
function addComma(num) { 
  var regexp = /\B(?=(\d{3})+(?!\d))/g;
  return num.toString().replace(regexp, ',');
}

// 후기 카테고리별 리스트 호출
function listLoading() {
   if ( currentPage > maxPage ) {
      console.log(currentPage);
      return false;
   }
   currentPage += 1;
   var selectCate = $("input[name=category]:checked").val();

   console.log("리스트 로딩중 " + selectCate);
   
   $.ajax({
      url: "revListByAjax.dr",
      type: "GET",
      data: { page: currentPage,
              cate: selectCate },
      dataType: "json",
      success: function(revList){
         printFunds(revList);
      },
      error: function(e){
          console.log(e);
      }  
   });
}
$(function(){
   $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
      if($(window).scrollTop() >= ($(document).height() - $(window).height()-0.5 ) ) {
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
   // 카테고리 검색 정렬
   $("#categoryTopMenu input").on("change", function(){
	  console.log("tlwkr");
	  currentPage = 1;
	  currentPage += 0;
      var selectCate = $("input[name=category]:checked").val();
      location.href='fReview.dr?cate='+selectCate+'&page='+currentPage;
   });

})

$(function(){
	
/* 	$.ajax({ 
		url : "projectCount.dr",
		success : function(result){
			console.log(result);
			$("#projectCount").text("프로젝트 후기 ( "+result+ ")");
		}
	});
 */
	$.ajax({ 
		url : "projectCount.dr",
		success : function(result){
			console.log(result);
			$("#community").text("프로젝트 후기 ( 총 게시글 수 : ""+result+ ")");
		}
	});
});
</script>

<!-- <script>
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
</script> -->
</body>
</html>