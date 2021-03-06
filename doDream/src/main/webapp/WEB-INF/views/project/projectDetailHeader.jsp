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
              height: auto;
              min-height:300px;
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
           #cgbox{
           		width:100%;
           		height:30px;
           		/* border: 1px solid black; */
           		margin: 45px 0 10px 0;
           }
           #cgbox > #detailCG{
           		width: 70px;
           		height: auto;
           		min-height: 30px;
           		/* border: 1px solid #F39C12;
           		background-color:#F39C12; */
           		font-size: 20px;
           		font-weight: bold;
           		color: #F39C12;
           		text-align: center;
           		/* border-radius: 3px; */
           		padding: 3px 0 0 0;
           		margin: auto;
           		
           }
           
           
           #detailTitle{
               height: 90px;
               text-align: center;
               font-size: 30px;
               padding-top: 20px;
               /* border-bottom: 1px solid #ced4da; */
               /* border: 1px solid black; */
           }
           #headerContent{
               height: 500px;
              /*  border: 1px solid black; */

           }
           #detailimg{
               display: block;
               float: left;
               width: 49%;
               height: 100%;
             /*   border: 1px solid black; */
           }
           #detailcon{
               display: block;
               float: right;
               width: 50%;
               height: 100%;
               padding-bottom: 20px;
              /*  border: 1px solid black; */
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
               display: block;
           }
           #mainVideo{
               width: 450px;
               height: 350px;
               /* clear: both;
               display:none; */
           }
           .video{
           	   width: 450px;
               height: 350px;
               clear: both;
               display: block;
           }
           #detailcon > #text1{
               margin: 61px 0 0 13px;
               font-size: 20px;
              /* border: 1px solid black; */
               padding: 0 0 0 5px;
               min-height: 77px;
               height:auto;
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
               margin: 20px 15px 5px 0;
           }
           #profileimg{
                border-radius: 50%;
                border: 1px solid #495057;
                display: block;
                float: right;
                margin: 0 15px 0 0;
           }
           .noImg{
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
                width: 450px;
                text-align: right;
                margin: 15px 15px 0 0;
           }
           #text4{
                /*border: 1px solid black;*/
                float: right;
                width: 100%;
                font-size: 18px;
                text-align: right;
                margin-right: 15px;
                margin-bottom: 5px;
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
          /*  #favorite2{
           		font-size: 50px;
               	text-align: center;
               	color: #8E44AD;
           } */
           
           #share{
                font-size: 50px;
                text-align: center;
                color:#495057;
                /* margin-right: 15px; */
           }
            #icon2 .btn-group{
           		/* border: 1px solid black; */
           		width:50px;
           		height:50px;
           		margin:0;
           		
           }
           #icon2 .shareUl{
           		width:50px;
           		height:50px;
           		border:none;
           		
           		/* padding: 10px; */
           }
           
           #icon2 img{
           		width:30px;
           		height:30px;
           		display:block;
           		float:left;
           		margin: 0 10px 0 5px;
           }
           
           #detailnav{
               width: 1000px;
               height: 70px;
               margin: 0;
               padding: 0;
               float: left;
               display: block;
           }
           #detailnavpadding {
               padding-left: 80px;
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
           
          #mid-menu {
            border-top: 1px solid #ced4da;
            border-bottom: 1px solid #ced4da;
            background-color: rgba(255,255,255,0.9);
            padding-top: 5px;
            margin-top:20px;
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
                    	<c:choose>
                    	<c:when test="${ fn:contains(project.pMainImage, '_main') }">
                    	<img src="resources/images/projectImg/mainImg/${project.pMainImage}" id="mainImg">
                    	</c:when>
                    	<c:otherwise>
                   		<div class="video-container video" style="TEXT-ALIGN: center; height: 100%;">
                   			<object type="text/html" width="100%" height="100%" data="//www.youtube.com/embed/${project.pMainImage}?&amp;autoplay=1&amp;loop=1" id="mainVideo"></object>
                   		</div>
                   		</c:otherwise>
                   		</c:choose>
                   		
                   		<%-- <video controls autoplay loop id="mainVideo">
                   			<source src="https://www.youtube.com/watch?v=${project.pMainImage}" type="video/mp4">
                   		</video> --%>
                   	
                   	</article>
                </article>
                
                <article id="detailcon">
                    <p id="text1">
                       ${project.pSummaryText}
                    </p>
                    <div id="profile">
                    
                   <%--  <c:if test='${project.pArtistPFImage ne ""}'> --%>
                    	<img src="resources/images/projectImg/artistImg/${project.pArtistPFImage}" id="profileimg" width="60px" height="60px">
                   <%--  </c:if>
                    <c:if test='${project.pArtistPFImage eq ""}'>
                    	<i class="material-icons noImg">account_circle</i>
                    </c:if> --%>
                        
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
				                           <%--  목표금액인 ${project.pCommaGoal}원이 모이면 펀딩이 성공합니다. <br>
				                            펀딩 성공시 예상 결제일은 ${project.pCloseDate } 입니다. --%>
                        </div>
                        
                        <script>
                        	var closeDate = "${project.pCloseDate }";
                        	var goal = "${project.pCommaGoal}";
                        	console.log(closeDate);
                        	var str = closeDate.split("-");
                        	
                        	console.log(str[0]+"년 "+str[1]+"월 "+str[2]+"일");
                        	
                        	$("#text5").html(" 목표금액인 " + goal + "원이 모이면 펀딩이 성공합니다. <br> 펀딩 성공시 예상 결제일은 "+
                        			str[0]+"년 "+str[1]+"월 "+str[2]+"일"+" 입니다.");
                        </script>
                        
                        
                        
                        
                        <button type="button" class="btn btn-primary btn-lg btn-block" id="supportbtn" onclick="location.href='detailSt.dr?page=2&pNo='+${project.pNo};">후 원 하 기</button>
                     
                     <!-- 로그인 했을 때 -->
                      <%-- <c:if test="${!empty sessionScope.loginUser}">
                      		
                      		<!-- 로그인 유저와 좋아요 한사람이 같을 때 -->
	                        <c:if test="${loginUser.userNo eq like.likeNo}"> --%>
		                        <div id="icon">
		                                <i class="material-icons" id="favorite">favorite_border</i>
		                        </div>
	                       <%-- </c:if>
	                        <!-- 로그인 유저와 좋아요 한사람이 다를 때 -->
	                        <c:if test="${loginUser.userNo ne like.likeNo}">
	                        	<div id="icon">
		                                <i class="material-icons" id="favorite" onclick="Like();">favorite_border</i>
		                        </div>
	                        </c:if>
                     </c:if>
                     <!-- 로그인 안했을 때 -->
                      <c:if test="${empty sessionScope.loginUser}">
	                     	<div id="icon">
		                          <i class="material-icons" id="favorite" onclick='alert("로그인이 필요합니다.");'>favorite_border</i>
		                    </div>
                     </c:if> --%>
                        
	                      <div id="icon2">
	                        <div class="btn-group"> 
	                            <i class="material-icons btn btn-default" style="padding:0" id="share"  data-toggle="dropdown" aria-expanded="false">share</i>
	                            
	                            <ul class="dropdown-menu shareUl" role="menu" style="width:50px; height:50px;">
								    <li>
									    <a href="javascript:sendKakaoLink()" title="카카오톡 공유하기">
	                                    	<img src="resources/images/kakao_sns_icon.png">
	                                	</a>
                                	</li>
								    <li>
								    	<a href="" onclick="window.open('https://twitter.com/share?text=dodreamTest&url=http://localhost:8080/spring/detailSt.dr?pNo=${ project.pNo }','','width=700, height=460'); return false;", title="트위터 공유하기">
                                    		<img src="resources/images/twit_gray_icon.png">
                                		</a>
								    </li>
								    <li>
								    	<a href="" onclick="window.open('http://www.facebook.com/sharer/sharer.php?u=http://localhost:8080/spring/detailSt.dr?pNo=${ project.pNo }','','width=700, height=460'); return false;", title="페이스북 공유하기">
		                                    <img src="resources/images/faceB_sns_icon.png">
		                                </a>
								    </li>
							  </ul>
	                        </div>
                        </div>
                       
                       
                </article>
            </section>
    
            
        </section>
        <div class="row sticky-top mb-4" id="mid-menu">
            <div class="col-md-2"></div>
            <div class="col-md-8" id="detailnavpadding">
                <nav class="nav">
                    <div class="container-fluid" id="detailnav">
                        <div id="story" onclick="location.href='detailSt.dr?pNo='+${project.pNo};">스토리</div>
                        <div id="guide" onclick="location.href='detailSt.dr?page=4&pNo='+${project.pNo};">펀딩 안내</div>
                        <div id="community" onclick="location.href='detailSt.dr?page=3&pNo='+${project.pNo};">커뮤니티</div>
                        <div id="reward" onclick="location.href='detailSt.dr?page=2&pNo='+${project.pNo};">리워드</div>
                    </div>
                </nav>
            </div>
            <div class="col-md-2"></div>
        </div>
	
	<script>
	
	/* 아티스트 이미지 클릭시 아티스트 마이페이지로 이동 */
	$(function(){
		
		var total = ${project.pCurrentFunding };
		var userCount = ${project.pUserCount};
		$("#text3").text("총 "+ userCount + "명이 " + total.toLocaleString() + "원을 후원하셨습니다.");
		//총 명이 ${project.pCurrentFunding }원을 후원하셨습니다.
		
		if(${!empty sessionScope.loginUser}){
			if(${loginUser.userNo eq like.likeNo}){
				$("#favorite").css("color","#8E44AD");
				$("#favorote").text("favorite");
				
			}else if(${loginUser.userNo ne like.likeNo}){
				$("#favorite").css("color","#F39C12");
				$("#favorote").text("favorite_border");
			}
			
		}
		
		$("#favorite").on("click", function(){
			console.log("121212");
			if(${empty sessionScope.loginUser}) {
				//alert("로그인이 필요합니다.");
				Swal.fire(
					  '로그인!',
					  '로그인이 필요합니다.',
					  'success'
					)
				return false;
			} else {
				if($(this).css("color") == "rgb(142, 68, 173)"){
					LikeDelete(); 
				}else if($(this).css("color") == "rgb(243, 156, 18)"){
					detailLike();
				}
			}
		});
		
		if(${project.pDDay} < 0){
			$("#detailDday").text("종료된 프로젝트 입니다.").css("background-color","gray");
			$("#supportbtn").css({"background-color":"gray", "border":"#F39C12"});
		}/* else if( total > ${project.pGoal}){
			$("#detailDday").text("성공한 프로젝트 입니다.").css("background-color","gray");
			$("#supportbtn").css({"background-color":"gray", "border":"#F39C12"});
		} */
	});
	/* ===========================좋아요 버튼 취소=========================== */
	
	function LikeDelete(){
			//if(${!empty sessionScope.loginUser}){
				var uno = "${loginUser.userNo}";
				var pNo = ${project.pNo};
				
				//console.log(uno);
				//console.log(pNo);
				Swal.fire({
				  title: '좋아요 취소?',
				  text: "프로젝트 좋아요를 취소하시겠습니까?",
				  type: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: 'Yes'
				}).then((result) => {
				  if (result.value) {
					  
					  $.ajax({
							url:"detailLikeDelete.dr",
							data:{pNo:pNo, userNo:uno},
							type: "post",
							success: function(result){
								if(result == 1){
									$("#favorite").css("color","#F39C12");
									$("#favorite").text("favorite_border");
									//alert("좋아요가 취소되었습니다.");
									Swal.fire(
									  '취소 완료!',
									  '정상적으로 취소가 완료되었습니다.',
									  'success'
									)
									
								}else{
									alert("좋아요 취소 실패");
								}
								
							},
							error: function(e){
								console.log(e);
							}
						});
					  
				  
				    
				  }
				})
				
					/* if(confirm("프로젝트 좋아요를 취소하시겠습니까?")){
					
					$.ajax({
						url:"detailLikeDelete.dr",
						data:{pNo:pNo, userNo:uno},
						type: "post",
						success: function(result){
							if(result == 1){
								$("#favorite").css("color","#F39C12");
								$("#favorite").text("favorite_border");
								//alert("좋아요가 취소되었습니다.");
								Swal.fire(
								  '취소 완료!',
								  '정상적으로 취소가 완료되었습니다.',
								  'success'
								)
								
							}else{
								alert("좋아요 취소 실패");
							}
							
						},
						error: function(e){
							console.log(e);
						}
					});
				
			} */
		}	
	
		/* ===========================좋아요 버튼=========================== */
	
		function detailLike(){
			
				var uno = "${loginUser.userNo}";
				var pNo = ${project.pNo};
					
					$.ajax({
						url: "detailLike.dr",
						data: {pNo:pNo, userNo:uno},
						type: "post",
						success: function(result){
							if(result == 1){
								$("#favorite").css("color", "#8E44AD");
								$("#favorite").text("favorite");
								//alert("좋아요를 성공했습니다.");
								Swal.fire(
								  '좋아요 성공!',
								  '정상적으로 좋아요가 완료됬습니다.',
								  'success'
								)
							}else{
								alert("좋아요 실패");
							}
							
						},
						error: function(e){
							console.log(e);
						}
						
					});
				
		}
		
		
		/* 카카오톡 공유하기 */
		Kakao.init('f6425fbc64a59be6a2488da73ec0761d');
		function sendKakaoLink() {
			console.log("kakao");
			var hashTag = "#"+"${project.pHashTag}".replace(/,/gi," #");
			console.log(hashTag);
		    Kakao.Link.sendDefault({
		        objectType: 'feed',
		        content: {
		          title: '${project.pTitle}',
		          description: hashTag,
		          imageUrl: 'https://i.imgur.com/rA4AbTP.png',
		          link: {
		            mobileWebUrl: 'http:localhost:8080',
		            webUrl: 'http:localhost:8080'
		          }
		        },
		        social: {
		          likeCount: 286,
		          viewCount: ${ project.pCount }
		        },
		        buttons: [
		          {
		            title: '웹으로 보기',
		            link: {
		              mobileWebUrl: 'http:localhost:8080',
		              webUrl: 'http:localhost:8080'
		            }
		          }
		        ]
		      });
		}
			
	</script>
	
</body>
</html>