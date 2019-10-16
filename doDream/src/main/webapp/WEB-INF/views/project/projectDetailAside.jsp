<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailAside</title>
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
           		margin: 5px 0 0 0;
           		padding: 0 0 0 10px;
           		display:block;
           		float:left;
           		/* border: 1px solid black; */
           		width:100%;
           		height:30px;
           		
           		left: 0;
           }
           #artProfile{
           		width:100%;
           		height:auto;
           		min-height: 90px;
           		/* border: 1px solid black; */
           		position: relative;
           		/* 프로필 전체 감싼 박스 */
           }
           #artistImg{
           		/* 아티스트 이미지 박스 */
           		/* border: 1px solid black; */
           		width: 60px;
           		height: 60px;
           		float:right;
           		display:block;
           		position: absolute;
           		bottom: 0;
           		right: 10px;
           }
           #artProfileImg{
           		border: 1px solid #495057;
           		width: 60px;
           		height: 60px;
           		float:right;
           		border-radius: 50%;
           		display:block;
           		/* position: absolute; */
           		/* 이미지 */
           }
          
           #artistName{
           		width:226px;
           		height:auto;
           		min-height:60px;
           		/* border: 1px solid black; */
           	/* 	margin:10px 0 0 0; */
           		float:left;
           		
           		bottom: 0;
           		left: 0;
           		
           		/* 아티스트 이름, 아이콘 감싼것 */
           }
           
           #artistText2 a{
           	color:#444;
           }
           
           #nameBox{
           		width:auto;	
           		min-width:162px;
           		height:auto;
           		min-height:30px;
           		/* border: 1px solid black; */
           		position: relative;
           		
           		
           }
           #artistText2{
           		max-width:200px;
           		width:auto;
           		height:auto;
           		min-height:30px;
           		font-size: 17px;
               	display: block;
              	float: left;
               	padding: 0 32px 0 10px;
               	margin:15px 0 5px 0;
               /* border: 1px solid black; */
               	position: relative;
               	
               	/* 아티스트 이름 */
           }
            #iconbox{
           		/* border: 1px solid black; */
           		width: 30px;
           		height: 30px;
           		/* margin-top: 13%; */
           		margin:0;
           		display:block;
           		float:right;
           		position: absolute;
           		bottom:0;
           		right: 0;
           		
           		
           		/* 프로필이미지 감싼거 */
           }
           #asideFavorite{
           		font-size: 30px;
                text-align: center;
                color:#F39C12;
                cursor: pointer;
               /*  margin:43px 0 0 3px; */
                /* position: absolute; */
                /* 하트 아이콘 */
           }
           #introduce{
           		width:255px;
           		height:auto;
           		min-height:100px;
           		border-bottom: 1px solid #ced4ba;
           		margin: 0 0 0 10px;
           		padding: 0 0 10px 0;
           		font-size:14px;
           		/* border: 1px solid black; */
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
           		/* border: 1px solid black; */
           		width: 100%;
           		height: auto;
           		min-height: 50px;
           		padding: 0 10px;
           		font-size:14px;
           }
           .rewardBtn{
           		width: 255px;
	            height: 50px;
	            background-color: #F39C12;
	            border: #F39C12;
	            margin: 15px 0 0 8px; 
	            float: left;
	            display: block;
	            font-size:18px;
	            padding: 2px 0 5px 0;
	            
           }
           
           .rewardBtn:hover{
           		background-color: #8E44AD;
           		border: #8E44AD;
           		cursor: pointer;
           }
           .rewardBtn2{
           		width: 272px;
	            height: 50px;
	            background-color: #adb5bd;
	            border: #adb5bd;
	            margin: 7px 0 0 8px; 
	            float: left;
	            display: block;
	            font-size:18px;
	            padding: 0 0 5px 0;
           
           }
           .rewardBtn2:hover{
           		background-color: #adb5bd;
           		border: #adb5bd;
           		cursor: pointer;
           }
           #artistsns{
           		width:100%;
           		height:25px;
           		/* border: 1px solid black; */
           }
           #fb, #ig{
           		float:left;
           		display:block;
           		/* border: 1px solid black; */
           		margin-right:10px;
           }
           
           #reportbox{
           		width:100%;
           		min-height:60px;
           		height:auto;
           		border: 1px solid #ddd;
           		display: block;
				float:left;
				text-align: center;
           		margin: 20px 0 0 0;
           		border-radius: 3px;
           		font-size: 13px;
           		padding: 5px 0 0 8px;
           }
           
           #reportbox > .reportBtn{
           		width: 272px;
	            height: 50px;
           		background-color: #F39C12;
	            border: #F39C12;
	            margin:4px 5px 5px 0;
           }
           #reportbox > .reportBtn:hover{
           		background-color: #8E44AD;
           		border: #8E44AD;
           		cursor: pointer;
           }
           .modal{
           		display:none;
           }
           #reportContent{
           		width: 465px;
           		height:100px;
           		resize: none;
           }
           .reSubmit{
           		background-color: #F39C12;
           		border: #F39C12;
		   }
		   #asideReward .rewardTitle {
			   font-weight: 600;
			   font-size: 17px;
			   white-space: nowrap;
			   overflow: hidden; 
			   text-overflow: ellipsis; /* 여러 줄 자르기 추가 스타일 */ 
			   white-space: normal; line-height: 1.2;
			   /* max-height: 4em; */
			   height: auto;
			   margin-bottom: 5px;
			   word-break: keep-all;
			   text-overflow: ellipsis;
		   }
       </style>
