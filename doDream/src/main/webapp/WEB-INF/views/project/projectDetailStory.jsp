<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailStory</title>

	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
       <style>
           
           #section{
               width: 1000px;
               height: auto;
               margin: auto;
               min-height: 1600px;
               /* border: 1px solid black; */
           }
           #detailcontent{
               width: 100%;
               min-height: 1000px;
               height: auto;
              /*  border: 1px solid black; */
               clear: both;
           }
           #detailContent2{
                width:70%;
                min-height: 1000px;
                height: auto;
                /* border: 1px solid black; */
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
               min-height: 600px;
               /* border: 1px solid black; */
               display: block;
               float: right;
           }
           /* ===================story======================= */
           
           #detailStory{
           		width:100%;
                height: auto;
                min-height: 500px;
                border: 1px solid #ddd;
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
                
           }
           #storyContent{
           		width: 680px;
                height: auto;
                min-height: 470px;
                /* border: 1px solid black; */
                display: block;
                float: left;
                margin: 10px 0 0 9px;
                 
           }
          /*  #projectInformation{
           		width: 680px;
                height: auto;
                min-height: 350px;
                border: 1px solid #ced4da;
                display: block;
                float: left;
                margin: 10px 0 10px 8px;
                border-radius: 3px;
                background-color: #f1f3f5;
                
           } */
           #detailTag{
           		width: 680px;
                height: auto;
                min-height: 60px;
               /*  border: 1px solid black; */
                display: block;
                float: left;
                /* margin:auto; */
                margin: 10px 0 10px 9px;
                border-radius: 3px;
                background-color: #F39C12;
                padding:auto;
                
           }
           .projectTag{
           		width:auto;
           		min-width: 100px;
           		height: 40px;
           		/* border: 1px solid black; */
           		border-radius: 3px;
           		display:block;
           		float: left;
           		margin: 10px 0 10px 20px;
           		padding: 6px 10px 5px 10px;
           		background-color: white;
           		font-weight: bold;
           		cursor: pointer;
           		text-align: center;
           }
           .projectTag:hover{
           		cursor: pointer;
           		color: #8E44AD;
           }
       </style>
</head>
<body>
			<%@ include file = "projectDetailHeader.jsp" %>
	<section id="section">
		
	    
		<section id="detailcontent" class="clearfix">
			<section id="detailContent2">
				<div id="detailStory">
					<div id="storyContent">
						${project.pStory }
					</div>
					<!-- <div id="projectInformation">
						프로젝트 안내가 들어갑니다.
					</div> -->
					<div id="detailTag">
						<!-- <div class="projectTag"></div> -->
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
			// 해시 태그 출력 
			var ht = "${project.pHashTag}";
			var hashTag = ht.split(",");
			var $detailTag = $("#detailTag");
			
			console.log(ht);
			
			if(ht != ""){
				for ( var i = 0 ; i < hashTag.length ; i++ ) {
					var $prjTag = $("<div>").addClass("projectTag").text("#"+hashTag[i]);
					$detailTag.append($prjTag);
				}
			}
			
			// 해시태그 클릭시 검색 기능
			$(".projectTag").on('click', function(){
				
				var ht = $(this).text();
				var tagLength = ht.length;
				var cutHt = ht.substring(1, tagLength);
				console.log(cutHt);
				
				location.href="category.dr?keyword="+cutHt;
			});
			
			
		});
	
	
		
		
		
	</script>

</body>
</html>