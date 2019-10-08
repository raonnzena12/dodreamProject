<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../common/menubar.jsp" %>
<link rel="stylesheet" href="resources/css/fundList.css">
<style>
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
    min-width: 300px;
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
#category .fundImg,  #category .chartArea {
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
    background-color:#8E44AD;
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
    top:180px;
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
</style>
<!-- mojs(좋아요 클릭시 효과) 추가 -->
<script src="https://cdn.jsdelivr.net/npm/@mojs/core"></script>
</head>
<body>
<c:url var="keywordSearch" value="tmptmp" />
<section id="category">
   <div class="container-fluid clearfix" id="categoryTop">
      <div class="row">
         <div class="col-md-1">
         </div>
         <div class="col-md-10" id="categoryTopMenu">
            <span class="font15">당신의 마음을 두드릴 아티스트를 찾아보세요</span>
            <div id="categoryArea" class="my-5">
               <input type="radio" name="category" id="total" value="total" checked><label for="total">전체</label>
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
               <div class="resultPrint">
                  <c:forEach var="prj" items="${ pList }" >
                  <div>
                     <div class="fundCon">
                        <div class="fundItem" id="${ prj.pNo }">
                           <div class="fundImg">
                              <img src="resources/images/projectImg/thumbnail/${ prj.pThumbImage }">
                           </div>
                           <div class="nameArea">
                              <p class="categoryName mb-0">${ prj.pCategoryName }</p>
                              <span class="fundName">
                                 ${ prj.pTitle }
                              </span>
                           </div>
                           <div class="heartIcon">
                              <i class="material-icons heart-fund">favorite_border</i>
                           </div>
                           <div class="detailArea my-1">
                              <!-- <span class="detailText">
                                 <c:choose>
                                    <c:when test="${ fn:length(prj.pSummaryText) > 45 }">
                                    ${ fn:substring(prj.pSummaryText,0,60) }…
                                    </c:when>
                                    <c:otherwise>
                                    ${ prj.pSummaryText }
                                    </c:otherwise>
                                 </c:choose>
                              </span> -->
                           </div>
                           <div class="chartArea px-3 mt-2">
                              <div class="chartInfo clearfix">
                                 <span class="chartInfo1">￦<fmt:formatNumber value="${ prj.pCurrentFunding }" groupingUsed="true" /></span>
                                 <span class="chartInfo2"><fmt:parseNumber value="${ (prj.pCurrentFunding / prj.pGoal) * 100 }" integerOnly="true" />%</span>
                              </div>
                              <div class="chartBar">
                              <c:choose>
                                 <c:when test="${ ((prj.pCurrentFunding / prj.pGoal) * 100) < 100 }">
                                 <div class="purpleBar" style="width:${ (prj.pCurrentFunding / prj.pGoal) * 100 }%"></div>
                                 </c:when>
                                 <c:otherwise>
                                 <div class="purpleBar"></div>                                       
                                 </c:otherwise>
                              </c:choose>
                              </div>
                              <c:choose>
                                 <c:when test="${ prj.pDDay > 0 }">
                                 <div class="chartDate">${ prj.pDDay }일 남음</div>
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
               <div class="text-center">
                  <img src="resources/images/loadingSpin.gif" id="loadingImg">
               </div>
            </div>
            <div class="col-md-1">
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
   // 리뷰 좋아요 체크하는 함수
   $(document).on("click",".heartIcon", function(e){
      // if ( ${ empty loginUser } ) {
      //     Swal.fire( '로그인이 필요합니다!', '좋아요를 누르기 전 로그인을 해주세요!', 'warning' );
      //     return false;
      // }
      var icheck = $(this).children().text();
      var fno = $(this).parent().parent().attr("id");
      if ( icheck == 'favorite_border') {
            $(this).children().text('favorite');
            $("body div[data-name='mojs-shape']").css({"z-index":"0","cursor":"pointer"});
            const coords = { x: $(this).offset().left+15, y: $(this).offset().top+18};
            burst.tune(coords).replay();
            circle.tune( coords ).replay();
            /* 이펙트 실행후 이펙트 플레이 div를 아래로 숨겨준다 */
            setTimeout(function(){
            $("body div[data-name='mojs-shape']").css({"z-index":"-10","cursor":"pointer"});
            },800);
      } else {
            $(this).children().text('favorite_border');
      }
   });
   $(document).on("click",".fundItem div:not(.heartIcon)", function(){
      // console.log($(this).parent().attr("id"));
      location.href='detailSt.dr?pNo='+$(this).parent().attr("id");
   });

});
function loadList() {

}
// 펀드 리스트 출력하는 함수(수정중)
function printFunds(list) {
   var $resultPrint = $(".resultPrint");

   $.each(list, function(i){
      var $conDiv = $("<div>");
      // 펀딩 인덱스 아이디로 추가할 것
      var $fundCon = $("<div>").addClass("fundCon");
      var $fundItem = $("<div>").addClass("fundItem").attr("id",list[i].pNo);
      var $fundImg = $("<div>").addClass("fundImg");
      // 이미지 url 지정할것
      var $img = $("<img>").attr("src", "resources/images/projectImg/thumbnail/"+list[i].pThumbImage);
      $fundImg.append($img);
      var $nameArea = $("<div>").addClass("nameArea");
      // 들어갈 텍스트들 지정할 것
      var $categoryName = $("<p>").addClass("categoryName mb-0").text(list[i].pCategoryName);
      var $fundName = $("<span>").addClass("fundName").text(list[i].pTitle);
      $nameArea.append($categoryName,$fundName);
      // 하트 누른 값에따라 채워진 하트/빈하트 구분
      var $heartIcon = $("<div>").addClass("heartIcon");
      var $heart_fund = $("<i>").addClass("material-icons heart-fund")
      if ( list[i].heart == 1 ) { // 좋아요 찍은 내력이 있을 시 꽉찬 하트를 프린트한다
         $heart_fund.text("favorite");
      } else { // 내역이 없을 시 빈하트를 프린트한다
         $heart_fund.text("favorite_border");
      }
      $heartIcon.append($heart_fund);
      var $detailArea = $("<div>").addClass("detailArea my-1");
      var $detailText = $("<span>").addClass("detailText")/*.text(list[i].pSummaryText)*/;
      $detailArea.append($detailText);
      var $chartArea = $("<div>").addClass("chartArea px-3 mt-2");
      var $chartInfo = $("<div>").addClass("chartInfo clearfix")
      var $chartInfo1 = $("<span>").addClass("chartInfo1").text("￦"+addComma(list[i].pCurrentFunding));
      var $chartInfo2 = $("<span>").addClass("chartInfo2").text(Math.floor((list[i].pCurrentFunding/list[i].pGoal)*100)+"%");
      $chartInfo.append($chartInfo1, $chartInfo2);
      var $chartBar = $("<div>").addClass("chartBar");
      // 진행바 가로길이 지정
      var $purpleBar = $("<div>").addClass("purpleBar").css("width", (list[i].pCurrentFunding/list[i].pGoal)*100+"%");
      $chartBar.append($purpleBar);
      var $chartDate = $("<div>").addClass("chartDate").text(list[i].pDDay+"일 남음");
      $chartArea.append($chartInfo,$chartBar,$chartDate);
      $fundItem.append($fundImg,$nameArea,$heartIcon,$detailArea,$chartArea);
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

function listLoading() {
   if ( currentPage == maxPage ) {
      console.log(currentPage);
      return false;
   }
   // console.log("curP: " +currentPage);
   // console.log("maxP: " +maxPage);
   currentPage += 1;
   var selectCate = $("input[name=category]:checked").val();

   console.log("리스트 로딩중 " + selectCate);
   
   $.ajax({
      url: "loadListByAjax.dr",
      type: "GET",
      data: { page: currentPage,
              cate: selectCate },
      dataType: "json",
      error: function(e){
         console.log(e);
      },
      success: function(pList){
         printFunds(pList);
      }
   });
}
$(function(){
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
         $(window).scrollTop(oldDocHei-($(window).height()+($(window).height()/4)));
         },500);
      } 
   });
   $("#categoryArea input").on("change", function(){
      var selectCate = $("input[name=category]:checked").val();
      currentPage = 1;
      $.ajax({
         url: "loadListByAjax.dr",
         data: { cate: selectCate,
                 page: currentPage },
         dataType: "JSON",
         error: function(e){ console.log(e); },
         success: function(pList) {
            $(".resultPrint").html("");
            printFunds(pList);
         }
      });
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
</body>
</html>