<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailCommunity</title>

	
       <style>
           
           #section{
               width: 1000px;
               height: auto;
               margin: auto;
               min-height: 1600px;
           }
           #content{
               width: 100%;
               min-height: 1000px;
               height:auto;
              /*  border: 1px solid black; */
           }
           #detailContent2{
                width:70%;
                height: auto;
                min-height: 1000px;
               /*  border: 1px solid black; */
                display: block;
                float: left;
           }
           section{
               width: 100%;
               /*height: 50px;*/
               /* border: 1px solid black; */
               display: block;
           }
           #aside{
               width: 30%;
               height: auto;
               min-height: 1000px;
               display: block;
               float: right;

           }
           #detailCommunity{
           		width:100%;
                height: auto;
                min-height: 700px;
                border: 1px solid #ddd;
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
           }
           /* ==============커뮤니티================ */
           .form-group{
           		border: 1px solid #ddd;
           		width: 678px;
           		height: 170px;
           		float:left;
           		display:block;
           		margin: 10px 0 10px 10px;
           		border-radius: 3px;
           		background-color: #f1f3f5;
           }
           #comSelect{
           		width:540px;
           		margin:10px 0 0 10px;
           		border-radius: 3px;
           }
           #exampleTextarea{
           		display:block;
           		float:left;
           }
           #writebtn{
           		width: 105px;
           		height: 110px;
           		display:block;
           		float:right;
           		margin: 10px 10px 0 0;
           		background-color: #8E44AD;
           		border-color: #8E44AD;
           }
            #replyBox{
           		/* border: 1px solid black; */
           		width: 680px;
           		height: auto;
           		min-height: 500px;
           		float:left;
           		display:block;
           		margin: 0 0 10px 10px;
           }
           /* ============================================== */
           .comBox{
           		width: 678px;
           		height: auto;
           		min-height: 190px;
           		border: 1px solid #ddd;
           		border-radius: 3px;
           		margin:0 0 10px 0;
           		padding-bottom: 10px;
           		clear: both;
           		float:left;
           		
           }
           .sub{
           		width: 678px;
           		height: auto;
           		min-height:150px;
           		/* border: 1px solid black; */
           		margin:0 0 0 0;
           		float:left;
           		display:block;
           		/* margin: 0 0 0 0; */
           }
           .profileBox{
           		width:100%;
           		height:60px;
           		/* border: 1px solid black; */
           		margin:10px 0 0 0;
           		float:left;
           		display:block;
           }
           .artProfileImg{
           		border: 2px solid #495057;
           		width: 60px;
           		height: 60px;
           		float:left;
           		border-radius: 50%;
           		margin: 0 10px 0 10px;
           		display:block;
           }
           .artistText2{
           		font-size: 17px;
               	display: block;
              	float: left;
               	margin: 15px 0 0 5px; 
           }
           
           .profileBox > .subConBadge{
           		width:70px;
           		height:25px;
           		background-color: #8E44AD;
           		display:block;
           		float:left;
           		margin:18px 0 0 10px;
           		padding:5px 0 0 0;
           		font-size: 14px;
           }
           .comText1{
           		width:auto;
           		min-width: 25px;
           		height: 30px;
           		font-size: 13px;
               	display: block;
              	float: left;
               	margin: 20px 0 0 10px; 
               /* border: 1px solid black; */
           }
           .comTime{
           		width:auto;
           		min-width: 60px;
           		height: 30px;
           		font-size: 13px;
               	display: block;
              	float: left;
               	margin: 20px 0 0 0;
               	padding: 0 0 0 5px; 
               	/* border: 1px solid black; */
           }
           .comContent{
           		width: 610px;
           		height: auto;
           		min-height: 50px;
           		/* border: 1px solid black; */
           		margin:10px 0 0 50px;
           		display:block;
           		float:left;
           }
           /* ======================sub======================= */
           .subInputBox{
           		width:610px;
           		height: 60px;
           		margin: 10px 17px 0 0;
           		float: right;
           		border: 1px solid #ddd;
           		border-radius: 3px;
           		padding:5px 10px 0 0;
           		background-color: #f1f3f5;
           }
           .subTextarea{
           		width: 450px;
           		height: 50px;
           		display:block;
           		float:left;
           		border-radius: 3px;
           }
            .subInputBox > .subwrite{
           		width: 60px;
           		height: 50px;
           		display:block;
           		float:right;
           		background-color: #8E44AD;
           		border-color: #8E44AD;
           		font-size: 13px;
           }
           .subCom{
           		width: 590px;
           		height: auto;
           		min-height:100px;
           		/* border: 1px solid black; */
           		margin: 15px 17px 10px 0;
           		float: right;
           		
           }
           .subBox{
           		width:100%;
           		height:50px;
           		/* border: 1px solid black; */
           }
           .subProfileBox{
           		/* border: 1px solid black; */
           		width:240px;
           		height: 50px;
           		display:block;
           		float:left;
           		margin: 0 5px 0 0;
           }
           .subArtImg{
           		border: 2px solid #495057;
           		width: 50px;
           		height: 50px;
           		float:left;
           		border-radius: 50%;
           		margin: 0 10px 0 10px;
           		display:block;
           }
			.subBox > .subBadge{
           		width:70px;
           		height:25px;
           		background-color: #8E44AD;
           		display:block;
           		float:left;
           		margin:18px 10px 0 5px;
           		padding:5px 0 0 0;
           		font-size: 14px;
           }
           .subContent{
           		width: 530px;
           		height: auto;
           		min-height: 50px;
           		/* border: 1px solid black; */
           		margin: 10px 5px 0 0;
           		float:right;
           }
           
          
           
       </style>
