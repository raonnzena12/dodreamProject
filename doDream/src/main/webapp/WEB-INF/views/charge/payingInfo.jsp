<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
<%@ include file="../common/menubar.jsp" %>
<!-- 가상 숫자패드 CSS/JS -->
<link rel="stylesheet" type="text/css" href="resources/css/jquery.numberKeypad.css">
<script type="text/javascript" src="resources/js/jquery.numberKeypad.js"></script>
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
	#ship1, #ship2 {
		display: none;
	}
	.borderRed {
		border: 1px solid crimson;
	}
	.textRed {
		color: crimson;
		font-size: 13px;
		display: none;
	}
</style>
</head>
<body>
	<section id="payingInfo" class="my-5">
		<h1 align="center">뚝딱뚝딱</h1>
		<div class="container-fluid mb-5">
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
							<span class="custom-control custom-radio mx-4 my-3">
								<input type="radio" name="address" id="current" class="custom-control-input" checked><label class="custom-control-label mr-5" for="current">기본 배송지</label>
							</span>
							</c:if>
							<span class="custom-control custom-radio mx-4 my-3">
								<input type="radio" name="address" id="newAddress" class="custom-control-input"><label class="custom-control-label" for="newAddress">새 배송지</label>
							</span>
							<div id="ship1">
								<div class="row">
									<div class="col-md-6">
										<label>이름</label><input type="text" name="ship1Name" id="ship1Name" class="form-control">
									</div>
									<div class="col-md-6">
										<label>전화번호</label><input type="text" name="ship1Phone" id="ship1Phone" class="form-control" >
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6" id="phoneTest"><span>하이픈(-)을 제외한 전화번호10~11자리를 입력해주세요</span></div>
								</div>
								<label class="mr-3">주소</label>
								<div class="row mb-1">
									<div class="col-md-9">
										<input type="text" name="ship1Address1" id="ship1Address1" placeholder="주소" class="form-control" >
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="ship1Address2" id="ship1Address2" placeholder="상세주소" class="form-control">
								<hr>
								<label>배송시 요청사항(선택)</label><br><input type="text" name="comment1" id="comment1" class="form-control" >
								<hr>
							</div>
							<div id="ship2">
								<div class="row">
									<div class="col-md-6">
										<label>이름</label><input type="text" name="ship2Name" id="ship2Name" class="form-control" placeholder="받으실 분의 성함을 입력해주세요">
									</div>
									<div class="col-md-6">
										<label>전화번호</label><input type="text" name="ship2Phone" id="ship2Phone" class="form-control" placeholder="연락 가능한 번호를 입력해주세요">
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6"><span class="textRed">하이픈(-)을 제외한 전화번호10~11자리를 입력해주세요</span></div>
								</div>
								<label class="mr-3">주소</label>
								<div class="row mb-1">
									<div class="col-md-9">
										<input type="text" name="ship2Address1" id="ship2Address1" placeholder="주소" class="form-control" >
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="ship2Address2" id="ship2Address2" placeholder="상세주소를 입력해주세요" class="form-control">
								<hr>
								<label>배송시 요청사항(선택)</label><br><input type="text" name="comment2" id="comment2" class="form-control" placeholder="배송시 요청사항을 입력해주세요">
								<hr>
							</div>
						</div>
					</div>
					<div class="row my-4">
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
											<td><input type="text" name="card1" id="card1" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="text" name="card2" id="card2" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="text" name="card3" id="card3" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="text" name="card4" id="card4" class="form-control form-control-sm" maxlength="4"></td>
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
					<div class="row my-4">
						<h3>약관 동의</h3>
						<div class="col-md-12">
							<hr>
							<span class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" value="allCheck" id="allCheck"><label class="custom-control-label" for="allCheck" >전체 동의하기</label>
							</span>
							<hr>
							<span class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" value="agree1" id="agree1"><label class="custom-control-label" for="agree1" >제 3자에 대한 개인정보 제공 동의</label>
							</span>
							<span class="custom-control custom-checkbox my-2">
								<input type="checkbox" class="custom-control-input" value="agree2" id="agree2"><label class="custom-control-label" for="agree2" >책임 규정에 대한 동의</label>
							</span>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center">
							<button class="btn btn-warning btn-lg">결제 예약하기</button>
						</div>
					</div>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</section>
<script>
	$(function(){
		// 가상 키패드 LOADING
		$('#card2').numberKeypad({
			// wrap: $('.wrapper'),
			arrKeys: [1, 2, 3, 4, 5, 6, 7, 8, 9, 'x', 0, 'ok'],
			login: false // 이하 커스텀 스타일
		});
		// 전체동의하기 체크하면 전체 체크처리
		$("#allCheck").on("click", function(){
			if( $(this).is(":checked") ) {
				$("#agree1").prop("checked","checked");
				$("#agree2").prop("checked","checked");
			} else {
				$("#agree1").prop("checked", false);
				$("#agree2").prop("checked", false);
			}
		});
		// 각각의 동의문 전부 체크되면 전체동의하기 체크처리
		$("input:checkbox").on("click", function(){
			if ( $("#agree1").is(":checked") && $("#agree2").is(":checked") ) {
				$("#allCheck").prop("checked","checked");
			} else {
				$("#allCheck").prop("checked",false);
			}
			console.log($("#allCheck").is(":checked"));
			console.log($("#agree1").is(":checked"));
			console.log($("#agree2").is(":checked"));
		});
		// 기존배송지 - 새 배송지 페이지 진입시 보여줄 페이지 선택
		if ( $("input[type=radio]").length == 1 ) {
			console.log("기존 배송지가 없음");
			$("#ship2").show();
		} else {
			console.log("기존 배송지가 있음");
			$("#ship1").show();
		}
		// 기존배송지 - 새배송지 전환시 입력Area 전환
		$("input:radio").on("click", function(){
			if ($("#current").is(":checked")) { 
				// 기존 배송지가 체크할 경우 기존 배송지 출력
				$("#ship1").show();
				$("#ship2").hide();
			}
			if ($("#newAddress").is(":checked")) {
				// 새 배송지 체크할 경우 새 배송지 출력
				$("#ship1").hide();
				$("#ship2").show();
			}
		});
		// 전화번호 정규식 검사
		$("input[id$=Phone]").on("blur",function(){
			var regExp = /^\d{3}\d{3,4}\d{4}$/;
			var pNum = $(this).val();
			if ( regExp.test(pNum) ) {
				// 정규식 통과할 경우 평범한 색으로 되돌림
				$(this).removeClass("borderRed");
				$(this).parent().parent().next().children().eq(1).children().hide();
			} else {
				// 정규식 통과하지 못할 경우 테두리를 빨간색으로 만듬
				$(this).addClass("borderRed");
				$(this).parent().parent().next().children().eq(1).children().show();
			}
		});
	});
</script>
</body>
</html>