<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailHeader</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<%@ include file = "../common/menubar.jsp" %>
       <style>
           #HeaderSection{
               width: 1000px;
               margin: auto;
           }
           
           #cgbox{
           		width:100%;
           		height:30px;
           		margin: 45px 0 10px 0;
           }
           #cgbox > #detailCG{
           		width: 70px;
           		height: auto;
           		min-height: 30px;
           		font-size: 20px;
           		font-weight: bold;
           		color: #F39C12;
           		text-align: center;
           		padding: 3px 0 0 0;
           		margin: auto;
           		
           }
           
           
           #detailTitle{
               height: 90px;
               text-align: center;
               font-size: 30px;
               padding-top: 20px;
           }
           #headerContent{
               height: 500px;

           }
           #detailimg{
               display: block;
               float: left;
               width: 49%;
               height: 100%;
           }
           #detailcon{
               display: block;
               float: right;
               width: 50%;
               height: 100%;
           }
           #detailNav{
               width: 100%;
               height: 100px;
           }
           #img{
               width: 450px;
               height: 350px;
               margin: 70px 15px 0 0;
               float: right;
               clear: both;
               position:relative;
           }
           #mainImg{
               width: 450px;
               height: 350px;
               clear: both;
           }
           #mainVideo{
               width: 450px;
               height: 350px;
               clear: both;
               display:none;
           }
           #detailcon > #text1{
               margin: 60px 0 0 13px;
               font-size: 22px;
           }
           #profile{
               width: 100%;
               height: 60px;
               margin: 10px 0 0 0;
               display: block;
           }
           #text2{
               font-size: 20px;
               display: block;
               float: right;
               margin: 15px 15px 0 0;
           }
           #profileimg{
                border-radius: 50%;
                border: 1px solid #495057;
                display: block;
                float: right;
                margin: 0 15px 0 0;
           }
           
           #text3{
                float: right;
                font-size: 15px;
                margin: 0;
                padding: 0;
                width: 100%;
                text-align: right;
                margin: 10px 15px 0 0;
           }
           #text4{
                float: right;
                width: 100%;
                font-size: 18px;
                text-align: right;
                margin-right: 15px;
           }
          
           #text5{
               float: right;
               display: block;
               width: 430px;
               height: 60px;
               border: 1px solid #ced4da;
               border-radius: 5px;
               text-align: center;
               margin: 10px 15px 0 0;
               padding-top: 5px;
               background-color: #f1f3f5;
              
           }
           #supportbtn{
               width: 350px;
               height: 50px;
               background-color: gray;
               border: gray;
               margin: 20px 0 0 15px; 
               float: left;
               display: block;
               
           }
          
           #icon{
                width: 50px;
                height: 50px;
                float: left;
                display: block;
                border: 1px solid #ddd;
                margin: 20px  0 0 10px;
                border-radius: 5px;
           }
           
           #icon2{
                width: 50px;
                height: 50px;
                float: left;
                display: block;
                border: 1px solid #ddd;
                margin: 20px 0 0 10px;
                border-radius: 5px;
           }
          
           #favorite{
               font-size: 50px;
               text-align: center;
               color: #F39C12;
           }
          
           
           #share{
                font-size: 50px;
                text-align: center;
                color:#495057;
           }
            .btn-group{
           		width:50px;
           		height:50px;
           		margin:0;
           		
           }
         
           
           #detailnav{
               border-top: 1px solid #ced4da;
               border-bottom: 1px solid #ced4da;
               width: 1000px;
               height: 70px;
               margin: 0;
               padding: 0;
               float: left;
               display: block;
               
           }
			#detailnav > div{
               width: 100px;
               height: 70px;
               display: block;
               float: left;
               margin: 0;
               padding: 0;
               text-align: center;
               padding-top:20px; 
               font-weight: bold;
           }
           
           #detailDday{
           		width:auto;
           		min-width: 80px;
           		height: 40px;
           		float: right;
           		display:inline-block;
           		font-size:25px;
           		font-weight: bold;
           		text-align: center;
           		padding: 0 5px 0 5px;
           		background-color: #8E44AD;
           		color: white;
           		position:absolute;
           		top:0;
           		right:0;
           	
           }
           
          
           
       </style>
       
</head>
<body>
	<section id="HeaderSection">
			<section id="cgbox"> 
				<div id="detailCG">${project.pCategoryName}</div>
			</section>
            <section id="detailTitle">
                <p>${project.pTitle}</p>
            </section>

            <section id="headerContent">
                <article id="detailimg">
                    <article id="img">
                    	<div id="detailDday">D-${project.pDDay}</div>
                    	<img src="resources/images/projectImg/mainImg/${project.pMainImage}" id="mainImg">
                   		
                   		<video controls autoplay loop id="mainVideo">
                   			<source src="${project.pMainImage}" type="video/mp4">
                   		</video>
                   	
                   	</article>
                </article>
                
                <article id="detailcon">
                    <p id="text1">
                       ${project.pSummaryText}
                    </p>
                    <div id="profile">
                    	<img src="resources/images/projectImg/artistImg/${project.pArtistPFImage}" id="profileimg" width="60px" height="60px">
                        <p id="text2">${project.pArtistName }님 </p>
                    </div>
                    
                        
                        <div id="text3">
                            	<%-- 총 명이 ${project.pCurrentFunding }원을 후원하셨습니다. --%>
                        </div>
                        <br>
                        <div id="text4">
                   			달성률 <fmt:parseNumber value="${(project.pCurrentFunding / project.pGoal) * 100 }" integerOnly = "true"/>% 
                        </div>
                        
                        <br>
                        <div id="text5">
				                            목표금액인 ${project.pCommaGoal}원이 모이면 펀딩이 성공합니다. <br>
				                            펀딩 성공시 예상 결제일은 ${project.pCloseDate } 입니다.
                        </div>
                        
                        <button type="button" class="btn btn-primary btn-lg btn-block" id="supportbtn" onclick="location.href='detailSt.dr?page=2&pNo='+${project.pNo};">후 원 하 기</button>
                    
		                        <div id="icon">
		                                <i class="material-icons" id="favorite">favorite_border</i>
		                        </div>
	                      <div id="icon2">
	                        <div class="btn-group "> 
	                            <i class="material-icons btn btn-default">share</i>
	                        </div>
                        </div>
                       
                       
                </article>
            </section>
    
            
            <div class="row sticky-top">
            	<div class="col-md-12">
                <nav class="nav">
                    <div class="container-fluid" id="detailnav">
                      <div id="story">스토리</div>
                      <div id="guide">펀딩 안내</div>
                      <div id="community">커뮤니티</div>
                      <div id="reward">리워드</div>
                    </div>
                </nav>
                </div>
            </div>
	</section>

</body>
</html>