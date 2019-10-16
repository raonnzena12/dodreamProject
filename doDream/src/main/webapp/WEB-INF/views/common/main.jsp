<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림</title>
<%@ include file="menubar.jsp" %>
<style>
#mainMenuBar {
    margin-bottom: 0px !important;
}
.mainBanner h4, .mainBanner p {
    color: #fff;
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
    min-width: 280px;
    height: 400px;
    flex: 1;
    flex-basis: 20%;
    padding: 10px;
    position: relative;
}
/* 화면 가로크기 990 이하일때 설정  */
@media all and (max-width: 1497px) {
    #category .resultPrint>div {
    flex-basis: 40%;
	}
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
    cursor: pointer;
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
.cateName {
    font-size: 15px;
    font-weight: 600;
}
.more {
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
}
.more a {
    color: #777;
    text-decoration: none;
}
.ggArea {
    width: 90%;
    /* height: 200px; */
    /* background-color: #F39C12; */
    margin: 20px auto;
}
.areaarea{
    border-radius: 5px;
    position: relative; 
    padding-top: 56.25%; 
    overflow: hidden;
    /* height: 300px; */
}
.areaarea img {
    position: absolute; 
    top: 0; 
    left: 0; 
    right: 0; 
    bottom: 0; 
    min-width: 100%; 
    max-width: 100%; 
    height: auto;
    margin-top: 0%;
}
.carousel-item h4, .carousel-item p {
    text-shadow: 1px 1px 5px #666;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/@mojs/core"></script>
</head>
<body>
<section id="mainSection">
<div class="container-fluid">
    <div class="row">
        <div class="mainBanner">
            <div class="carousel slide mb-3" id="carousel-435807">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-435807" class="active">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-435807">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-435807">
                    </li>
                    <li data-slide-to="3" data-target="#carousel-435807">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" alt="Carousel Bootstrap First" src="resources/images/mainImg/scn.png" />
                        <div class="carousel-caption">
                            <h4>
                                시(詩)와 차(茶)와 음악이 함께하는 시간
                            </h4>
                            <p>
                                카페 SYZYGY X 트루베르 X 이지에프엠 X 신철규 시인<br>2019년 11월 2일 토요일 저녁 7시
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" alt="Carousel Bootstrap Second" src="resources/images/mainImg/hero_mimi.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                레몬 한 알은<br>삶에 얼마나 중요한가
                            </h4>
                            <p>
                                주변을 가치롭고 아름답게 만드는 것에 대한 미미의 소리
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" alt="Carousel Bootstrap Third" src="resources/images/mainImg/hero_mom_n_daughter.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                우리가 꼭 알아야할 <br>진짜 마음
                            </h4>
                            <p>
                                가깝고도 먼 엄마와 딸의 틈. 연결을 시작합니다.
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" alt="Carousel Bootstrap First" src="resources/images/mainImg/hero24.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                피아니스트 박창수의<br>독보적 음악 실험
                            </h4>
                            <p>
                                24시간동안 서로 협의하지 않은 24번의 공연이 펼쳐진다
                            </p>
                        </div>
                    </div>
                </div> <a class="carousel-control-prev" href="#carousel-435807" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-435807" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
            </div>
        </div>
    </div>
    <div class="row" id="category">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
        <div class="popular">
            <div class="popularLink clear-both my-4">
                <span class="cateName">인기 있는 프로젝트</span>
                <span class="float-right more"><a href="category.dr?order=popluar">More &gt;</a></span>
            </div>
            <div class="resultPrint">
            <c:forEach var="prj" items="${ allList }" varStatus="status">
                <c:if test="${ status.index < 4 }">
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
                </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="my-4 ggArea">
            <div class="areaarea">
                <img src="resources/images/tvxq.jpg">
            </div>
        </div>
        <div class="newest">
            <div class="newestLink clear-both my-4">
                <span class="cateName">신규 프로젝트</span>
                <span class="float-right more"><a href="category.dr?order=recent">More &gt;</a></span>
            </div>
            <div class="resultPrint">
            <c:forEach var="prj" items="${ allList }" varStatus="status">
                <c:if test="${ 3 < status.index && status.index < 8 }">
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
                </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="achieve">
            <div class="achieveLink clear-both my-4">
                <span class="cateName">달성 임박 프로젝트</span>
                <!-- <span class="float-right"><a>More &gt;</a></span> -->
            </div>
            <div class="resultPrint">
            <c:forEach var="prj" items="${ allList }" varStatus="status">
                <c:if test="${ 7 < status.index && status.index < 12 }">
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
                </c:if>
                </c:forEach>
            </div>
        </div>
        </div>
        <div class="col-md-1">
        </div>
    </div>
</div>
</section>
</body>
<script>
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
</html>