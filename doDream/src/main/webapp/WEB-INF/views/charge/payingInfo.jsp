<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
<%@ include file="../common/menubar.jsp" %>
<style>
	div {
		/* border : 1px solid red; */
	}
	#payingTable td:nth-child(2) {
		text-align: right
	}
	#rewardTitle {
		color: #8E44AD;
		font-weight: 900;
		font-size: 17px;
	}
	#payingInfo .textSize-15 {
		font-size: 15px;
	}
	#payingTable input[type=text] {
		border: none;
		background-color: rgba(255,255,255,0);
		text-align: right;
		padding-right: 5px;
	}
	#payingTable input[type=text]:focus {
		outline: none;
	}
	#payingInfo .textHl-p {
		color: #8E44AD;
		font-weight: 900;
		font-size: 1.15em;
	}
	/* 커스텀 라디오 버튼 색상 변경 */
	#payingInfo .custom-control-input:checked~.custom-control-label::before {
		color: #fff;
		border-color: #8E44AD;
		background-color: #8E44AD;
	}
	#creditCard {
		border-collapse: separate;
		border-spacing: 2px;
	}
	#payingInfo .graytext{
		font-size: 13px;
		color: #777;
		line-height: 10px;
	}
</style>
</head>
<body>
	<section id="payingInfo">
		<h1 align="center">뚝딱뚝딱</h1>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<h3 class="text-center">결제창입니다</h3>
					<div class="row">
						<div class="col-md-12">
							<h3 class="text-left">h3. Lorem ipsum dolor sit amet.</h3>
							<table class="table" id="payingTable">
								<thead>
									<tr>
										<td colspan="2">
											<span id="rewardTitle">리워드 구성 제목 들어가는 부분</span><br>
											<span id="rewardDetail" class="textSize-15">디테일한 리워드 설명 블라블라 블라블라</span><br>
											<span id="rewardOption" class="textSize-15">리워드에 옵션이 있다면 여기에 들어감</span><br>
											<div id="rewardPriceArea" class="text-right">
												<input type="text" name="rewardPrice" id="rewardPrice" readonly> 원
											</div> 
										</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											추가 후원금
										</td>
										<td>
											<input type="text" name="additionalFund" id="additionalFund" readonly> 원
										</td>
									</tr>
									<tr>
										<td>
											배송비
										</td>
										<td>
											<input type="text" name="shippingFee" id="shippingFee" readonly> 원
										</td>
									</tr>
									<tr class="table-warning">
										<td class="textHl-p">
											최종 결제금액
										</td>
										<td class="textHl-p">
											<input type="text" name="fundingPrice" id="fundingPrice" readonly> 원
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row my-4">
						<div class="col-md-12">
							<h3>리워드 배송지</h3>
							<!-- 회원정보에 주소지가 입력되어 있을 때 기존 배송지 정보 출력 -->
							<c:if test="${ sessionScope.loginUser.address != null }">
							<span class="custom-control custom-radio">
								<input type="radio" name="address" id="current" class="custom-control-input" checked><label class="custom-control-label mr-5" for="current">기본 배송지</label>
							</span>
							</c:if>
							<span class="custom-control custom-radio">
								<input type="radio" name="address" id="newAddress" class="custom-control-input"><label class="custom-control-label" for="newAddress">새 배송지</label>
							</span>
							<div id="ship1">
								<div class="row">
									<div class="col-md-6">
										<label>이름</label><input type="text" name="shipName" id="shipName" class="form-control" >
									</div>
									<div class="col-md-6">
										<label>전화번호</label><input type="text" name="shipPhone" id="shipPhone" class="form-control" >
									</div>
								</div>
								<label class="mr-3">주소</label>
								<div class="row mb-1">
									<div class="col-md-9">
										<input type="text" name="shipAddress1" id="shipAddress1" placeholder="주소" class="form-control" >
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="shipAddress2" id="shipAddress2" placeholder="상세주소" class="form-control">
								<hr>
								<label>배송시 요청사항(선택)</label><br><input type="text" name="comment" id="comment" class="form-control" >
								<hr>
							</div>
							<!-- <div id="ship2">
								<div class="row">
									<div class="col-md-6">
										<label>이름</label><input type="text" name="shipName" id="shipName" class="form-control" >
									</div>
									<div class="col-md-6">
										<label>전화번호</label><input type="text" name="shipPhone" id="shipPhone" class="form-control" >
									</div>
								</div>
								<label class="mr-3">주소</label>
								<div class="row mb-1">
									<div class="col-md-9">
										<input type="text" name="shipAddress1" id="shipAddress1" placeholder="주소" class="form-control" >
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="shipAddress2" id="shipAddress2" placeholder="상세주소" class="form-control">
								<hr>
								<label>배송시 요청사항(선택)</label><br><input type="text" name="comment" id="comment" class="form-control" >
								<hr>
							</div> -->
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						<h3>결제 정보</h3>
							<div class="row">
								<div class="col-md-8">
									<table id="creditCard">
										<tr>
											<td colspan="4">
												<label>카드 정보</label>
											</td>
										</tr>
										<tr>
											<td><input type="text" name="card1" id="card1" class="form-control form-control-sm" ></td>
											<td><input type="text" name="card2" id="card2" class="form-control form-control-sm" ></td>
											<td><input type="text" name="card3" id="card3" class="form-control form-control-sm" ></td>
											<td><input type="text" name="card4" id="card4" class="form-control form-control-sm" ></td>
										</tr>
										<tr>
											<td colspan="2">
												<label class="mt-4">유효기간</label>
											</td>
											<td colspan="2">
												<label class="mt-4">카드 비밀번호</label>
											</td>
										</tr>
										<tr>
											<td colspan="2"><input type="text" name="validity" id="validity" class="form-control form-control-sm" placeholder="MM/YY"></td>
											<td colspan="2"><input type="text" name="cPassword" id="cPassword" class="form-control form-control-sm" placeholder="앞 2자리"></td>
										</tr>
										<tr>
											<td colspan="4">
												<label class="mt-4">생년월일 (주민번호 앞 6자리)<br>
												<span class="graytext">무기명 법인카드는 사업자 등록번호 10자리를 입력하세요</span></label>
											</td>
										</tr>
										<tr>
											<td colspan="4">
												<input type="text" name="birthYND" id="birthYND" class="form-control form-control-sm" >
											</td>
										</tr>
									</table>
								</div>
								<div class="col-md-4"> 
									결제 예약시 유의사항<br><br>
									<span class="graytext">- 결제실행일에 결제자 귀책사유(한도초과, 이용정지 등)로 인하여 결제가 실패할 수 있으니, 결제수단이 유효한지 한번 확인하세요.<br>
									- 1차 결제 실패 시 실패일로부터 3 영업일 동안 재 결제를 실행합니다.<br>
									- 결제 예약 이후, 결제할 카드를 변경하려면 마이페이지 > 나의 리워드의 결제정보에서 카드정보를 변경해주세요.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>약관 동의</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</section>
</body>
</html>