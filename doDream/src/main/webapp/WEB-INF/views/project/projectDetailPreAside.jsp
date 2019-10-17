<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailPreAside</title>
       <style>
           #detailAside{
               width: 300px;
               height: auto;
               min-height: 700px;
               margin: 0;
               padding:0;
           } 
           #artist{
           		width:290px;
           		height:auto;
           		min-height: 280px;
           		border: 1px solid #ddd;
           		float: right;
           		margin:10px 0 0 0;
           		border-radius: 3px;
           }
           
           /* ==============artist정보================ */
           #artistText1{
           		font-size: 20px;
           		font-weight:bold;
           		margin: 5px 0 0 0;
           		padding: 0 0 0 10px;
           		display:block;
           		float:left;
           		width:100%;
           		height:30px;
           		left: 0;
           }
           #artProfile{
           		width:100%;
           		height:auto;
           		min-height: 90px;
           		position: relative;
           }
           #artistImg{
           		width: 60px;
           		height: 60px;
           		float:right;
           		display:block;
           		position: absolute;
           		bottom: 0;
           		right: 10px;
           }
           .artProfileImg{
           		border: 1px solid #495057;
           		width: 60px;
           		height: 60px;
           		float:right;
           		border-radius: 50%;
           		display:block;
           }
          
           #artistName{
           		width:226px;
           		height:auto;
           		min-height:60px;
           		float:left;
           		bottom: 0;
           		left: 0;
           		
           }
           #nameBox{
           		width:auto;	
           		min-width:162px;
           		height:auto;
           		min-height:30px;
           		position: relative;
           		
           		
           }
           #artistText2{
           		min-width:50px;
           		width:auto;
           		height:auto;
           		min-height:30px;
           		font-size: 17px;
               	display: block;
              	float: left;
               	padding: 0 32px 0 10px;
               	margin:15px 0 0 0;
               	position: relative;
               	
           }
            #iconbox{
           		width: 30px;
           		height: 30px;
           		margin:0;
           		display:block;
           		float:right;
           		position: absolute;
           		bottom:0;
           		right: 0;
           		
           		
           }
           #asideFavorite{
           		font-size: 30px;
                text-align: center;
                color:#F39C12;
                
           }
           #introduce{
           		width:270px;
           		height:auto;
           		min-height:100px;
           		border-bottom: 2px solid #ced4ba;
           		margin: 0 0 0 10px;
           		padding: 0 0 10px 0;
           		font-size:14px;
           }
           #artInformation{
           		width:270px;
           		height:auto;
           		min-height:60px;
           		margin: 10px 0 10px 10px;
           		
           }
           #artistText3{
           		font-size:13px;
           		margin: 0;
           		
           }
           #artistText4{
           		font-size:16px;
           		margin: 5px 0 0 0;
           		padding: 0;
           }
           /* ====================리워드=================== */
           #asideReward{
           		width:290px;
           		height:auto;
           		min-height: 250px;
           		display: block;
           		float: right;
           		margin: 10px 0 0 0;
           		
           }
           .projectReward{
           		width:290px;
           		height:auto;
           		min-height: 190px;
           		border: 1px solid #ddd;
           		float: right;
           		margin: 2px 0 0 0;
           		border-radius: 3px;
           		padding:  0 0 10px 0;
           }
           #RewardText1{
           		font-size:14px;
           		margin: 0 0 0 0;
           		color: #495057;
           }
           .rewardTitle{
           		width:100%;
           		height: 30px;
           		
           }
           .rewardIcon{
           		font-size: 18px;
           		margin: 6px 0 0 5px;
           		color: #495057;
           		display:block;
           		float:left;
           		
           }
           .RewardText2{
           		font-size: 15px;
           		font-weight: bold;
           		color: #495057;
           		margin: 4px 0 0 0;
           		display:block;
           		float:left;
           }
           .rewardBadge{
           		width: auto;
           		min-width:70px;
           		height:25px;
           		background-color: #8E44AD;
           		display:block;
           		float:right;
           		margin:5px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           .rewardBadge1{
           		width: auto;
           		min-width:70px;
           		height:25px;
           		background-color: #adb5bd;
           		display:block;
           		float:right;
           		margin:5px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           .RewardText3{
           		font-size: 25px;
           		font-weight: bold;
           		margin: 0 0 5px 10px;
           		padding:0;
           }
           .rewardIntroduce{
           		width: 100%;
           		height: auto;
           		min-height: 50px;
           		padding: 0 0 0 10px;
           		font-size:14px;
           }
           .rewardBtn{
           		width: 272px;
	            height: 50px;
	            background-color: gray;
	            border: gray;
	            margin: 7px 0 0 8px; 
	            float: left;
	            display: block;
	            font-size:18px;
	            padding: 0 0 5px 0;
	            
           }
          
           #artistsns{
           		width:100%;
           		height:25px;
           }
           #fb, #ig{
           		float:left;
           		display:block;
           		margin-right:10px;
           }
           
           #reportbox{
           		width:100%;
           		min-height:60px;
           		height:auto;
           		border: 1px solid #ddd;
           		display: block;
           		float:left;
           		margin: 20px 0 0 0;
           		border-radius: 3px;
           		font-size: 13px;
           		padding: 5px 0 0 8px;
           }
           
           .preBtn{
           		width: 272px;
	            height: 50px;
	            margin: auto;
	            margin-top : 10px;
	            margin-bottom: 10px;
           		background-color: gray !important;
	            border: gray;
           }
            preBtn:hover{
           		background-color: gray !important;
           		outline: none !important;
           		border: none !important;
           }
       </style>
