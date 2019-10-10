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
                padding-bottom: 10px;
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
           		min-width: 20px;
                height: 40px;
                margin: 0 5px 0 15px;
                float: left;
                display: block;
                text-align: right;
                /* border: 1px solid black; */
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
               /*  border: 1px solid black; */
                width: 100%;
                min-height: 100px;
                height: auto;
                padding: 10px 10px 10px 20px;
                float: left;
                display: block;
                clear: both;
           }
           
           
           
           .rewardText4{
               /* 	border: 1px solid black; */
                width: 170px;
                min-height: 40px;
                height: auto;
                float: left;
                display: block;
                margin:  10px 0 0 0;
                
               /*  padding:10px 0 0 0; */
               
                              
                
           }
           .rewardText4 > .reCount{
           		width:150px;
           		height:auto;
           		/* margin: 0 0 0 10px; */
           		text-align: right;
           		float:right;
           		
           }
           .rewardText5{
             /*   border: 1px solid black; */
                width: 510px;
                min-height: 40px;
                height: auto;
                float: left;
                display: block;
                margin:  10px 0 0 0;
           }
           .rewardText5 > .reSelect{
           		width:500px;
           		float:right;
           }
           .rewardText5 > .reInput{
           		width:500px;
           		float:right;
           }
           .hiddenBox{
           		display:none;
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
                min-height: 280px;
                height:auto;
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
               /*  border: 1px solid black; */
                width: 100%;
                min-height: 30px;
                height:auto;
                padding:  5px 5px 0 5px;
           }
          #asideReward > .rewardBtn{
                width: 270px;
                height: 50px;
                margin: 15px 0 10px 7px;
                background-color: #8E44AD;
                border-color: #8E44AD;
           }
           
            #asideReward > .rewardBtn2{
                width: 270px;
                height: 50px;
                margin: 15px 0 10px 7px;
                background-color: gray;
                border-color: gray;
                display:none;
           }
           
           
           .check{
           		float: right;
           		display:none;
           }
           #rname{
           		/* border: 1px solid black; */
                width: 270px;
                min-height: 30px;
                height:auto;
                display:block;
                float:left;
                /* padding-left:5px; */
                position: relative;
           }
           #rewardname{
           		/* border: 1px solid black; */
                width: 230px;
                min-height: 30px;
                height:auto;
                display:block;
                float:left;
               /*  padding-right:70px; */
                /* position: relative; */
           }
           #recount{
           		/* border: 1px solid black; */
                width:30px;
                min-height:30px;
                height:auto;
                float:right;
                display:block;
                bottom:0;
                right:0;
                top:0;
                /* margin-bottom:10px; */
                position: absolute;
                text-align: right;
                
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
	                        <!-- <div class="noRewardText2">
		                        5명선택
		                        <span class="badge badge-primary rewardBadge">5개 남음</span>
	                        </div> -->
	                        
	                     
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
				                        <c:if test="${r.rSum eq '0'}">
				                        	0명 선택
				                        </c:if>
				                        <c:if test="${r.rSum ne '0'}">
				                        	${r.rSum}명 선택
				                        </c:if>
				                        	
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
			                        <input type="checkbox" class="check" id="ck${r.rNo }" name="reCheck" value="${r.rPrice}" optionNo="${r.rOptionNo}">
			                        <input type="hidden" class="optionNo" value="${r.rOptionNo}">
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
	                            <div class="hiddenBox">
		                           	<div class="rewardText4">
		                           	<c:if test="${r.rLimit > '0'}">
		                                <input type="number" class="form-control reCount" placeholder="수량을 입력하세요." value="1" min="1" max="${r.rAmount }">
		                            </c:if>
		                            <c:if test="${r.rLimit eq '-1'}">
		                            	<input type="number" class="form-control reCount" placeholder="수량을 입력하세요." value="1" min="1">
		                            </c:if>
		                            </div>
		                            <script>
		                            	$(function(){
		                            		$(".reCount").on("input", function(){
		                            			var max = $(this).attr("max")*1;
		                            			var num = $(this).val()*1;
		                            			var min = $(this).attr("min")*1;
		                            			
		                            			if(num > max){
		                            				$(this).val(max);
		                            			}else if(num < 0){
		                            				$(this).val(min);
		                            			}
		                            		});
		                            	});
		                            </script>
		                            
		                            <div class="rewardText5">
			                           
			                            <c:if test="${r.rOptionNo eq '1'}">
			                            		<!-- 리워드 옵션이 1이면 아무 것도 없다. -->
			                            </c:if>
			                            <c:if test="${r.rOptionNo eq '2'}">
			                            		<!-- 리워드 옵션이 2이면 select -->
			                            	<select class="form-control reSelect" name="rewardOp">
				                            	<c:forTokens var="option" items="${r.rOptionAdd }" delims="<br>">
				                            		<option><c:out value="${option}"></c:out></option>
				                            	</c:forTokens>
											</select>
			                            </c:if>
			                            <c:if test="${r.rOptionNo eq '3'}">
			                            		<!-- 리워드 옵션이 3이면 input -->
			                            		<input type="text" class="form-control reInput" placeholder="옵션을 입력하세요.">
			                            </c:if>
			                            <!-- 1번 일때 X 2번 일때 select 3번 input -->
			                               
		                            </div>
	                            </div>
	                        </div>
                        
                        
                     </c:forEach>
                        <!-- ========================test========================== -->
                     </div>   
                       
				
				              
			</section>
			
			<aside id="aside">
				<div id="asideReward">
                        <div id="asideText1">총 후원 금액</div>
                        <c:set var="rewardSum" value="${fn:replace(notice.nContent,'<br>','') }"/>
                        <div id="rewardSum" name="rewardSum">
                            <!-- 선택한 리워드의 총합이 들어감 -->0
                        </div>
                        <div id="asideText2">
                            선택한 리워드
                        </div>
                        <div id="asideText3" class="clearfix">
                           <!-- 선택한 리워드 제목이 들어감 -->
                           <div id="rname" class="clearfix">
                           		<!-- <div id="rewardname"></div> -->
                           		<!-- <div id="recount"></div> -->
                           </div>
                           
                        </div>
                        <button type="button" class="btn btn-primary btn-lg btn-block rewardBtn">후원하기</button>
                        <button type="button" class="btn btn-primary btn-lg btn-block rewardBtn2">후원하기</button>
               </div>
			</aside>
		</section>  

   	</section>
   	
   	<script>
	   
   	
   		$(function(){
   			
   			
   				$(".rewardBtn").on("click", function(){
   					if(${empty sessionScope.loginUser}){
   						alert("로그인이 필요합니다.");
   					}else{
   						goReserve();
   					}
   				});
   			
   			
   			
   			var total = ${project.pCurrentFunding };
   			if(${project.pDDay} < 0 || total > ${project.pGoal}){
   				
   				$(".rewardBtn2").css("display","block");
   				$(".rewardBtn").css("display","none");
   				
   				$(".rewardBtn2").click(function(){
   					alert("종료된 프로젝트 입니다.");
   				});
   				
   			}
   			
   			// aside에서 선택된 리워드 
   			if(${subReward ne '0'}){
   				
	   			
   				var rNo = ${subReward};// aside 리워드 번호
   				var mainRNo = $("#"+rNo).attr("id");// 리워드 detail에 있는 리워드 번호
   	   			
   				
	   			//console.log(rNo);
	   			//console.log(mainRNo);
	   			if(rNo > "0"){
	   				if(rNo == mainRNo){
	   		   			
	   					$("#"+rNo +" .check").prop("checked", true);
	   					$("#"+rNo +" .rewardIcon").css("color","#F39C12");
	   					$("#"+rNo +" .hiddenBox").css("display","block");
	   					$("#"+rNo +" .reCount").val("1");
	   					
	   					rewardsum();
	   				}else{
	   					$(".check").prop("checked", false);
	   					$("#"+ ch +" .hiddenBox").css("display","none");
	   				}
	   				
	   			}
	   			
   			}
   			
   			// 체크 될때마다 css바뀌는 기능
   			
   			$(".check").on("change", function(){
				/* console.log($(this).parent().parent().attr("id")); */
				
				var ch = $(this).parent().parent().attr("id");
				
				//console.log(ch);
				
				var checked = $("#"+ ch +" .check").prop("checked");
				//console.log(checked);
				
				if(checked == true){
					$("#"+ ch +" .rewardIcon").css("color","#F39C12");
					$("#"+ ch +" .hiddenBox").css("display","block");
					$("#"+ ch +" .reCount").val("1");
					
				}else{
					$("#"+ ch +" .rewardIcon").css("color","#444");
					$("#"+ ch +" .hiddenBox").css("display","none");
					//$("#"+ ch +" .reCount").val("0");
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
   			var checkName="";
   			
   			var count= 0;
   			var comma = "";
   			var reCount = 0;
   			var cPrice = 0;
   			//var mainRNo = $("#"+rNo).attr("id");
   			
   			/* ============================================================================== */
   			//$(".check").change(function(){
   				
   				$("#rewardSum").text("");
   				
   				$("input:checkbox[name='reCheck']:checked").each(function(){
   					sum();
   	   				/* count += $(this).parent().parent().find(".reCount").val()*1;
   	   				console.log("count : " + count);
   	   				price += $(this).val()*1*count; // 리워드 가격
   	   				console.log("price : " + price);
   	   				checkName += $(this).parent().parent().find(".rewardText6").text()+"<br>"; */
   	   			});
   				/* console.log(count);
   				comma = price + $("#rewardInput").val()*1;
   				$("#rewardSum").text(comma.toLocaleString());
   				$("#asideText3").html("<div id='rewardname'>"+checkName+"</div>"); */
   			
   			//});
   			
   				$(".reCount").focus(function(){
   					
   					$("#rewardSum").text("");
   					reCount = 0;
					checkName = "";
   					$(".reCount").on("input", function(){
   						sum();
   						/* cPrice = 0;
   						$("#rewardSum").text("");  
   						
   						//if($(".reCount").val() > $())
   						
   						$("input:checkbox[name='reCheck']:checked").each(function(){
   							reCount =$(this).parent().parent().find(".reCount").val()*1;
   							console.log(reCount);
   							cPrice += $(this).val()*1*reCount;
   							checkName += $(this).parent().parent().find(".rewardText6").text()+"<br>";
   						});
   						comma = cPrice + $("#rewardInput").val()*1;
   		   				$("#rewardSum").text(comma.toLocaleString());
   		   				$("#asideText3").html("<div id='rewardname'>"+checkName+"</div>"); */
   					});
   					
   					
   				});
   	
   			
   			/* ============================================================================== */
		
			}
   		
   		
   		
   		/* 후원하기 버튼 */
   			function goReserve(){
   				
   				console.log("aaaaaaaaaaaaaa");
   				
   				var pNo = ${project.pNo}; //프로젝트 번호
   				var addReward = $("#rewardInput").val(); //추가후원금
   				
   				if(addReward == ""){
   					addReward = '0';
   				}
   				
   				var rNo = "";
   				var opNo = "";
   				var select= "";
   				var count="";
   				var input="";
   				
   				if($("input:checkbox[name='reCheck']:checked").length == 0){
   					alert("리워드를 선택해주세요.");
   				}else{
   					
   				$("input:checkbox[name='reCheck']:checked").each(function(){
   					
   					rNo += $(this).parent().parent().attr("id")+"/"; //리워드 번호
   					console.log(rNo);
   					
   					count +=$(this).parent().parent().find(".reCount").val()+"/";//수량 
   					console.log(count);
   					
   					var opNum = $(this).attr("optionNo")*1;
   					
   					
   					if(opNum != 1){
	   					if ( opNum == 2 ) {
		   					select += $(this).parent().parent().find(".reSelect").val()+"/";//옵션 2번 select 옵션 값
		   					console.log(select);
	   						
	   					} else if ( opNum ==3 ) {
		   					input += $(this).parent().parent().find(".reInput").val()+"/"; // 옵션 3번 input 옵션 값
		   					console.log(input);
	   					}
   					}else{
   						select += "-1/";
   						input +="-1/";
   						console.log(select);
   					}
   					
   					/* opNo += $(this).parent().parent().children(".optionNo").val();
   					
   					if(opNo == 2){
   						console.log("111");
   						select += $(this).parent().parent().children(".reSelect").val();//옵션 2번 select 옵션 값
   						console.log(select);
   					} */
   					
   				});
   				console.log("pNo=" + pNo +" rNo="+ rNo + " addReward="+ addReward +" select=" + select + " input=" + input +" count=" +count);
   				
   				//return false;
   				/* if(count == ""){
   					alert("리워드 수량을 입력해주세요.");
   				} */
   				location.href="letsFunding.dr?pNo="+ pNo +"&rNo="+ rNo + "&addReward="+ addReward +"&select=" + select + "&input=" + input +"&count=" +count;
   					
   				/* $("input:checkbox[name='reCheck']:checked").
   					var rno =  $(this).parent().parent().attr("id");
   	   				//console.log(rNo);
   	   				
   					if($("#"+rno+" .optionNo").val() == 2){
	   					
   						var select = $("select[name='rewardOp']").val();//옵션 2번 select 옵션 값
	   	   				//console.log(select);
	   					
	   				}else if($("#"+rno+" .optionNo").val() == 3){
	   					
	   					var input= $(".reInput").val();// 옵션 3번 input 옵션 값
	   				}
   					
	   				var count = $("#"+rno+" .reCount").val(); //수량
	   				
	   				console.log("pNo=" + pNo + "addReward="+ addReward +"select=" + select + "input=" + input +"count=" +count);
	   				 */
	   				
   				}
   				
   			}
		
   			function sum() {
   				var comma = "";
				var cPrice2 = 0;
				var reCount2 = 0;
				var checkName2 ="";
				
				$("#rewardSum").text("");
				$("input:checkbox[name='reCheck']:checked").each(function(){
					reCount2 =$(this).parent().parent().find(".reCount").val()*1;
					console.log(reCount2);
					cPrice2 += $(this).val()*1*reCount2;
					checkName2 += $(this).parent().parent().find(".rewardText6").text()+"<br>";
				});
					console.log("cPrice : " + cPrice2);
			//$("#rewardSum").text(cPrice2);
				comma = cPrice2 + $("#rewardInput").val()*1;
  				$("#rewardSum").text(comma.toLocaleString());
  				$("#asideText3").html("<div id='rewardname'>"+checkName2+"</div>");
			}
   		
   	</script>
	

</body>
</html>