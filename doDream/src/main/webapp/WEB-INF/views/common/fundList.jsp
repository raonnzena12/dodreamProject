<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../common/menubar.jsp" %>
<link rel="stylesheet" href="resources/css/fundList.css">
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
                     <i class="ver-super material-icons" id="searchSubmit">search</i>
                     <select name="filter" id="filter">
                        <option value="ALL" selected>전체</option>
                        <option value="N">진행중인 펀딩</option>
                        <option value="Y">종료된 펀딩</option>
                     </select>
                     <select name="filter2" id="filter2">
                        <option value="popluar">인기순</option>
                        <option value="recent">최신순</option>
                        <option value="amount">최고금액순</option>
                        <option value="support">최다후원순</option>
                        <option value="closing">마감임박순</option>
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
                              <c:choose>
                                 <c:when test="${ prj.iLike == 0 }">
                                 <i class="material-icons heart-fund">favorite_border</i>
                                 </c:when>
                                 <c:otherwise>
                                 <i class="material-icons heart-fund">favorite</i>
                                 </c:otherwise>
                              </c:choose>
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
var cate = null;
var order = null;
var endYn = null;
var keyword = null;


   // 좋아요 누르는 함수 만들것
$(function() {
   // 리뷰 좋아요 체크하는 함수
   $(document).on("click",".heartIcon", function(e){
      if ( ${ empty loginUser } ) {
          Swal.fire( '로그인이 필요합니다!', '좋아요를 누르기 전 로그인을 해주세요!', 'warning' );
          return false;
      }
      var icheck = $(this).children().text();
      var pno = $(this).parent().attr("id");
      if ( icheck == 'favorite_border') {
         likeProject(pno, 1);
         $(this).children().text('favorite');
         $("body div[data-name='mojs-shape']").css({"z-index":"0","cursor":"pointer"});
         const coords = { x: $(this).offset().left+15, y: $(this).offset().top+18};
         burst.tune( coords ).replay();
         circle.tune( coords ).replay();
         /* 이펙트 실행후 이펙트 플레이 div를 아래로 숨겨준다 */
         setTimeout(function(){
         $("body div[data-name='mojs-shape']").css({"z-index":"-10","cursor":"pointer"});
         },800);
      } else {
         likeProject(pno, 0);
         $(this).children().text('favorite_border');
      }
   });
   $(document).on("click",".fundItem div:not(.heartIcon)", function(){
      location.href='detailSt.dr?pNo='+$(this).parent().attr("id");
   });
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
      success: function(result){ console.log(result); }
   });
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
   if ( currentPage > maxPage ) {
      console.log(currentPage);
      return false;
   }
   cate = $("input[name=category]:checked").val();
   keyword = $("#fundKeyword").val();
   endYn = $("#filter").val();
   order = $("#filter2").val();
   console.log(cate);
   console.log(keyword);
   console.log(endYn);
   console.log(order);
   $.ajax({
      url: "loadListByAjax.dr",
      type: "GET",
      data: { page: currentPage,
              cate: cate,
              keyword: keyword,
              order: order,
              endYn: endYn },
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
         currentPage += 1;
         listLoading();
         $("#loadingImg").css("opacity","0");
         $(window).scrollTop(oldDocHei-($(window).height()+($(window).height()/4)));
         },500);
      } 
   });
   // 카테고리가 변경될때마다 리스트로딩을 다시 하는 함수
   $("#categoryArea input").on("change", function(){
      currentPage = 1;
      $(".resultPrint").html("");
      listLoading();
   });
   // 진행상태/ 정렬상태가 변경될때마다 리스트 로딩을 다시 하는 함수
   $("#filter, #filter2").on("change", function(){
      currentPage = 1;
      $(".resultPrint").html("");
      listLoading();
   });
   // 검색어를 서치할때마다 리스트 로딩을 다시 하는 함수
   $("#searchSubmit").on("click", function(){
      console.log("왜안돼");
      currentPage = 1;
      $(".resultPrint").html("");
      listLoading();
   })
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