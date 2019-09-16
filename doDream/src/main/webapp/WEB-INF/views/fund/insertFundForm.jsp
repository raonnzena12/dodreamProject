<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀드 등록하기</title>
<link rel="stylesheet" href="resources/css/fundagreement.css">
<link rel="stylesheet" href="resources/css/accordion.css">
<style>
	#ac {
		display: block;
		width: 100%;
		height: 100%;
		border-bottom: 1px solid #ced4da;
		margin-left: 0;
		margin-right: 0;
	}
	#ac_container{
		max-width: 1360px;
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
				<ul>
					<li>
						<input id="rad1" type="radio" name="rad" checked="checked"/>
						<label for="rad1">
							<div>기 본 정 보</div>
						</label>
				   		<div class="accslide">
							<div class="content py-5">
								<span class="accoHead">1. 프로젝트 기본정보</span>
								<br><br><br>
				         		<form action="#" method="POST" enctype="multipart/form-data" id="insert1">
					            	<table>
										<tr>
											<th>
												<div><h5>프로젝트 번호</h5> 
													<p>두드림 담당자와의 소통은 프로젝트 번호로 진행됩니다.</p>
					                     		</div>
					               			</th>
					                  		<td>
					                      		<div class="insertBox">
													<p>
					                           		프로젝트 번호 : 46346 <br><br>
					                            	https://dodream.com/web/campaign/detail/46346 로 프로젝트가 오픈되며,
					                            	<br>프로젝트 오픈 이후 진입 가능합니다
					                         		</p>
					                      		</div>
					                   		</td>
					               		</tr>
					               		<tr>
					                  		<th>
												<div>
													<h5>카테고리</h5>
													<p>오픈 후, 노출될 카테고리를 <br>선택해주세요.</p>
												</div>
					                  		</th>
					                  		<td>
												<div>
					                        		<select required>
													   	<option value="0">카테고리 선택</option>
														<option value="1">인디밴드</option>
														<option value="2">뮤지컬</option>
														<option value="3">미술</option>
														<option value="4">예예</option>
														<option value="5">여여</option>
													</select>
					                     		</div>
					                  		</td>
					               		</tr>
					               		<tr>
											<th>
										   		<div>
													<h5>프로젝트 제목</h5>
													<p>프로젝트의 성격과 리워드를 <br>짐작할 수 있게 간결하고 개성있게 <br>작성해주세요.</p>
										   		</div>
											</th>
					                  		<td>
										   		<textarea class="insertBox" rows="5" placeholder="예) 누구나 방방 뛸 수 있는 흠뻑쇼 " required>
										   		</textarea>
											</td>
					               		</tr>
										<tr>
									   		<th>
												<div>
													<h5>짧은 제목</h5>
													<p>검색, 알림 등에 사용되는 <br>짧은 제목도 함께 작성해주세요.</p>
										   		</div>
											</th>
											<td>
												<textarea class="insertBox" rows="2" placeholder="예) ★ 흠뻑쇼 ★ " required>
												</textarea>
											</td>
										</tr>
										<tr>
									   		<th>
								      			<div>
													<h5>목표 금액</h5>
													<p>마감일 자정 기준 목표금액 <br>미달성 시, 펀딩은 취소됩니다.</p>
										      	</div>
										   	</th>
									   		<td>
									      		<input type="text" id="price" name="price" placeholder="0" required> 원
										   	</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</li>
					<li>
						<input id="rad2" type="radio" name="rad"/>
						<label for="rad2">
					   		<div>리 워 드</div>
						</label>
						<div class="accslide">   
							<div class="content py-5">
								<span class="accoHead">2. 리워드 정보</span><br><br>
								<form action="#" method="POST" enctype="multipart/form-data" id="insert1">
							   		<table>
							      		<tr>
							         		<th>
									            <div><h5>프로젝트 번호</h5> 
									               <p>두드림 담당자와의 소통은 프로젝트 번호로 진행됩니다.</p>
									            </div>
								         	</th>
							         		<td>
							             		<div class="insertBox">
									                <p>
													프로젝트 번호 : 46346 <br><br>
													https://dodream.com/web/campaign/detail/46346 로 프로젝트가 오픈되며,
													<br>프로젝트 오픈 이후 진입 가능합니다
									                </p>
							             		</div>
											</td>
										</tr>
								   </table>
								</form>
							</div>
						</div>
					</li>
					<li>
						<input id="rad3" type="radio" name="rad"/>
						<label for="rad3">
					   		<div>스 토 리</div>
						</label>
						<div class="accslide">
							<div class="content py-5">
								<span class="accoHead">3. 스토리텔링</span><br><br>
								<form action="#" method="POST" enctype="multipart/form-data" id="insert1">
									<table>
										<tr>
											<th>
												<div><h5>프로젝트 번호</h5> 
										      		<p>두드림 담당자와의 소통은 프로젝트 번호로 진행됩니다.</p>
											   	</div>
											</th>
											<td>
										    	<div class="insertBox">
													<p>
													프로젝트 번호 : 46346 <br><br>
													https://dodream.com/web/campaign/detail/46346 로 프로젝트가 오픈되며,
													<br>프로젝트 오픈 이후 진입 가능합니다
													</p>
												</div>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</li>
					<li>
						<input id="rad4" type="radio" name="rad"/>
						<label for="rad4">
					   		<div>아 티 스 트 정 보</div>
						</label>
						<div class="accslide">
							<div class="content py-5">
					  			<span class="accoHead">4. 아티스트 정보</span><br><br>
				  				<form action="#" method="POST" enctype="multipart/form-data" id="insert1">
									<table>
										<tr>
											<th>
												<div><h5>프로젝트 번호</h5> 
									      			<p>두드림 담당자와의 소통은 프로젝트 번호로 진행됩니다.</p>
											   	</div>
											</th>
											<td>
										    	<div class="insertBox">
													<p>
													프로젝트 번호 : 46346 <br><br>
													https://dodream.com/web/campaign/detail/46346 로 프로젝트가 오픈되며,
													<br>프로젝트 오픈 이후 진입 가능합니다
													</p>
												</div>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</li>
				</ul>		
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
	</div>
	<script>
		$(".checklist input[type='checkbox']").change(function(){
			validate();
		});
		
		$(function(){
			$("#insertFundForm").hide();
		});
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
		function checkAgreement(){
			$("#agreementForm").hide();
			$("#insertFundForm").show();
	        $('html').animate({scrollTop : 0}, 300);
		};
	</script>
	<!-- ㅎㅇ! -->
</body>
</html>