<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../common/menubar.jsp" %>
<style>
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
   }
   #category .nameArea {
      grid-column-start: 1;
      grid-column-end: 2;
      padding-left: 15px;
      line-height: 21px;
      padding-top: 6px;
   }
   #category .heartIcon {
      grid-column-start: 2;
      grid-column-end: 3;
   }
   #category .fundImg>img {
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
      background-color:#8E44AD;
      height: 100%;
      width: 25%;
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
   .heartIcon {
      text-align: right;
      padding-right: 7px;
      padding-top: 5px;
      cursor: pointer;
   }
   .heart-fund {
      color: #F39C12;
      font-size: 30px;
   }
</style>
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
                  <div>
                     <div class="fundCon">
                        <div class="fundItem">
                           <div class="fundImg">
                              <img src="resources/images/testImg/testImg(1).jpg">
                           </div>
                           <div class="nameArea">
                              <span class="categoryName">카테고리 이름</span><br>
                              <span class="fundName">펀드이름들어가는곳</span>
                           </div>
                           <div class="heartIcon">
                              <i class="material-icons heart-fund">favorite_border</i>
                           </div>
                           <div class="detailArea my-1">
                              <span class="detailText">펀드 소개 텍스트가 들어간다 이런식으로 보임 두줄도 잘보이고 아마 세줄까지도 아슬아슬하게 될것같음</span>
                           </div>
                           <div class="chartArea px-3 mt-2">
                              <div class="chartInfo clearfix">
                                 <span class="chartInfo1">￦200,000</span>
                                 <span class="chartInfo2">25%</span>
                              </div>
                              <div class="chartBar">
                                 <div class="purpleBar"></div>
                              </div>
                              <div class="chartDate">28일 남음</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div>
                     <div class="fundCon">
                        <div class="fundItem">
                           <div class="fundImg">
                              <img src="resources/images/testImg/testImg(2).jpg">
                           </div>
                           <div class="nameArea">
                              <span class="categoryName">카테고리 이름</span><br>
                              <span class="fundName">펀드이름들어가는곳</span>
                           </div>
                           <div class="heartIcon">
                              <i class="material-icons heart-fund">favorite_border</i>
                           </div>
                           <div class="detailArea my-1">
                              <span class="detailText">펀드 소개 텍스트가 들어간다 이런식으로 보임 두줄도 잘보이고 아마 세줄까지도 아슬아슬하게 될것같음</span>
                           </div>
                           <div class="chartArea px-3 mt-2">
                              <div class="chartInfo clearfix">
                                 <span class="chartInfo1">￦200,000</span>
                                 <span class="chartInfo2">25%</span>
                              </div>
                              <div class="chartBar">
                                 <div class="purpleBar"></div>
                              </div>
                              <div class="chartDate">28일 남음</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div>
                     <div class="fundCon">
                        <div class="fundItem">
                           <div class="fundImg">
                              <img src="resources/images/testImg/testImg(3).jpg">
                           </div>
                           <div class="nameArea">
                              <span class="categoryName">카테고리 이름</span><br>
                              <span class="fundName">펀드이름들어가는곳</span>
                           </div>
                           <div class="heartIcon">
                              <i class="material-icons heart-fund">favorite_border</i>
                           </div>
                           <div class="detailArea my-1">
                              <span class="detailText">펀드 소개 텍스트가 들어간다 이런식으로 보임 두줄도 잘보이고 아마 세줄까지도 아슬아슬하게 될것같음</span>
                           </div>
                           <div class="chartArea px-3 mt-2">
                              <div class="chartInfo clearfix">
                                 <span class="chartInfo1">￦200,000</span>
                                 <span class="chartInfo2">25%</span>
                              </div>
                              <div class="chartBar">
                                 <div class="purpleBar"></div>
                              </div>
                              <div class="chartDate">28일 남음</div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div>
                     <div class="fundCon">
                        <div class="fundItem">
                           <div class="fundImg">
                              <img src="resources/images/testImg/testImg(4).jpg">
                           </div>
                           <div class="nameArea">
                              <span class="categoryName">카테고리 이름</span><br>
                              <span class="fundName">펀드이름들어가는곳</span>
                           </div>
                           <div class="heartIcon">
                              <i class="material-icons heart-fund">favorite_border</i>
                           </div>
                           <div class="detailArea my-1">
                              <span class="detailText">펀드 소개 텍스트가 들어간다 이런식으로 보임 두줄도 잘보이고 아마 세줄까지도 아슬아슬하게 될것같음</span>
                           </div>
                           <div class="chartArea px-3 mt-2">
                              <div class="chartInfo clearfix">
                                 <span class="chartInfo1">￦200,000</span>
                                 <span class="chartInfo2">25%</span>
                              </div>
                              <div class="chartBar">
                                 <div class="purpleBar"></div>
                              </div>
                              <div class="chartDate">28일 남음</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-1">
            </div>
         </div>
      </div>