</head>
<body>
	
	<section id="detailAside">
		<section id="artist">
			<div id="artProfile" class="clearfix">
				 <div id="artistText1">창작자 소개</div>
				 <div id="artistImg">
				 	<c:choose>
                    	<c:when test="${fn:contains(project.pArtistPFImage,'_artist')}">
                    	<img src="resources/images/projectImg/artistImg/${project.pArtistPFImage}" class="artProfileImg">
                    	</c:when>
                    	<c:otherwise>
                   		<img src="resources/images/projectImg/artistImg/talent.png" class="artProfileImg" width="60px" height="60px">
                   		</c:otherwise>
                   	</c:choose>
                 </div>
                 <div id="artistName">
		                 <div id="artistText2">${project.pArtistName }님
			                 <div id="iconbox" class="clearfix">
				                 	<i class="material-icons" id="asideFavorite">favorite_border</i>
				             </div>
			             </div>
                 </div>
            </div>
            <div id="introduce">
            	${project.pArtistIntroduction}
            </div>
            <div id="artInformation">
            	<div id="artistText3">
            		<div id="artistsns">
            			<div id="fb">
	            			<c:choose>
		            		<c:when test="${fn:contains(project.pArtistSns1,'없음')}">
		            		</c:when>
		            		<c:otherwise>
		            			<a  href="javascript:void(0);"><img src="resources/images/faceB_gray_icon.png" width="20px" height="20px"></a>
		            		</c:otherwise>
		            		</c:choose>
	            		</div>
	            		<div id="ig">
	            			<c:choose>
		            		<c:when test="${fn:contains(project.pArtistSns1,'없음')}">
		            		</c:when>
		            		<c:otherwise>
		            			<a  href="javascript:void(0);"><img src="resources/images/inStar_gray_icon.png" width="20px" height="20px"></a>
		            		</c:otherwise>
		            		</c:choose>
	            		</div>
            		<!-- 
	            		<div id="fb">
	            			<a  href="javascript:void(0);"><img src="resources/images/faceB_gray_icon.png" width="20px" height="20px"></a>
	            		</div>
	            		<div id="ig">
	            			<a  href="javascript:void(0);"><img src="resources/images/inStar_gray_icon.png" width="20px" height="20px"></a>
	            		</div> -->
            		</div>
            		
            		${project.pArtistPhone} <br>
            		${project.pArtistEmail}
            	</div>
            	<div id="artistText4">진행한 프로젝트 ${project.pOpenCount }개</div><!-- 진행프로젝트 개수 불러오기 -->
            </div>
		</section>
		
		<section id="asideReward">
		
			<p id="RewardText1">선택 할 수 있는 총 ${fn:length(reward) }종의 리워드가 있습니다.</p><!-- 리워드 정보 불러오기 -->
			
		<c:forEach var="r" items="${reward }">
			<form action="detailSubReward.dr" method="post">
			
				<section class="projectReward">
					<div class="rewardTitle">
						<i class="material-icons rewardIcon">keyboard_arrow_right</i>
						
						
						<p class="RewardText2">
					             ${r.rSum}명 선택
						</p> 
					
		            		<%-- <span class="badge badge-primary rewardBadge1">${r.rAmount }개 남음</span> --%>
		            		
		            	<c:if test="${r.rLimit ne '-1'}">
						
							<c:if test="${r.rAmount eq '0' }">
			            		<span class="badge badge-primary rewardBadge1">${r.rAmount }개 남음</span><!-- 리워드 정보 불러오기 -->
			            	</c:if>
			            	<c:if test="${r.rAmount ne '0' }">
			            		<span class="badge badge-primary rewardBadge1">${r.rAmount }개 남음</span><!-- 리워드 정보 불러오기 -->
			            	</c:if>
							
						</c:if>
						<c:if test="${r.rLimit eq '-1'}">
							
						</c:if>
		            		
		            		
						
					</div>
					<p class="RewardText3">${r.rPrice }원</p>
					<div class="rewardIntroduce">
		            	${r.rExplain }
	            	</div>
	            	<input type="hidden" name="rNo" value="${r.rNo }">
	            	<input type="hidden" name="pNo" value="${project.pNo }">
	            	
	            		<button type="button" class="btn btn-primary btn-lg btn-block preBtn" disabled>리워드 선택하고 후원하기</button>
	            		
				</section>
			
			</form>
		</c:forEach>
		
		<div id="reportbox" class="clearfix">
			<!-- 신고하기 -->
			해당 프로젝트에 허위내용 및 지적재산권을 <br>
			침해하는 내용이 있다면 신고해주세요.
			<button type="button" class="btn btn-primary btn-lg btn-block preBtn" disabled style="margin-right:10px;">프로젝트 신고하기</button>
		</div>
		
		</section>
	</section>

</body>
</html>