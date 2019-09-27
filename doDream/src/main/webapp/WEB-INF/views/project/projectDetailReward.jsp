<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailReward</title>
	
       <style>
           
           #rewardSection{
               width: 1000px;
               height: auto;
               margin: auto;
               min-height: 1600px;
           }
           #content{
               width: 100%;
               min-height: 1000px;
               height:auto;
               clear: both;
              
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
           #detailReward{
           		width:100%;
                height: auto;
                min-height: 990px;
                /* border: 1px solid #ddd; */
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
           }
           /* =================reward==================== */
           #rewardText1{
                /* border: 1px solid black; */
                margin-top: 10px;
           }
           .rewardBox{
                border: 1px solid #ddd;
                border-radius: 3px;
                width:700px;
                min-height: 200px;
                height: auto;
                float: right;
                display: block;
                margin-top: 10px;
                margin: 10px 0 10px 0;
           }
           .textBox{
           		width:100%;
           		height: 50px;
           		/* border: 1px solid black; */
           }
           .rewardText2{
               	/* border: 1px solid black; */
                width: 650px;
                height: 100%;
                padding: 13px 0 10px 0;
                margin: 0 0 0 0;
                float:right;
                display:block;
                font-size: 17px;
           }
           .rewardText2 > .rewardBadge{
           		width:auto;
           		min-width:70px;
           		height:25px;
           		background-color: #8E44AD;
           		display:block;
           		float:right;
           		margin:3px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           .rewardText2 > .rewardBadge2{
           		width:auto;
           		min-width:70px;
           		height:25px;
           		background-color: #adb5bd;
           		display:block;
           		float:right;
           		margin:3px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           .noRewardText2{
               	/* border: 1px solid black; */
                width: 650px;
                height: 100%;
                padding: 13px 0 10px 15px;
                margin: 0 0 0 0;
                float:left;
                display:block;
                font-size: 17px;
           }
           .noRewardText2 > .rewardBadge{
           		width:auto;
           		min-width:70px;
           		height:25px;
           		background-color: #8E44AD;
           		display:block;
           		float:right;
           		margin:3px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           .noRewardText2 > .rewardBadge2{
           		width:auto;
           		min-width:70px;
           		height:25px;
           		background-color: #adb5bd;
           		display:block;
           		float:right;
           		margin:3px 10px 0 0;
           		padding:5px 5px 0 5px;
           		font-size: 14px;
           }
           
           
           .rewardIconBox{
           		/* border: 1px solid black; */
                width: 30px;
                height: 100%;
                display:block;
                float:left;
                margin: 0 0 0 10px;
                padding:13px 0 5px 0;
           }
           .rewardIcon{
           		font-size: 30px;
           		cursor: pointer;
           }
           .rewardIcon2{
           		font-size: 30px;
           		cursor: pointer;
           }
           .rewardRemainder{
               /*  border: 1px solid black; */
                width: 80px;
                height: 30px;
                float: right;
                display: block;
           }
           .inputBox{
               width: 100%;
               height: 50px;
               font-size: 30px;
              /*  border: 1px solid black; */
           }
           .rewardMobox{
           		width: 170px;
                height: 50px;
               /*  border: 1px solid black; */
                float: left;
                display: block;
           }
           .rewardMo{
           		width:auto;
           		min-width: 80px;
                height: 40px;
                margin: 0 5px 0 15px;
                float: left;
                display: block;
           }
           .rewardInput{
                width: 150px;
                height: 40px;
                margin: 0 10px 0 15px;
                float: left;
                display: block;
                text-align: right;
           }
            input[type="number"]::-webkit-outer-spin-button,
 		 	input[type="number"]::-webkit-inner-spin-button {
    			-webkit-appearance: none;
    			margin: 0;
    		}
           .rewardText3{
                /* border: 1px solid black; */
                width: 450px;
                min-height: 100px;
                height: auto;
                padding: 10px 10px 10px 20px;
                float: left;
                display: block;
                clear: both;
           }
           .rewardText4{
               /*  border: 1px solid black; */
                width: 240px;
                min-height: 50px;
                height: auto;
                float: left;
                display: block;
                margin:  0 0 0 5px;
           }
           .rewardText5{
               /*  border: 1px solid black; */
                width: 240px;
                min-height: 50px;
                height: auto;
                float: left;
                display: block;
                margin:  0 0 0 5px;
           }
           .rewardText6{
           		font-size: 15px;
           		width: 500px;
                height: 50px;
                /* order: 1px solid black; */
                float: left;
                display: block;
                padding:13px 0 0 0;
           }
           /* ================aside================= */
           #asideReward{
                border: 1px solid #ddd;
                border-radius: 3px;
                width: 290px;
                height: 280px;
                margin: 10px 0 0 0;
                float: right;
           }
           #asideText1{
               	/* border: 1px solid black; */
                width: 100%;
                height: 40px;
                padding: 10px;
                font-size: 20px;
           }
           #rewardSum{
             	border-bottom: 2px solid #ced4ba;
                width: 270px;
                height: 80px;
                font-size: 40px;
                text-align: right;
                font-weight: bold;
                padding: 12px 20px 0 0;
                margin-left: 7px;
                /* border: 1px solid black; */
           }
           #asideText2{
                /* border: 1px solid black; */
                width: 100%;
                height: 40px;
                font-size: 20px;
                padding:  10px 0 0 5px;
                margin: 10px 0 0 0;
           }
           #asideText3{
                /* border: 1px solid black; */
                width: 100%;
                height: 30px;
                padding:  0 0 0 20px;
           }
          #asideReward > .rewardBtn{
                width: 270px;
                height: 50px;
                margin: 15px 0 0 7px;
                background-color: #8E44AD;
                border-color: #8E44AD;
           }
           .check{
           		float: right;
           		/* display:none */;
           }
       </style>
