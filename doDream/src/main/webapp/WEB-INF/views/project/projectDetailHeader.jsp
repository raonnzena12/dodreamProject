<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailHeader</title>
<%@ include file = "../common/menubar.jsp" %>
       <style>
           #HeaderSection{
               width: 1000px;
              /*  height: auto; */
              /*  min-height:1000px; */
               margin: auto;
               
           }
           /* #content{
               width: 100%;
               min-height: 1000px;
               border: 1px solid black;
           } */
           /* section, nav{
               width: 100%;
               height: 50px;
               border: 1px solid black;
               display: block;
           } */
           /* #detailContent2{
                width:70%;
                height: auto;
                min-height: 1000px;
                border: 1px solid black;
                display: block;
                float: left;
           } */
           #detailTitle{
               height: 100px;
               text-align: center;
               font-size: 30px;
               padding-top: 25px;
               /* border-bottom: 1px solid #ced4da; */
           }
           #headerContent{
               height: 500px;

           }
           #detailimg{
               display: block;
               float: left;
               width: 49%;
               height: 100%;
               /* border: 1px solid black; */
           }
           #detailcon{
               display: block;
               float: right;
               width: 50%;
               height: 100%;
               /* border: 1px solid black; */
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
               
              /*  border: 1px solid black; */
           }
           #mainImg{
               width: 450px;
               height: 350px;
               clear: both;
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
               /* border: 1px solid black; */

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
                /* border: 1px solid black; */
                float: right;
                font-size: 15px;
                margin: 0;
                padding: 0;
                width: 100%;
                text-align: right;
                margin: 10px 15px 0 0;
           }
           #text4{
                /*border: 1px solid black;*/
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
               background-color: #F39C12;
               border: #F39C12;
               margin: 20px 0 0 15px; 
               float: left;
               display: block;
               
           }
           #supportbtn:hover{
           		cursor: pointer;
           		background-color: #8E44AD;
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
           #favorite:hover{
           		cursor: pointer;
           		color: #8E44AD;
           }
           #favorite2:hover{
           		cursor: pointer;
           		color: #8E44AD;
           }
           
           #share:hover{
           		cursor: pointer;
           		color: #8E44AD;
           }
           #favorite{
               font-size: 50px;
               text-align: center;
               color: #F39C12;
               /* margin-left: 10px; */
           }
           #favorite2{
           		font-size: 50px;
               	text-align: center;
               	color: #8E44AD;
           }
           
           #share{
                font-size: 50px;
                text-align: center;
                color:#495057;
                /* margin-left: 10px; */
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
           #detailDday{
           		width:auto;
           		min-width: 80px;
           		height: 40px;
           		/* border: 1px solid black; */
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
            <section id="detailTitle">
                <p>${project.pTitle}</p>
            </section>

            <section id="headerContent">
                <article id="detailimg">
                    <article id="img">
                    	<div id="detailDday">D-${project.pDDay}</div>
                    	<img src="resources/projectImg/mainImage/${project.pMainImage}" alt="" id="mainImg">
                   	</article>
                </article>
                <article id="detailcon">
                    <p id="text1">
                       ${project.pSummaryText}
                    </p>
                    <div id="profile">
                        <img src="resources/projectImg/artistImg/${project.pArtistPFImage}" alt="" id="profileimg" width="60px" height="60px">
                        <p id="text2">${project.pArtistName }님 </p>
                    </div>
                    
                        
                        <div id="text3">
                            	총 30명이 300,000원을 후원하셨습니다.
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
                     
                     <!-- 로그인 했을 때 -->
                      <c:if test="${!empty sessionScope.loginUser}">
                      		
                      		<!-- 로그인 유저와 좋아요 한사람이 같을 때 -->
	                        <c:if test="${loginUser.userNo eq like.likeNo}">
		                        <div id="icon">
		                                <i class="material-icons" id="favorite2" onclick="LikeDelete();">favorite_border</i>
		                        </div>
	                        </c:if>
	                        <!-- 로그인 유저와 좋아요 한사람이 다를 때 -->
	                        <c:if test="${loginUser.userNo ne like.likeNo}">
	                        	<div id="icon">
		                                <i class="material-icons" id="favorite" onclick="detailLike();">favorite_border</i>
		                        </div>
	                        </c:if>
                     </c:if>
                     <!-- 로그인 안했을 때 -->
                     <c:if test="${empty sessionScope.loginUser}">
	                     	<div id="icon">
		                          <i class="material-icons" id="favorite" onclick='alert("로그인이 필요합니다.");'>favorite_border</i>
		                    </div>
                     </c:if>
                         
                        <div id="icon2">
                            <i class="material-icons" id="share">share</i>
                        </div>
                       
                </article>
            </section>
    
            
            <div class="row sticky-top">
            	<div class="col-md-12">
                <nav class="nav">
                    <div class="container-fluid" id="detailnav">
                      <div id="story" onclick="location.href='detailSt.dr?pNo='+${project.pNo};">스토리</div>
                      <div id="guide">펀딩 안내</div>
                      <div id="community" onclick="location.href='detailSt.dr?page=3&pNo='+${project.pNo};">커뮤니티</div>
                      <div id="reward" onclick="location.href='detailSt.dr?page=2&pNo='+${project.pNo};">리워드</div>
                    </div>
                </nav>
                </div>
            </div>
	</section>
	
	<script>
	
	
		
	
	/* ===========================좋아요 버튼 취소=========================== */
		function LikeDelete(){
			
		
			if(${!empty sessionScope.loginUser}){
				
				var uno = ${loginUser.userNo};
				var pNo = ${project.pNo};
				
				//$("#favorite2").on("click", function(){
					if (confirm("프로젝트 좋아요를 취소하시겠습니까?")) {
					
					$.ajax({
						url:"detailLikeDelete.dr",
						data:{pNo:pNo, userNo:uno},
						type: "post",
						success: function(result){
							if(result == 1){
								$("#favorite2").css("color","#F39C12");
								alert("좋아요가 취소되었습니다.");
							}else{
								alert("좋아요 취소 실패");
							}
							
						},
						error: function(e){
							console.log(e);
						}
					});
				}
				//});
			}
		}	
		
		/* ===========================좋아요 버튼=========================== */
	
		function detailLike(){
			
			//$("#favorite").on("click", function(){
				
				if(${!empty sessionScope.loginUser}){
	
					var uno = ${loginUser.userNo};
					var pNo = ${project.pNo};
					
					$.ajax({
						url: "detailLike.dr",
						data: {pNo:pNo, userNo:uno},
						type: "post",
						success: function(result){
							if(result == 1){
								$("#favorite").css("color", "#8E44AD");
								alert("좋아요를 성공했습니다.");
							}else{
								alert("좋아요 실패");
							}
							
						},
						error: function(e){
							console.log(e);
						}
						
					});
					
				}
				
			//});
		}
	</script>
	
	
	<!-- <div class="container-fluid">
		<div class="row sticky-top" id="navOuter">


			<div class="col-md-2"></div>
			<div class="col-md-6">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="#">펀딩</a></li>
					<li class="nav-item"><a class="nav-link" href="#">♥</a></li>
					<li class="nav-item"><a class="nav-link" href="#">알림</a></li>
				</ul>
			</div>
			<div class="col-md-4">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="#">펀딩로그</a></li>
				</ul>
			</div>
		</div>
	</div>
 -->


</body>
</html>