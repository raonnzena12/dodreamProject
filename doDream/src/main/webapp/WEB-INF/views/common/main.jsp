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
.cateName {
    font-size: 15px;
    font-weight: 600;
}
.more {
    font-size: 14px;
    font-weight: 600;
    color: #777;
    cursor: pointer;
}
</style>
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
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
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
            광고 영역
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
</html>