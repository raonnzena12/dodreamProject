<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailAside</title>
<!-- 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
       <style>
           #detailAside{
               width: 300px;
               height: auto;
               min-height: 700px;
              /*  border: 1px solid black; */
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
           		margin: 5px 0 0 10px;
           		display:block;
           		float:left;
           }
           #artProfile{
           		width:100%;
           		height: 90px;
           		/* border: 1px solid black; */
           }
           #artProfileImg{
           		border: 1px solid #495057;
           		width: 60px;
           		height: 60px;
           		float:right;
           		border-radius: 50%;
           		margin: 25px 10px 0 0;
           		display:block;
           }
           #artistText2{
           		font-size: 17px;
               	display: block;
              	float: left;
               	margin: 10px 0 0 10px; 
           }
           #asideFavorite{
           		font-size: 30px;
                text-align: center;
                color:#F39C12;
                margin:43px 0 0 3px;
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
           		/* border: 1px solid black; */
           		margin: 10px 0 10px 10px;
           		
           }
           #artistText3{
           		font-size:13px;
           		margin: 0;
           		/* padding: 0 0 10px 0; */
           		/* border: 1px solid black; */
           		
           }
           #artistText4{
           		font-size:16px;
           		margin: 5px 0 0 0;
           		padding: 0;
           		/* border: 1px solid black; */
           }
           /* ====================리워드=================== */
           #asideReward{
           		width:290px;
           		height:auto;
           		min-height: 250px;
           		/* border: 1px solid black; */
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
           		 /* border: 1px solid black; */
           		
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
           .RewardText3{
           		font-size: 25px;
           		font-weight: bold;
           		margin: 0 0 5px 10px;
           		padding:0;
           }
           .rewardIntroduce{
           		/* border: 1px solid black; */
           		width: 100%;
           		height: auto;
           		min-height: 50px;
           		padding: 0 0 0 10px;
           		font-size:14px;
           }
           .rewardBtn{
           		width: 272px;
	            height: 50px;
	            background-color: #F39C12;
	            border: #F39C12;
	            margin: 7px 0 0 8px; 
	            float: left;
	            display: block;
	            font-size:18px;
	            padding: 0 0 5px 0;
	            
           }
           .rewardBtn:hover{
           		background-color: #8E44AD;
           		cursor: pointer;
           }
       </style>
</head>
<body>
	
	<section id="detailAside">
		<section id="artist">
			<div id="artProfile">
				 <p id="artistText1">창작자 소개</p>
                 <img src="resources/projectImg/artistImg/${project.pArtistPFImage}" alt="" id="artProfileImg">
                 <p id="artistText2">${project.pArtistName }님 </p>
                 <div id="iconbox">
                 	<i class="material-icons" id="asideFavorite">favorite_border</i>
                 </div>
            </div>
            <div id="introduce">
            	아티스트 소개
            </div>
            <div id="artInformation">
            	<div id="artistText3">
            		${project.pArtistSns1 } <br>
            		${project.pArtistSns2 } <br>
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
						<p class="RewardText2">5명 선택</p> <!-- 리워드 정보 불러오기 -->
						<span class="badge badge-primary rewardBadge">${r.rLimit }개 남음</span><!-- 리워드 정보 불러오기 -->
					</div>
					<p class="RewardText3">${r.rPrice }원</p> <!-- 리워드 정보 불러오기 -->
					<div class="rewardIntroduce"> <!-- 리워드 정보 불러오기 -->
		            	${r.rExplain }
	            	</div>
	            	<input type="hidden" name="rNo" value="${r.rNo }">
	            	<input type="hidden" name="pNo" value="${project.pNo }">
	            	
	            	<button type="submit" class="btn btn-primary btn-lg btn-block rewardBtn">리워드 선택하고 후원하기</button><!-- 리워드 정보 불러오기 -->
				</section>
			</form>
		</c:forEach>
		
		</section>
	</section>
	
             


   	
	

</body>
</html>