<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀드 등록하기</title>
<link rel="stylesheet" href="resources/css/accordion.css">
<style>
	#ac {
		display: block;
	}
	#ac_container{
		max-width: 1360px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
    <div class="container" id="ac_container">
		<div class="py-5 text-center">
			<h2>펀딩 등록하기</h2>
			<p class="lead">
			빨리빨리 만들어야한다 이말이야
			영상씨의 테스트
			</p>
		</div>
		<!-- 아코디언메뉴 삽입부 -->
		<div class="row" id="ac">
<ul>
	<li>
		<input id="rad1" type="radio" name="rad" checked="checked"/>
		<label for="rad1">
			<div>기본정보</div>
		</label>
   		<div class="accslide">
			<div class="content">
				<h2>1. 프로젝트 기본정보</h2><br><br>
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
	   		<div>리워드</div>
		</label>
		<div class="accslide">   
			<div class="content">
				<h2>2. 리워드 정보</h2><br><br>
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
	   		<div>스토리</div>
		</label>
		<div class="accslide">
			<div class="content">
				<h2>3. 스토리텔링</h2><br><br>
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
	   		<div>아티스트정보</div>
		</label>
		<div class="accslide">
			<div class="content">
	  			<h2>4. 아티스트 정보</h2><br><br>
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
</body>
</html>