<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailPreview</title>

       <style>
           
           #section{
               width: 1000px;
               height: auto;
               margin: auto;
               min-height: 1600px;
               
           }
           #detailcontent{
               width: 100%;
               min-height: 1000px;
               height: auto;
               clear: both;
           }
           #detailContent2{
                width:70%;
                min-height: 1000px;
                height: auto;
                display: block;
                float: left;
                
           }
           section{
               width: 100%;
               display: block;
               
           }
           #aside{
               width: 30%;
               height: auto;
               min-height: 600px;
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
                display: block;
                float: left;
                margin: 10px 0 0 9px;
                 
           }
           #storyContent *{
           		max-width: 100%;
                height: auto;
           }
           #detailTag{
           		width: 680px;
                height: auto;
                min-height: 60px;
                display: block;
                float: left;
                margin: 10px 0 10px 9px;
                border-radius: 3px;
                background-color: #F39C12;
                padding:auto;
                
           }
           .projectTag{
           		width:auto;
           		min-width: 100px;
           		height: 40px;
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
           
       </style>
</head>
<body>
	<%@ include file = "projectDetailPreHeader.jsp" %>
	<section id="section">
		
	    
		<section id="detailcontent" class="clearfix">
			<section id="detailContent2">
				<div id="detailStory">
					<div id="storyContent">
						${project.pStory }
					</div>
					
					<div id="detailTag">
						<!-- <div class="projectTag"></div> -->
					</div>
				</div>                
			</section>
			
			<aside id="aside">
				<%@ include file = "projectDetailPreAside.jsp" %>
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
			
		});
	
	
		
		
		
	</script>

</body>
</html>