</head>
<body>
	<%@ include file = "projectDetailHeader.jsp" %>
	<section id="rewardSection">
		<section id="content" class="clearfix">
			<section id="detailContent2">
			     <div id="detailReward">
					<div id="rewardText1">
                        	선택할수 있는 총 ${fn:length(reward) }종의 리워드가 있습니다.
                    </div>
                    <div class="rewardBox">
                    	<div class="textBox">
	                    	<!-- <div class="rewardIconBox">
		                    	<label for="check"><i class="material-icons rewardIcon">check_circle</i></label>
		                    </div> -->
	                        <div class="noRewardText2">
		                        5명선택
		                        <!-- <span class="badge badge-primary rewardBadge">5개 남음</span> -->
	                        </div>
	                        
	                     
	                        <!-- ==========체크박스=========== -->
	                        <!-- <input type="checkbox" class="check" id="check" name="reCheck"> -->
	                    
	                    
                        </div>
                        <div class="inputBox">
                            <input type="number" class="rewardInput" id="rewardInput">원
                        </div>
                        
                        <div class="rewardText3">
                            	추가로 후원하기 <br>
                            -리워드 수령없이 아티스트를 후원합니다.
                        </div>
                        <!-- <div class="rewardText4"></div>
                        <div class="rewardText5"></div> -->
                    </div>
                    <!-- ====================================리워드 박스============================================= -->
                    <c:forEach var="r" items="${reward }">
	                    <div class="rewardBox" id="${r.rNo }">
	                            <div class="textBox">
	                            
	                            <c:if test="${r.rAmount ne '0'}">
			                    	<div class="rewardIconBox">
				                    	<label for="ck${r.rNo }"><i class="material-icons rewardIcon">check_circle</i></label>
				                    </div>
				                 </c:if>
				                 <c:if test="${r.rAmount eq '0'}">
				                 	<div class="rewardIconBox">
				                    	<i class="material-icons rewardIcon2" >check_circle</i>
				                    </div>
				                 </c:if>   
			                        <div class="rewardText2">
				                        5명선택
				                       <c:if test="${r.rLimit ne '-1'}">
				                       
				                       		<c:if test="${r.rAmount ne '0'}">
					                        	<span class="badge badge-primary rewardBadge">${r.rAmount }개 남음</span>
					                        </c:if>
					                        <c:if test="${r.rAmount eq '0'}">
					                        	<span class="badge badge-primary rewardBadge2">${r.rAmount }개 남음</span>
					                        </c:if>
					                        <!-- 재고가 없으면 선택 안되게 스크립트 처리하기 -->
				                        </c:if>
				                        <c:if test="${r.rLimit eq '-1'}">
				                        	<span class="badge badge-primary rewardBadge">제한수량이 없는 리워드 입니다.</span>
				                        </c:if>
				                        
			                        </div>
			                         <!-- ==========체크박스=========== -->
			                        <input type="checkbox" class="check" id="ck${r.rNo }" name="reCheck" value="${r.rPrice}">
	                        	</div>
	                        	
	                            <div class="inputBox">
		                            <div class="rewardMobox">
		                            	<div class="rewardMo">${r.rPrice }</div>원
		                            </div>
	                            	<div class="rewardText6">${r.rName}</div>
	                            </div>
	                            
	                            <div class="rewardText3">
	                                ${r.rExplain }
	                            </div>
	                           <!--  <div class="rewardText4">
	                                리워드 추가 설명
	                            </div>
	                            <div class="rewardText5">
	                                수령 관련 설명
	                            </div> -->
	                        </div>
                        
                        
                     </c:forEach>
                        <!-- ========================test========================== -->
                     </div>   
                       
				
				              
			</section>
			
			<aside id="aside">
				<div id="asideReward">
                        <div id="asideText1">총 후원 금액</div>
                        <div id="rewardSum">
                            <!-- 선택한 리워드의 총합이 들어감 -->원
                        </div>
                        <div id="asideText2">
                            선택한 리워드
                        </div>
                        <div id="asideText3">
                            1번(실속형 리워드)
                        </div>
                        <button type="button" class="btn btn-primary btn-lg btn-block rewardBtn">후원하기</button>
               </div>
			</aside>
		</section>  

   	</section>
   	
   	<script>
	   	
   	
   		$(function(){
   			
   			
   			
   			if(${subReward ne '0'}){
   				
	   			
   				var rNo = ${subReward};// aside 리워드 번호
   				var mainRNo = $("#"+rNo).attr("id");// 리워드 detail에 있는 리워드 번호
   	   			
   				
	   			console.log(rNo);
	   			console.log(mainRNo);
	   			if(rNo > "0"){
	   				if(rNo == mainRNo){
	   		   			
	   					$("#"+rNo +" .check").prop("checked", true);
	   					$("#"+rNo +" .rewardIcon").css("color","#F39C12");
	   					rewardsum();
	   				}else{
	   					$(".check").prop("checked", false);
	   				}
	   				
	   			}
	   			
   			}
   			
   			
   			$(".check").on("change", function(){
				/* console.log($(this).parent().parent().attr("id")); */
				
				var ch = $(this).parent().parent().attr("id");
				
				console.log(ch);
				
				var checked = $("#"+ ch +" .check").prop("checked");
				console.log(checked);
				
				if(checked == true){
					$("#"+ ch +" .rewardIcon").css("color","#F39C12");
					
				}else{
					$("#"+ ch +" .rewardIcon").css("color","#444");
				}
					rewardsum();
				
				
				
				
			});
   			
   			$("#rewardInput").on("input", function(){
   				rewardsum();
   			})
	   			
   		
   		});
   		
	   		
	   		
   		
   		
   		/* 체크된값 더하기 */
   			
			function rewardsum(){
   			var price = 0;
			
   			$("input:checkbox[name='reCheck']:checked").each(function(){
   				price += $(this).val()*1;
   				console.log(price);
   				console.log($("#rewardInput").val()*1);
   				
   			});
   				$("#rewardSum").text(price + $("#rewardInput").val()*1);
		
			}
		
   			
   		
   	</script>
	

</body>
</html>