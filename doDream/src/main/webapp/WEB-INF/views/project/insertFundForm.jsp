<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀드 등록하기</title>
<link rel="stylesheet" href="resources/css/fundagreement.css">
<link rel="stylesheet" href="resources/css/fundinginsertform.css">
<link rel="stylesheet" href="resources/css/accordion.css">
<style>
	#ac {
		display: block;
		width: 100%;
		height: 100%;
		border: 1px solid #ced4da;
		margin-left: 0;
		margin-right: 0;
	}
	#ac_container{
		max-width: 1560px;
	}
	#ac ul, #ac label, #ac dl, #ac ol{
		margin-bottom: 0;
	}
	.purplefont{
		color: #8E44AD;
	}
	.orangemark{
		background-color: #FFCD01;
	}
	.content{
		min-width: 1000px;
	}
	#insertformul{
		width: 100%;
	}
	#fundnotice h2{
		font-weight: 900;
	}
	#goSubmit, #goPreview{
		margin-top: 40px;
		opacity:0.85;
	}
	#goSubmit:hover, #goPreview:hover{
		opacity:1;
	}
	.accoHead{
		font-size: 22px;
		font-weight: 600;
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="clearfix"></div>
	<div id="agreementForm">
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
	    <div class="container">
		    <section class="reward-create" id="reward-create-process-step2">
				<h2 class="process-title"># <span class="purplefont">잠깐!</span> 프로젝트를 올리기 전에</h2>
				<h2 class="process-title">다음 <span class="purplefont">세부사항</span>을 미리 확인하고 프로젝트를 시작하세요!</h2>
				<div class="process-desc">
					<p>
					저희 두드림은 공개검토 절차를 통해 <span class="spurplefont">"아티스트"</span> 님이 작성한 프로젝트가 두드림의 정책을 준수하는지 확인하고 있습니다.<br>
					아래 사항들을 확인한 후 프로젝트를 등록해 주세요! 
					</p>
				</div>
				<ul class="checklist" id="insertformul">
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist1">
							<label for="reward-create-process-checklist1">
								펀딩 진행 중에는 제공할 리워드를 <span class="orangemark">다른 온∙오프라인에서 펀딩하거나 판매하지 않습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">	
							<input type="checkbox" id="reward-create-process-checklist2">
							<label for="reward-create-process-checklist2">
								이미 시판된 제품, 현금이나 지분 등 수익 제공, 선물 없는 단순 기부, 성인 인증이 필요한 컨텐츠 등 <span class="orangemark">기준에 맞지 않는 리워드를 제공하지 않습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist3">
							<label for="reward-create-process-checklist3">
								서포터에게 프로젝트 진행 과정을 <span class="orangemark">안내</span>하고, <span class="orangemark">배송 약속을 지킬 수 있습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist4">
							<label for="reward-create-process-checklist4">
								서포터와의 신뢰를 위해 펀딩 진행∙제품 제작∙ 배송 등 모든 과정에서 겪는 어려움들을 <span class="orangemark">서포터에게 진솔하게 전달하고 문제를 해결합니다.</span>
							</label>
						</div>
					</li>
				</ul>
				<div class="bottom" align="center">
					<br>
					<button type="button" class="btn btn-primary" style="background-color: #F39C12; border-color:#fff; color:#fff;">이전으로</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" id="goInsertForm" class="btn btn-primary" style="background-color: #8E44AD; border-color:#fff; color:#fff;" onclick="checkAgreement();" disabled>시작하기!</button>
				</div>
			</section>
		</div>
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
	</div>
	<div id="insertFundForm">
		<div class="clearfix"></div>
		<div class="container" id="ac_container">
			<div class="mt-5 mb-2 pt-5 pb-2 text-left clearfix" id="fundnotice">
				<div style="float:left;">
					<h2>펀드 <span class="purplefont">등록</span>하기</h2>
					<p>
					펀드의 검토는 평균 5~7일 정도 소요됩니다. 
					</p>
				</div>
				<div style="float:right;">
					<button type="button" id="goPreview" class="btn btn-primary" style="background-color: #F39C12; border-color:#fff; color:#fff;">미리보기</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" id="goSubmit" class="btn btn-primary" style="background-color: #8E44AD; border-color:#fff; color:#fff;">검토 요청 하기</button>
				</div>
			</div>
			<!-- 아코디언메뉴 삽입부 -->
			<div class="row clearfix" id="ac">
         		<form id="insertFrm" action="insertProject.dr" method="POST" enctype="multipart/form-data">
         		<input type="hidden" id="pNo" name="pNo" value="${pNo}">
         		<input type="hidden" id="pStatusNum" name="pStatusNum" value="">
				<ul>
					<li>
						<input id="rad1" type="radio" name="rad" checked="checked"/>
						<label for="rad1" id="lab1">
							<div>기 본 정 보</div>
						</label>
				   		<div class="accslide">
							<div class="content py-5">
								<span class="accoHead">1. 프로젝트 기본정보</span>
								<br><br><br>
				            	<table>
									<tr>
										<th>
											<div class="accInnerHeader">
												<h5>프로젝트 번호</h5> 
												<p>두드림 담당자와의 소통은 프로젝트 번호로 진행됩니다.</p>
				                     		</div>
				               			</th>
				                  		<td>
				                      		<div class="accInnerContent">
												<p>
				                           		프로젝트 번호 : ${pNo} <br><br>
				                            	https://dodream.com/web/campaign/detail/${pNo} 로 프로젝트가 오픈되며,
				                            	<br>프로젝트 오픈 이후 진입 가능합니다. <br><br>
				                         		</p>
				                      		</div>
				                   		</td>
				               		</tr>
				               		<tr>
				                  		<th>
											<div class="accInnerHeader">
												<h5>카테고리</h5>
												<p>오픈 후, 노출될 카테고리를 <br>선택해주세요.</p>
											</div>
				                  		</th>
				                  		<td>
				                  			<div class="accInnerContent nonborder" style="padding-left: 0;">
				                        		<select class="accCategory" name="pCategoryNum">
												   	<option>카테고리 선택</option>
													<option value="1">음악</option>
													<option value="2">영화</option>
													<option value="3">연극</option>
													<option value="4">미술</option>
													<option value="9">ETC</option>
												</select>
											</div>
				                  		</td>
				               		</tr>
				               		<tr>
										<th>
									   		<div class="accInnerHeader">
												<h5>프로젝트 제목</h5>
												<p>프로젝트의 성격과 리워드를 <br>짐작할 수 있게 간결하고 개성있게 <br>작성해주세요.</p>
									   		</div>
										</th>
				                  		<td>
				                  			<div class="accInnerContent">
									   			<textarea name="pTitle" rows="10" placeholder="예) 누구나 방방 뛸 수 있는 흠뻑쇼 " required>
									   			</textarea>
									   		</div>
										</td>
				               		</tr>
									<tr>
								   		<th>
											<div class="accInnerHeader">
												<h5>짧은 제목</h5>
												<p>검색, 알림 등에 사용되는 <br>짧은 제목도 함께 작성해주세요.</p>
									   		</div>
										</th>
										<td>
											<div class="accInnerContent">
												<textarea name="pSTitle" rows="10" placeholder="예) ★ 흠뻑쇼 ★ " required>
												</textarea>
											</div>
										</td>
									</tr>
									<tr>
								   		<th>
							      			<div class="accInnerHeader">
												<h5>목표 금액</h5>
												<p>마감일 자정 기준 목표금액 <br>미달성 시, 펀딩은 취소됩니다.</p>
									      	</div>
									   	</th>
								   		<td>
								   			<div class="accInnerContent">
								      			<input type="number" name="pGoal" placeholder="0" required> 원
								      		</div>
									   	</td>
									</tr>
									<tr>
								   		<th>
							      			<div class="accInnerHeader">
												<h5>썸네일(대표 이미지)</h5>
												<p>프로젝트의 성격과 개성이<br> 한 눈에 드러나는 사진이 좋아요</p>
									      	</div>
									   	</th>
								   		<td>
								   			<div class="accInnerContent">
								      			<input type="file" name="uploadfile1">
								      		</div>
									   	</td>
									</tr>
									<tr>
								   		<th>
							      			<div class="accInnerHeader">
												<h5>프로젝트 시작 / 종료일</h5>
												<p>프로젝트의 진행 기간은 <br> 평균 30일 입니다.</p>
									      	</div>
									   	</th>
								   		<td>
								   			<div class="accInnerContent">
								      			<span>프로젝트 시작일 : </span>
								      			<input type="date" name="pStartDate"><br>
								      			<span>프로젝트 종료일 : </span>
								      			<input type="date" name="pCloseDate"><br>
								      		</div>
									   	</td>
									</tr>
									<tr>
								   		<th>
							      			<div class="accInnerHeader">
												<h5>해시태그</h5>
												<p>해시태그에 보여질 태그들을<br>작성해 주세요.</p>
									      	</div>
									   	</th>
								   		<td>
								   			<div class="accInnerContent">
								      			#
								      			<input type="text" name="pHashTag" placeholder="예) 상큼발랄, 인디밴드, 물쑈">
								      		</div>
									   	</td>
									</tr>
								</table>
							</div>
						</div>
					</li>
					<li>
						<input id="rad2" type="radio" name="rad"/>
						<label for="rad2" id="lab2">
					   		<div>리 워 드</div>
						</label>
						<div class="accslide">   
							<div class="content py-5">
								<span class="accoHead">2. 리워드 정보</span><br><br>
								<div class="accRewardBox">
							   		<table>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>금액</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
									   				<input type="number" name="rList[0].rPrice">원
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>리워드 명</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
									   				<input type="text" name="rList[0].rName">
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>리워드 설명</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
										   			<textarea name="rList[0].rExplain" rows="10" placeholder="리워드의 설명을 적어주세요 " required>
										   			</textarea>
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>리워드 옵션</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
										   			<input type="radio" name="rList[0].rOptionNo" value="1"> 옵션 입력이 필요 없는 리워드입니다.
										   			<input type="radio" name="rList[0].rOptionNo" value="2"> 선택 옵션이 필요한 리워드입니다.(사이즈, 색상 등)
										   			<input type="radio" name="rList[0].rOptionNo" value="3"> 직접 입력 옵션이 필요한 리워드입니다.
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>배송 조건</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
										   			<input type="checkbox" name="rList[0].rShipCDT"> 배송을 위해 주소지가 필요합니다.
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>제한 수량</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
										   			리워드를 <input type="number" name="rList[0].rLimit"> 개로 제한합니다.
									      		</div>
										   	</td>
										</tr>
							      		<tr>
									   		<th>
								      			<div class="accInnerHeader">
													<p>발송 예정일</p>
										      	</div>
										   	</th>
									   		<td>
									   			<div class="accInnerContent nonborder">
										   			<input type="date" name="rList[0].rShipDate">
									      		</div>
										   	</td>
										</tr>
								    </table>
							    </div>
							</div>
						</div>
					</li>
					<li>
						<input id="rad3" type="radio" name="rad"/>
						<label for="rad3" id="lab3">
					   		<div>스 토 리</div>
						</label>
						<div class="accslide">
							<div class="content py-5">
								<span class="accoHead">3. 스토리텔링</span><br><br>
								<table>
									<tr>
										<th>
											<div><h5>소개영상 / 사진 등록</h5> 
									      		<p>
									      		-프로젝트 상단에 올라갈 영상 또는 사진을 올려주세요(택1) <br>
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
												<p>
												<input type="text" name="pMainImage" id="pMainImage" readonly>
												<button type="button">url 등록</button>
												<button type="button">삭제</button>
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>프로젝트 요약 문구</h5> 
									      		<p>
									      		프로젝트를 통해 무엇을 만들고 싶은지, 이루고 싶은 목표가 무엇인지 알려주세요.<br>
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<textarea rows="10" cols="30" name="pSummaryText"></textarea>
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>스토리 작성 동의</h5> 
									      		<p>
									      		스토리 광고 심의 동의를 진행해야 스토리를 작성할 수 있습니다.
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="ui checkbox">
									    		<input type="checkbox" id="story-check1">
	    										<label for="story-check1">
													두드림 심의 가이드라인을 숙지하여야 합니다.
												</label>
												<br><br>
									    		<input type="checkbox" id="story-check2">
	    										<label for="story-check2">
													두드림은 담당기관의 해석을 우선시 합니다.
												</label>
												<br><br>
									    		<input type="checkbox" id="story-check3">
	    										<label for="story-check3">
													두드림은 담당기관의 해석을 우선시 합니다.
												</label>
												<br><br>
									    		<input type="checkbox" id="story-check4">
	    										<label for="story-check4">
													두드림은 담당기관의 해석을 우선시 합니다.
												</label>
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>스토리</h5> 
									      		<p>
									      		최종 승인 이후에는 스토리를 수정할 수 없으니 신중하게<br>
									      		작성해주시기 바랍니다!
									      		</p>
										   	</div>
										</th>
										<td>
											<textarea id="pStory" name="pStory">에디터 삽입부</textarea>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</li>
					<li>
						<input id="rad4" type="radio" name="rad"/>
						<label for="rad4" id="lab4">
					   		<div>아 티 스 트 정 보</div>
						</label>
						<div class="accslide">
							<div class="content py-5">
					  			<span class="accoHead">4. 아티스트 정보</span><br><br>
								<table>
									<tr>
										<th>
											<div><h5>아티스트 이름</h5> 
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<input type="text" name="pArtistName" placeholder="예) Sun희">
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>프로필 이미지</h5> 
												<p>
									      		아티스트 프로필 영역에 <br>노출되는 이미지입니다.
										      	</p>		
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<input type="file" name="uploadfile2">
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>아티스트 소개</h5>
												<p>
									      		아티스트님을 소개할 수 있는 문구를<br> 간략히 적어주세요!
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<textarea name="pArtistIntroduction"></textarea>
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>소셜 네트워크</h5>
												<p>
									      		서포터가 확인할 수 있는 <br>
									      		아티스트님의 페이스북, 인스타그램 링크 등을 등록해주세요!
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<span>https://www.facebook.com/ </span> <input type="text" name="pArtistSns1"> <br><br>
									    		<span>https://www.instagram.com/ </span> <input type="text" name="pArtistSns2">
											</div>
										</td>
									</tr>
									<tr>
										<th>
											<div><h5>문의 이메일 및 전화번호</h5>
												<p>
									      		서포터 문의 시 연락이 가능하고, <br>
									      		프로젝트 페이지에 노출 가능한 <br>
									      		대표 이메일, 전화번호를 입력해주세요.
									      		</p>
										   	</div>
										</th>
										<td>
									    	<div class="insertBox">
									    		<span>이메일 : </span> <input type="text" name="pArtistEmail"> <br><br>
									    		<span>전화번호 : </span> <input type="text" name="pArtistPhone">
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</li>
				</ul>		
				</form>
			</div>
			<div style="margin-top: 30px;" align="center">
				<button type="button" onclick="goSave();" class="btn btn-primary" style="background-color: #8E44AD; border-color:#fff; color:#fff;">임시 저장하기</button>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
	</div>
	<script>
		// 페이지 로드 완료시 인서트폼은 숨깁니다. (동의를 완료해야 보여집니다)
		$(function(){
			$("#insertFundForm").hide();
		});
		
		
		// 만약 동의 버튼중 하나라도 변한다면 validate() 메소드 실행
		$(".checklist input[type='checkbox']").change(function(){
			validate();
		});
		
		// 모든 동의버튼이 체크되어야 다음으로 버튼이 활성화 됩니다.
		function validate(){
			var result1, result2, result3, result4;
			var $chk1 = $("#reward-create-process-checklist1");
			var $chk2 = $("#reward-create-process-checklist2");
			var $chk3 = $("#reward-create-process-checklist3");
			var $chk4 = $("#reward-create-process-checklist4");
			if($chk1.is(':checked')) result1 = true;
			if($chk2.is(':checked')) result2 = true;
			if($chk3.is(':checked')) result3 = true;
			if($chk4.is(':checked')) result4 = true;
			if(result1 && result2 && result3 && result4) $("#goInsertForm").attr('disabled',false);
			else $("#goInsertForm").attr('disabled',true);
		}
		// 동의를 모두 체크하고 넘어가면 인서트폼을 보여주는 메소드
		function checkAgreement(){
			$("#agreementForm").hide();
			$("#insertFundForm").show();
	        $('html').animate({scrollTop : 0}, 300);
			if ( $("#rad1").is(":checked") ) {
				$("#ac li>label").css("height",$("#rad1").next().next().outerHeight());
				$("#ac").css("height",$("#rad1").next().next().outerHeight());
			}
		};
		
		// 아코디언메뉴의 세로 사이즈를 조정해주는 메소드
		$("input:radio").on("change",function(){
	        $('html').animate({scrollTop : 0}, 300);
			$("#ac li>label").css("height",$(this).next().next().outerHeight());
			$("#ac").css("height",$(this).next().next().outerHeight());
		});
		
		// 임시저장하는 메소드입니다. pStatusNum = 1 으로 세팅합니다. 
		function goSave(){
			var frm = $("#insertFrm");
			$("#pStatusNum").val(1);
			console.log("임시저장 완료");
			frm.submit();
		}
	</script>
</body>
</html>