</head>
<body>
	
	<section id="detailAside">
		<section id="artist" class="p-2">
			<div id="artProfile" class="clearfix">
				 <div id="artistText1">창작자 소개</div>
				 <div id="artistImg">
                 	<img src="resources/images/projectImg/artistImg/${project.pArtistPFImage}" id="artProfileImg">
                 </div>
                 <div id="artistName">
		                 <div id="artistText2"><a href="social.dr?userNo=${project.pWriter}">${project.pArtistName }님</a>
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
		            			<a  href="https://www.facebook.com/${project.pArtistSns1 }"><img src="resources/images/faceB_gray_icon.png" width="20px" height="20px"></a>
		            		</c:otherwise>
		            		</c:choose>
	            		</div>
	            		<div id="ig">
	            			<c:choose>
		            		<c:when test="${fn:contains(project.pArtistSns1,'없음')}">
		            		</c:when>
		            		<c:otherwise>
		            			<a  href="https://www.instagram.com/${project.pArtistSns2 }"><img src="resources/images/inStar_gray_icon.png" width="20px" height="20px"></a>
		            		</c:otherwise>
		            		</c:choose>
	            		</div>
            		</div>
            		
            		${project.pArtistPhone} <br>
            		${project.pArtistEmail}
            	</div>
            	<div id="artistText4">진행한 프로젝트 ${project.pOpenCount }개</div><!-- 진행프로젝트 개수 불러오기 -->
            </div>
		</section>
		
		<section id="asideReward">
		
			<p id="RewardText1" class="mt-3 mb-1">선택 할 수 있는 총 ${fn:length(reward) }종의 리워드가 있습니다.</p><!-- 리워드 정보 불러오기 -->
			
			<c:forEach var="r" items="${reward }">
				<form action="detailSubReward.dr" method="post">
				
					<section class="projectReward px-2 py-3 mb-2 mt-1">
						<div class="rewardTitle">
							<i class="material-icons rewardIcon">keyboard_arrow_right</i>
							
							
							<p class="RewardText2">
								<c:if test="${r.rSum eq '0'}">
						             0명 선택
						        </c:if>
						        <c:if test="${r.rSum ne '0'}">
						             ${r.rSum}명 선택
						        </c:if>
							</p> <!-- 리워드 정보 불러오기 -->
						
						<c:if test="${r.rLimit ne '-1'}">
						
							<c:if test="${r.rAmount eq '0' }">
			            		<span class="badge badge-primary rewardBadge1">${r.rAmount }개 남음</span><!-- 리워드 정보 불러오기 -->
			            	</c:if>
			            	<c:if test="${r.rAmount ne '0' }">
			            		<span class="badge badge-primary rewardBadge">${r.rAmount }개 남음</span><!-- 리워드 정보 불러오기 -->
			            	</c:if>
							
						</c:if>
						<c:if test="${r.rLimit eq '-1'}">
							
						</c:if>
						
						
						</div>
						<p class="RewardText3">${r.rPrice }원</p> <!-- 리워드 정보 불러오기 -->
						<div class="rewardTitle px-2 pb-1"> 
							${ r.rName}
						</div>
						<div class="rewardIntroduce"> <!-- 리워드 정보 불러오기 -->
			            	${r.rExplain }
		            	</div>
		            	<input type="hidden" name="rNo" value="${r.rNo }">
		            	<input type="hidden" name="pNo" value="${project.pNo }">
		            	<c:if test="${r.rAmount eq '0' }">
		            		<button type="button" class="btn btn-primary btn-lg btn-block rewardBtn2">리워드 선택하고 후원하기</button><!-- 리워드 정보 불러오기 -->
		            	</c:if>
		            	<c:if test="${r.rAmount ne '0' }">
		            		<button type="submit" class="btn btn-primary btn-lg btn-block rewardBtn">리워드 선택하고 후원하기</button><!-- 리워드 정보 불러오기 -->
		            	</c:if>
		            	
					</section>
				
				</form>
			</c:forEach>
			
			<div id="reportbox" class="clearfix px-2 pt-3 pb-2">
				<!-- 신고하기 -->
				해당 프로젝트에 허위내용 및 지적재산권을 <br>
				침해하는 내용이 있다면 신고해주세요.
				<button type="button" class="btn btn-primary btn-lg btn-block reportBtn mt-3">프로젝트 신고하기</button>
			</div>
			
			<div class="modal">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title">신고하기</h5>
			        <button type="button" class="close reportModal" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <p>신고 내용</p>
			        <textarea id="reportContent" placeholder="신고내용을 작성해주세요."></textarea>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-primary reSubmit">신고하기</button>
			        <button type="button" class="btn btn-secondary reportModal" data-dismiss="modal">취소</button>
			      </div>
			    </div>
			  </div>
			</div>
		</section>
	</section>
	
	<script>
	
	/* 
		var info = "${project.pArtistIntroduction }";
		console.log("아티스트 소개 : "+ info); */
		 
	$(function(){
			//처음 들어왔을때 색 바뀌는 기능 
			if(${!empty sessionScope.loginUser}){
				console.log(${loginUser.userNo});
				console.log(${follow.followerNo});
				
				if(${loginUser.userNo eq follow.followerNo}){ //로그인 유저가 같으면 보라색
					$("#asideFavorite").css("color","#8E44AD");
					
				}else if(${loginUser.userNo ne follow.followerNo}){
					$("#asideFavorite").css("color","#F39C12");
				}
				
				if(${loginUser.userNo eq report.repWriter}){
					console.log("1111111111");
					$(".reportBtn").css("background-color","gray");
				}else{
					$(".reportBtn").css("background-color","#F39C12");
				}
			
				
				
			}
			
			
			
			
			$("#asideFavorite").on("click", function(){
				
				console.log("좋아요");
				
				
				
				if(${empty sessionScope.loginUser}) {
					alert("로그인이 필요합니다.");
					return false;
				}else{
					if($(this).css("color") == "rgb(142, 68, 173)"){
						followDelete(); 
					}else if($(this).css("color") == "rgb(243, 156, 18)"){
						followInsert();
					}
				}
				
			});
			
			//신고하기 눌렀을 때
			$(".reportBtn").on("click", function(){
				
				//console.log("report : " + ${report.repWriter});
				if(${empty sessionScope.loginUser}) {
					alert("로그인이 필요합니다.");
					return false;
				}else if(${loginUser.userNo eq report.repWriter}){
					alert("이미 신고한 프로젝트 입니다.");
					return false;
				}else{
					$(".modal").css("display","block");
				}
			});
			
			// 모달창 닫기
			$(".reportModal").click(function(){
				$(".modal").css("display","none");
			});
			
			//프로젝트 신고 버튼
			$(".reSubmit").on("click", function(){
				
				var pNo = ${project.pNo};
				var uNo= "${loginUser.userNo}";
				var repContent = $("#reportContent").val();
				
				if(confirm("프로젝트를 정말 신고하시겠습니까?")){
					
					$.ajax({
						url:"detailReport.dr",
						data:{pNo:pNo, uNo:uNo, repContent:repContent},
						type:"post",
						success: function(result){
							if(result == 1){
								$("#reportContent").val("");
								$(".modal").css("display","none");
								$(".reportBtn").css("background-color","gray");
								alert("신고가 완료 되었습니다.");
							}else{
								alert("프로젝트 신고 실패");
							}
						},
						error: function(e){ 
							console.log(e);
						}
					});
				}
				
			});
			
			
			
		});
		
		//팔로우 등록
		function followInsert(){
			var followerNo = "${loginUser.userNo}";
			var followNo = ${project.pWriter};
			
			if(followerNo != followNo){
				
				$.ajax({
					url:"followInsert.dr",
					data:{followerNo:followerNo, followNo:followNo},
					type:"post",
					success: function(result){
						if(result == 1){
							$("#asideFavorite").css("color", "#8E44AD");
							alert("팔로우를 성공했습니다.");
							
						}else{
							alert("팔로우 실패");
						}
						
					},
					error: function(e){
						console.log(e);
					}
				});
			
			}
		}
		
		// 팔로우 취소
		function followDelete(){
			
			var followerNo = "${loginUser.userNo}";
			var followNo = ${project.pWriter};
			
			$.ajax({
				url:"followDelete.dr",
				data:{followerNo:followerNo, followNo:followNo},
				type:"post",
				success: function(result){
					if(result == 1){
						$("#asideFavorite").css("color","#F39C12");
						alert("팔로우가 취소되었습니다.");
						
					}else{
						alert("팔로우 취소 실패");
					}
					
				},
				error: function(e){
					console.log(e);
				}
			});
			
			
		} 
		
		
		
		
		
	</script>
             


   	
	

</body>
</html>