<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>프로젝트후기 - 상세</title>
<jsp:include page="../common/menubar.jsp"></jsp:include>
<meta name="description" content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">
 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet"> 
<STYLE>
#ReviewCon {
   width: 1200px; 
   min-height: 700px;
    
}
#ReviewCon1 {
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
   /* position: absolute; */
   align-content: center;
   right: 0;
   left: 0; 
   margin: 0 auto;
   width: 500px;
}
#revdetailCategory{
   color: #F39C12;
   float: left;
}
#nav {
margin: auto;
}

.revdetailCategory1{
   text-align: right;
}
.jumbotron { padding: 0; }

#dContent{ height: 500px; height: auto; }

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
</STYLE>
</head>
<body>
   <div class="container-fluid" id="ReviewCon">
      <!-- 후기 상세 - 메인로고 -->
      <div class="row">
         <div class="col-md-12" align="center">
            <div class="jumbotron">
            <img src="resources/images/backgroundImg/art2.jpeg" style="width: 100%">
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
      <div class="row">
         <div class="col-md-12">

               <div style="text-align: center;">
               <h2> 제목 들어가는 곳 : ${revdetail.revTitle} </h2>
               </div>
               <div style="text-align: center;"><h4>"부제목 들어가는 곳" : ${revdetail.revSubTitle}</h4></div>
               <div id="revdetailCategory"><b>카테고리명 : ${revdetail.revCatName}</b>
               <!-- 날짜 / 조회수  -->
               </div>
               <div class="revdetailCategory1">날짜 ${revdetail.revEnrollDate } / 조회수 : ${revdetail.revCount }</div>
               <div class="revdetailCategory1"><a href="detailSt.dr?pNo=${revdetail.revRefPno}">해당 펀딩정보로 이동</a></div>
               
               <!-- 줄 -->
               <hr id=Review_bar>
               <div>
               <!-- <img class="carevdetail-img-top" alt="Bootstrap Thumbnail First"
                  src="resources/img/아이콘1.PNG" style="padding: 10px; height: 400px"> -->
               <!-- 후기 내용 리스트 -->
               <%-- ${revdetail.reviewTnImg} --%>
               <c:if test="${ !empty revdetail }">
                  <div id="dContent">
                     ${revdetail.revContent}
                  </div>
               </c:if>
               
               
               <c:if test="${ empty revdetail }">
                  <div>
                  <br>
                     <h1>내용이 없습니다.</h1>
                  </div>
               </c:if>
               </div>
         </div>
      </div>
   </div>

   <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/scripts.js"></script>
</body>
</html>