</head>
<body>
<%@ include file = "projectDetailHeader.jsp" %>
	<section id="section">
		<section id="content" class="clearfix">
			<section id="detailContent2" class="clearfix">
			    <div id="detailCommunity" class="clearfix">
				    
					<div class="form-group inputbox">
						<select id="comSelect">
							<option value="1">응원</option>
							<option value="2">문의</option>
							<option value="category" selected>카테고리</option>
						</select>
					    <textarea class="form-control"  id="exampleTextarea" rows="3" style="margin-top: 10px; margin-left: 10px; width:540px; height: 110px; resize:none;"  placeholder="내용을 입력해주세요."></textarea>
					    <button type="button" class="btn btn-primary btn-lg btn-block" id="writebtn">글쓰기</button>
					</div>
					
				    <!-- ================content================== -->
				    <div id="replyBox" class="clearfix">
					    <!-- <div class="comBox" class="clearfix">
						    <div class="sub clearfix">
						    	<div class="profileBox">
						    		<img src="" class="artProfileImg">
		                 			<p class="artistText2">닉네임112312321312 </p>
		                 			<span class="badge badge-primary subConBadge">펀딩 참가</span>
		                 			<div class="comText1">카테고리  |</div>
		                 			<div class="comTime">시간</div>
						    	</div>
						    	
						    	<div class="comContent">
						    		댓글 내용내용
						    	
						    	</div>
						    	
						    	======================대댓글 입력======================
						    	<div class="subInputBox" >
						    		<img src="" alt="" class="subArtImg">
						    		<textarea class="subTextarea" rows="3" style=" resize:none;"  placeholder="댓글을 입력해주세요."></textarea>
						    		<button type="button" class="btn btn-primary btn-lg btn-block subwrite">등록</button>
						    	</div>
						    </div>	
					    	========================대댓글 내용==============================
					    	<div class="subCom">
					    		<div class="subBox">
					    			<div class="subProfileBox">
							    		<img src=""class="subArtImg">
			                 			<p class="artistText2">닉네임112312321312 </p>
							    	</div>
		                 			<span class="badge badge-primary subBadge">아티스트</span>
					    		</div>
					    		
					    		<div class="subContent">
					    			서브 댓글 내용자리
					    		</div>
					    	
					    	</div> -->
					    </div>
				    </div>
				    
				    
				</div>            
			</section>
			
			<aside id="aside">
				<%@ include file = "projectDetailAside.jsp" %>
			</aside>
		</section>  


   	</section>
	
	<script>
	
		$(function(){
			replyList();
		});
	
		
		// 댓글 등록
		$("#writebtn").on("click", function(){
			
			
			if(${empty sessionScope.loginUser}){
				
				alert("로그인이 필요합니다.");
				$("#comSelect").val("category");
				$("#exampleTextarea").val("");
			
			}else{
				
				var reCGNo = $("#comSelect").val();
				var reContent =$("#exampleTextarea").val();
				var reRefPNo = ${project.pNo};
				
				$.ajax({
					url:"detailReply.dr",
					data:{reCGNo:reCGNo, reContent:reContent, reRefPNo:reRefPNo},
					type:"post",
					success: function(result){
						if(result == "success"){
							console.log("1111111");
							$("#exampleTextarea").val("");
							$("#comSelect").val("category");
							replyList();
						}
					}
				});
				
			}
			
			
		});
		
		//댓글 조회
		function replyList(){
			var pNo = ${project.pNo};
			
			$.ajax({
				url:"replyList.dr",
				data:{pNo:pNo},
				type:"get",
				dataType:"json",
				error: function(e){
					console.log(e);
				},
				success: function(result){
					//console.log(data.map);
					//var result = data.json;
					
					console.log(result.reList);
					console.log(result.srList);
					
					var $replyBox = $("#replyBox");
					
					$replyBox.html("");
					
					var $comBox;// 테두리
					//========================================================
					var $sub;//프로필하고 등록 감싼 박스
					var $profileBox;//프로필내용
					var $img;//작성자 이미지
					var $p;//유저 닉네임
					var $span;// 펀딩 참가자 인지
					var $comText1;//카테고리
					var $comTime;// 등록 시간
					var $comContent;// 내용
					//========================================================
					var $subInputBox;// 서브 댓글 등록박스
					var $subArtImg;//서브 댓글 작성한 유저 이미지
					var $subTextarea;// 서브댓글 입력
					var $subButton;//서브 댓글 입력 버튼
					var $input;//hidden
					//========================================================
					var $subCom;//서브 댓글 내용 박스
					var $subBox;// 서브 댓글 내용 박스
					var $subProfileBox;//서브댓글 작성 유저 프로필 박스
					var $subArtImg;// 서브댓글 작성 유저 이미지
					var $artistText2;//서브댓글 작성 유저 닉네임
					var $artist;//아티스트 서브 댓글 일때  span태그
					var $subContent;//서브댓글 내용
					
					
					if(result.reList.length > 0){
						$.each(result.reList, function(i){
							 
							$comBox = $("<div>").addClass("comBox clearfix");// 테두리
							//=======================================================
							$sub = $("<div>").addClass("sub clearfix");//프로필하고 등록 감싼 박스
							//========================================================
							$profileBox = $("<div>").addClass("profileBox");//프로필내용
							$img = $("<img>").addClass("artProfileImg").attr("src","resources/images/userProfileImage/"+result.reList[i].reWriImg);
							$p = $("<p>").addClass("artistText2").text(result.reList[i].reWriter);//유저 닉네임
							
							//$span = $("<span>").addClass("badge badge-primary subConBadge");// 펀딩 참가자 인지
							
							$comText1 = $("<div>").addClass("comText1").text(result.reList[i].reCGName+" | ");//카테고리
							$comTime = $("<div>").addClass("comTime").text(result.reList[i].reWriDate);// 등록 시간
							$comContent = $("<div>").addClass("comContent").html(result.reList[i].reContent);// 내용
							//========================================================
							$subInputBox = $("<div>").addClass("subInputBox");// 서브댓글 등록박스
							
							//로그인 유저 받기
							$subArtImg = $("<img>").addClass("subArtImg").attr("src","resources/images/userProfileImage/"+result.reList[i].reWriImg);//서브 댓글 작성한 유저 이미지
							
							$subTextarea = $("<textarea>").addClass("subTextarea").attr({"rows":"3", "placeholder":"댓글을 입력해주세요."}).
											css("resize", "none");// 서브댓글 입력
							$input = $("<input>").addClass("input").attr("id",result.reList[i].reNo).css("display","none");
							$subButton = $("<button>").addClass("btn btn-primary btn-lg btn-block subwrite").attr("onclick","insertSubRe();").text("등록");//서브댓글 입력 버튼
							
							$profileBox.append($img);
							$profileBox.append($p);
							$profileBox.append($span);
							$profileBox.append($comText1);
							$profileBox.append($comTime);
							
							$subInputBox.append($subArtImg);
							$subInputBox.append($subTextarea);
							$subInputBox.append($subButton);
							$subInputBox.append($input);
							
							
							
							//=============================
							$sub.append($profileBox);
							$sub.append($comContent);
							$sub.append($subInputBox);
							
							$comBox.append($sub);
							
							$replyBox.append($comBox);
							
							$.each(result.srList, function(j){
								if(result.srList[j].subRefRNo == result.reList[i].reNo){ // 서브 댓글 번호가 있으면 서브댓글 내용 출력
									//========================================================
									$subCom = $("<div>").addClass("subCom");//서브댓글 내용 박스
									$subBox = $("<div>").addClass("subBox");// 서브 댓글 내용 박스
									$subProfileBox = $("<div>").addClass("subProfileBox");//서브댓글 작성 유저 프로필 박스
									$subArtImg = $("<img>").addClass("subArtImg").attr("src","resources/images/userProfileImage/"+result.srList[j].subWriImg);// 서브댓글 작성 유저 이미지
									$artistText2 = $("<p>").addClass("artistText2").text(result.srList[j].subWriter);//서브댓글 작성 유저 닉네임
									
									//$artist = $("<span>").addClass("badge badge-primary subBadge");//아티스트 서브 댓글 일때  span태그
									
									$subContent = $("<div>").addClass("subContent").html(result.srList[j].subContent);//서브댓글 내용
									
									//===============================
									$subProfileBox.append($subArtImg);
									$subProfileBox.append($artistText2);
									
									$subBox.append($subProfileBox);
									$subBox.append($artist);
									
									$subCom.append($subBox);
									$subCom.append($subContent);
									
									$comBox.append($subCom);
								
									
								}
									
									
							});
								
						}); 
					}	
					
				}
			});
		}
		// <br>처리 해주기
		
		// subReply 등록
		/* $(".subwrite").on("click", function(){ */
		function insertSubRe(){
	
			console.log("111111111");
			
			if(${empty sessionScope.loginUser}){
				
				alert("로그인이 필요합니다.");
				$("#comSelect").val("category");
				$("#exampleTextarea").val("");
			
			}else{
				
				var subRefRNo = $(".input").attr("id");
				var subContent = $(".subTextarea").val();
				console.log(subRefRNo);
				console.log(subContent);
				
				
				
				$.ajax({
					url:"insertSubRe.dr",
					data:{subRefRNo:subRefRNo, subContent:subContent},
					type:"post",
					success:function(result){
						
						$(this).parent().find(".subTextarea").val("");
						replyList();
					},
					error: function(e){
						console.log(e);
					}
				});
				
			}
		}
		/* }); */
		
		
	</script>

</body>
</html>