</section>
<script>
   // 좋아요 누르는 함수 만들것
   $(function() {
        // 리뷰 좋아요 체크하는 함수
        $(document).on("click",".heartIcon", function(e){
            if ( ${ empty loginUser } ) {
                Swal.fire( '로그인이 필요합니다!', '좋아요를 누르기 전 로그인을 해주세요!', 'warning' );
                return false;
         	}
            var icheck = $(this).children().text();
            var fno = $(this).parent().parent().attr("id");
            if ( icheck == 'favorite_border') {
                $(this).children().text('favorite');
                $("body div[data-name='mojs-shape']").css({"z-index":"0","cursor":"pointer"});
                const coords = { x: $(this).offset().left+28, y: $(this).offset().top+18};
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
    });
   function printFunds(list) {
      var $resultPrint = $(".resultPrint");
      $resultPrint.html("");

      $.each(list, function(i){
         var $conDiv = $("<div>");
         // 펀딩 인덱스 아이디로 추가할 것
         var $fundCon = $("<div>").addClass("fundCon").attr("id",list[i]);
         var $fundItem = $("<div>").addClass("fundItem");
         var $fundImg = $("<div>").addClass("fundImg");
         // 이미지 url 지정할것
         var $img = $("<img>").attr("src", list[i]);
         $fundImg.append($img);
         var $nameArea = $("<div>").addClass("nameArea");
         // 들어갈 텍스트들 지정할 것
         var $categoryName = $("<span>").addClass("categoryName").text(list[i]);
         var $fundName = $("<span>").addClass("fundName").text(list[i]);
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
         var $detailText = $("<span>").addClass("detailText").text(list[i]);
         $detailArea.append($detailText);
         var $chartArea = $("<div>").addClass("chartArea px-3 mt-2");
         var $chartInfo = $("<div>").addClass("chartInfo clearfix")
         var $chartInfo1 = $("<span>").addClass("chartInfo1").text(list[i]);
         var $chartInfo2 = $("<span>").addClass("chartInfo2").text(list[i]);
         $chartInfo.append($chartInfo1, $chartInfo2);
         var $chartBar = $("<div>").addClass("chartBar");
         // 진행바 가로길이 지정
         var $purpleBar = $("<div>").addClass("purpleBar").css("width", list[i]);
         $chartBar.append($purpleBar);
         var $chartDate = $("<div>").addClass("chartDate").text(list[i]);
         $chartArea.append($chartInfo,$chartBar,$chartDate);
         $fundItem.append($fundImg,$nameArea,$heartIcon,$detailArea,$chartArea);
         $fundCon.append($fundItem);
         $conDiv.append($fundCon);
         $resultPrint.append($conDiv);
      });
   }
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

/*    const heart = new mojs.Shape({
     left: 0, top: 2,
     shape:    'heart',
     fill:     '#E5214A',
     scale:    { 0 : 1 },
     easing:   'elastic.out',
     duration: 1600,
     delay:    300,
     radius:   11
   });
 */

</script>
</body>
</html>