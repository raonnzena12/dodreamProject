<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailCommunity</title>
<%@ include file = "../common/menubar.jsp" %>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
               /* border: 1px solid black; */
               display: block;
               float: right;

           }
           #detailCommunity{
           		width:100%;
                height: auto;
                min-height: 990px;
                border: 1px solid #ddd;
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
           }
           /* ==============커뮤니티================ */
           .form-group{
           		border: 1px solid #ddd;
           		width: 680px;
           		height: 170px;
           		float:left;
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
           .comBox{
           		width: 678px;
           		height: auto;
           		min-height: 400px;
           		border: 1px solid #ddd;
           		border-radius: 3px;
           		margin:0 0 0 10px; 
           		clear: both;
           		float:left;
           }
           .profileBox{
           		width:100%;
           		height:60px;
           		/* border: 1px solid black; */
           		margin:10px 0 0 0;
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
           
           .subConBadge{
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
           		min-width: 60px;
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
               	/* border: 1px solid black; */
           }
           .comContent{
           		width: 610px;
           		height: auto;
           		min-height: 100px;
           		/* border: 1px solid black; */
           		margin:10px 0 0 50px;
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
           .subwritebtn{
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
           		min-height:150px;
           		/* border: 1px solid black; */
           		margin: 15px 17px 0 0;
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
           .subBadge{
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
           		min-height: 80px;
           		/* border: 1px solid black; */
           		margin: 10px 5px 0 0;
           		float:right;
           }
       </style>
</head>
<body>
	<section id="section">
		<%@ include file = "projectDetailHeader.jsp" %>
            
		<section id="content" class="clearfix">
			<section id="detailContent2" class="clearfix">
			    <div id="detailCommunity" class="clearfix">
					<div class="form-group">
						<select id="comSelect">
							<option value="fight">응원</option>
							<option value="qna">문의</option>
							<option value="category" selected>카테고리</option>
						</select>
				      	<textarea class="form-control"  id="exampleTextarea" rows="3" style="margin-top: 10px; margin-left: 10px; width:540px; height: 110px; resize:none;"  placeholder="내용을 입력해주세요."></textarea>
				      	<button type="button" class="btn btn-primary btn-lg btn-block" id="writebtn">글쓰기</button>
				    </div>
				    <!-- ================content================== -->
				    <div class="comBox" class="clearfix">
				    	<div class="profileBox">
				    		<img src="" alt="" class="artProfileImg">
                 			<p class="artistText2">닉네임112312321312 </p>
                 			<span class="badge badge-primary subConBadge">펀딩 참가</span>
                 			<div class="comText1">카테고리  |</div>
                 			<div class="comTime">시간</div>
				    	</div>
				    	
				    	<div class="comContent">
				    		댓글 내용내용
				    	
				    	</div>
				    	
				    	<!-- ======================대댓글 입력====================== -->
				    	<div class="subInputBox" class="clearfix">
				    		<img src="" alt="" class="subArtImg">
				    		<textarea class="subTextarea" rows="3" style=" resize:none;"  placeholder="댓글을 입력해주세요."></textarea>
				    		<button type="button" class="btn btn-primary btn-lg btn-block subwritebtn">등록</button>
				    	</div>
				    	
				    	<!-- ========================대댓글 내용============================== -->
				    	<div class="subCom">
				    		<div class="subBox">
				    			<div class="subProfileBox">
						    		<img src="" alt="" class="subArtImg">
		                 			<p class="artistText2">닉네임112312321312 </p>
						    	</div>
	                 			<span class="badge badge-primary subBadge">아티스트</span>
				    		</div>
				    		
				    		<div class="subContent">
				    			서브 댓글 내용자리
				    		</div>
				    	
				    	</div>
				    </div>
				    
				    
				</div>            
			</section>
			
			<aside id="aside">
				<%@ include file = "projectDetailAside.jsp" %>
			</aside>
		</section>  


   	</section>
	

</body>
</html>