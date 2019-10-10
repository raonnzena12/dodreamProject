<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailGuide</title>

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
               min-height: 500px;
               /* border: 1px solid black; */
           }
           #detailcontent{
               width: 100%;
               min-height: 500px;
               height: auto;
              /* border: 1px solid black; */
               clear: both;
           }
           #detailContent2{
                width:70%;
                min-height: 500px;
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
                min-height: 450px;
                border: 1px solid #ddd;
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
                
           }
           /* #storyContent{
           		width: 680px;
                height: auto;
                min-height: 470px;
                border: 1px solid black;
                display: block;
                float: left;
                margin: 10px 0 0 8px;
                
           } */
           #projectInformation{
           		width: 680px;
                height: auto;
                min-height: 350px;
                border: 1px solid #ced4da;
                display: block;
                float: left;
                margin: 10px 0 10px 8px;
                padding:10px 5px 5px 5px;
                border-radius: 3px;
                background-color: #f1f3f5;
                
           }
           /* #detailTag{
           		width: 680px;
                height: auto;
                min-height: 60px;
               border: 1px solid black;
                display: block;
                float: left;
                margin:auto;
                margin: 0 0 10px 7px;
                border-radius: 3px;
                background-color: #F39C12;
                padding:auto;
                
           }
           .projectTag{
           		width:auto;
           		min-width: 100px;
           		height: 40px;
           		border: 1px solid black;
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
           } */
       </style>
</head>
<body>
			<%@ include file = "projectDetailHeader.jsp" %>
	<section id="section">
		
	    
		<section id="detailcontent" class="clearfix">
			<section id="detailContent2">
				<div id="detailStory">
					<%-- <div id="storyContent">
						${project.pStory }
					</div> --%>
					<div id="projectInformation">
						프로젝트의 환불 및 교환 정책<br>
						- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금 환불이 불가능합니다.<br>
						- 예상 전달일로부터 15일 이상 리워드 상품 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는 수수료를 제한 후원금을 환불해 드립니다.<br>
						(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제 성공액의 3%, 부가세 별도 )<br>
						<!-- - 선물 전달을 위한 배송지 2019년 11월 4일 이후에 일괄 취합할 예정입니다. -->
						- 이후 배송지 변경을 원하실 때에는 창작자에게 커뮤니티로 개별 문의하셔야 합니다.<br>
						<br>
						- 파손 또는 불량품 수령 시 10일 이내로 교환이 가능합니다.<br>
						- 교환 및 AS 문의는 창작자에게 커뮤니티로 신청해 주세요.<br>
						- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. 리워드 상품 확인을 위한 포장 훼손 외에 아이템의 가치가 훼손된 경우에는 교환 및 환불이 불가합니다.<br>
						- 후원자가 배송지를 잘못 기재하거나 창작자에게 사전 고지 없이 배송지를 수정하여 배송사고가 발생할 경우<br>
						    창작자는 최대 1번까지 재발송 해 드립니다. 배송비 부담은 후원자에게 있습니다.<br>
						<br>
						- 행사 참가권은 타인에게 양도가 가능합니다.<br>
						- 현장에서 수령해야 하는 리워드 상품을 수령하지 못하신 경우 환불은 불가능하며, 리워드 상품 배송을 위한 추가 배송비를 별도 요청드릴 수 있습니다.<br>
						
						<!-- - 전달된 파일에 심각한 결함이나 저작권상 문제가 있을 경우, 수수료 포함하여 환불 가능합니다.
						- 전달된 파일은 타인에게 양도가 불가능합니다. -->
						
					</div>
					<!-- <div id="detailTag">
						<div class="projectTag"></div>
					</div> -->
				</div>                
			</section>
			
			<aside id="aside">
				<%@ include file = "projectDetailAside.jsp" %>
			</aside>
		</section>  


   	</section>
	<script>
		$("#guide").css("color","#8E44AD");
		/* $(function(){
			var ht = "${project.pHashTag}";
			var hashTag = ht.split(",");
			var $detailTag = $("#detailTag");
			for ( var i = 0 ; i < hashTag.length ; i++ ) {
				var $prjTag = $("<div>").addClass("projectTag").text("#"+hashTag[i]);
				$detailTag.append($prjTag);
			}
			
		}); */
	
		/* $("#story").on("click", function(){
			location.href="#detailcontent";
		}); */
		
		
		/* 페이지마다 넣기 */
		
		
		
	</script>

</body>
</html>