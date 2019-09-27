<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림 - 프로젝트 펀딩안내</title>
<%@ include file="../common/menubar.jsp" %>
<link rel="stylesheet" type="text/css" href="resources/css/fundingInfo.css">
<script type="text/javascript" src="resources/js/fundingInfo.js"></script>
<!-- 가상 숫자패드 CSS/JS --> 
<link rel="stylesheet" type="text/css" href="resources/css/jquery.numberKeypad.css">
<script type="text/javascript" src="resources/js/jquery.numberKeypad.js"></script>
<!-- 툴팁출력용 -->
<script type="text/javascript" src="https://unpkg.com/popper.js"></script>
<!-- 부트페이 -->
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.2.min.js" type="application/javascript"></script>
</head>
<body>
<c:url var="fundingComplete" value="thankYou.dr" />
	<section id="payingInfo" class="my-5">
		<h1 align="center">뚝딱뚝딱</h1>
		<div class="container-fluid mb-5">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<h3 class="text-center">결제창입니다</h3>
					<div class="row">
						<div class="col-md-12 mx-auto innerMain">
							<h3 class="text-left">리워드 구성</h3>
							<table class="table" id="payingTable">
								<thead>
									<tr>
										<td colspan="2">
											<form action="${ fundingComplete }" method="post" id="fndInsert2">
											<c:forEach var="rwd" items="${ rList }" varStatus="status" >
												<input type="hidden" name="hList[${ status.index }].rwdNo" value="${ rwd.rNo }">
											<span class="rewardTitle" id="${ rwd.rNo }">${ rwd.rName } _ <input type="number" name="hList[${ status.index }].rwdAmount" class="rwd-amount${ status.index }" maxlength="3" oninput="maxLengthCheck(this);" idx="${ status.index }" limit="${ rwd.rAmount }" data-toggle="tooltip" data-placement="bottom" title="펀딩가능 수량 : ${ rwd.rAmount }개"> 개</span><br>
											<span class="rewardDetail textSize-15">${ rwd.rExplain}</span><br>
											<c:if test="${ !empty rwd.rOptionAdd }" >
											<span class="rewardOption textSize-15">${ rwd.rOptionAdd }</span><br>
											</c:if>
											<div class="rewardPriceArea text-right">
												<input type="hidden" name="rewardPrice${ rwd.rNo }" id="rewardPrice${ rwd.rNo }" value="${ rwd.rPrice }" class="rwd-price${ status.index }" idx="${ status.index }" readonly>
												<span class="rwd-aPrint${ status.index }"></span> 원</div>
											</c:forEach>
										</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											추가 후원금
										</td>
										<td>
											<input type="text" name="additionalFund" id="additionalFund" value="${ additionalCost }" readonly> 원
										</td>
									</tr>
									<!-- <tr>
										<td>
											배송비
										</td>
										<td>
											<input type="text" name="shippingFee" id="shippingFee" readonly> 원
										</td>
									</tr> -->
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
						<div class="col-md-12 innerMain mx-auto">
							<h3>리워드 배송지</h3>
							<!-- 회원정보에 주소지가 입력되어 있을 때 기존 배송지 정보 출력 -->
							<c:if test="${ sessionScope.loginUser.userAddress != null }">
							<c:set var="addr" value="${ loginUser.userAddress }" />
							<span class="custom-control custom-radio mx-4 my-3">
								<input type="radio" name="address" id="current" class="custom-control-input" checked><label class="custom-control-label mr-5" for="current">기본 배송지</label>
							</span>
							<span class="custom-control custom-radio mx-4 my-3">
								<input type="radio" name="address" id="newAddress" class="custom-control-input"><label class="custom-control-label" for="newAddress">새 배송지</label>
							</span>
							</c:if>
							<c:if test="${ sessionScope.loginUser.userAddress == null }">
							<span class="custom-control custom-radio mx-4 my-3">
								<input type="radio" name="address" id="newAddress" class="custom-control-input" checked><label class="custom-control-label" for="newAddress">새 배송지</label>
							</span>
							</c:if>
							<div id="ship1">
								<div class="row">
									<div class="col-md-6">
										<label>이름</label><input type="text" name="ship1Name" id="ship1Name" class="form-control">
									</div>
									<div class="col-md-6">
										<label>전화번호</label><input type="text" name="ship1Phone" id="ship1Phone" class="form-control" value="${ loginUser.userPhone }">
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6 pr-0" id="phoneTest"><span class="textRed">하이픈(-)을 제외한 전화번호10~11자리를 입력해주세요</span></div>
								</div>
								<label class="mr-3 mt-4">주소</label>
								<div class="row mb-1 inputAddr1">
									<div class="col-md-7">
										<input type="text" name="ship1Address1" id="ship1Address1" placeholder="주소" class="form-control" autocomplete="off" value="${ fn:split(addr,',')[0] }">
									</div>
									<div class="col-md-2 px-0">
										<input type="text" name="postCode1" id="postCode1" placeholder="우편번호" class="form-control" autocomplete="off" value="${ fn:split(addr,',')[2] }">
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block" id="postcodify_search_button1">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="ship1Address2" id="ship1Address2" placeholder="상세주소" class="form-control postcodify_details" value="${ fn:split(addr,',')[1] }">
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
									<div class="col-md-6 pr-0"><span class="textRed">하이픈(-)을 제외한 전화번호10~11자리를 입력해주세요</span></div>
								</div>
								<label class="mr-3 mt-4">주소</label>
								<div class="row mb-1 inputAddr2">
									<div class="col-md-7">
										<input type="text" name="ship2Address1" id="ship2Address1" placeholder="주소" class="form-control" autocomplete="off">
									</div>
									<div class="col-md-2 px-0">
										<input type="text" name="postCode2" id="postCode2" placeholder="우편번호" class="form-control" autocomplete="off">
									</div>
									<div class="col-md-3">
										<button class="btn btn-warning btn-block" id="postcodify_search_button2">우편번호 검색</button>
									</div>
								</div>
								<input type="text" name="ship2Address2" id="ship2Address2" placeholder="상세주소를 입력해주세요" class="form-control" >
								<hr>
								<label>배송시 요청사항(선택)</label><br><input type="text" name="comment2" id="comment2" class="form-control" placeholder="배송시 요청사항을 입력해주세요">
								<hr>
							</div>
						</div>
					</div>
					<div class="row my-4">
						<div class="col-md-12 innerMain mx-auto">
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
											<td><input type="number" name="card1" id="card1" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="password" name="card2" id="card2" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="password" name="card3" id="card3" class="form-control form-control-sm" maxlength="4"></td>
											<td><input type="number" name="card4" id="card4" class="form-control form-control-sm" maxlength="4"></td>
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
											<td colspan="2"><input type="password" name="cPassword" id="cPassword" class="form-control form-control-sm" placeholder="앞 2자리" maxlength="2"></td>
										</tr>
										<tr>
											<td colspan="4">
												<label class="mt-4">생년월일 (주민번호 앞 6자리)<br>
												<span class="graytext">무기명 법인카드는 사업자 등록번호 10자리를 입력하세요</span></label>
											</td>
										</tr>
										<tr>
											<td colspan="4">
												<input type="number" name="birthYND" id="birthYND" class="form-control form-control-sm" >
											</td>
										</tr>
									</table>
								</div>
								<div class="col-md-4 containGray"> 
									결제 예약시 유의사항<br><br>
									<span class="graytext">- 결제실행일에 결제자 귀책사유(한도초과, 이용정지 등)로 인하여 결제가 실패할 수 있으니, 결제수단이 유효한지 한번 확인하세요.<br>
									- 1차 결제 실패 시 실패일로부터 3 영업일 동안 재 결제를 실행합니다.<br>
									- 결제 예약 이후, 결제할 카드를 변경하려면 마이페이지 > 나의 리워드의 결제정보에서 카드정보를 변경해주세요.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row my-4">
						<div class="col-md-12 innerMain mx-auto">
							<h3>약관 동의</h3>
							<hr>
							<span class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="allCheck" name="allCheck"><label class="custom-control-label" for="allCheck" >전체 동의하기</label>
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
							<button type="button" class="btn btn-warning btn-lg" id="toComplete">결제 예약하기</button>
						</div>
					</div>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
			<input type="hidden" name="addi" value="${ additionalCost }">
			<input type="hidden" name="rName">
			<input type="hidden" name="rContract">
			<input type="hidden" name="rAddress">
			<input type="hidden" name="rRequest">
			<input type="hidden" name="rUser" value="0">
			<input type="hidden" name="rRefPno" value="${ pNo }">
		</form>
	</section>
<script>
$(function(){
	// 최초 진입시 합계를 한번 출력한다
	calcPrice();
	// 리워드 양을 변경했을때 실행되는 코드
	$("input[class^=rwd-amount]").on("input", function(){
		var index = $(this).attr("idx"); // 해당 input 태그의 index를 받는다
		var limit = $(this).attr("limit")*1; // 해당 리워드의 현재수량을 받는다
		var amount = $(this).val()*1; // 유저가 기입한 수량을 받는다
		var price = $(".rwd-price"+index).val()*1; // 해당 리워드 가격을 받는다

		if ( amount > limit ) { // 기입한 수량이 현재수량보다 크면
			$(this).val(limit);
			$(".rwd-aPrint"+index).text(price*limit);
			calcPrice();
		} else { // 기입한 수량이 현재수량보다 적으면
			$(".rwd-aPrint"+index).text(price*amount);
			calcPrice();
		}
	});
	// 결제 예약하기 버튼을 클릭했을시 실행되는 코드
	$("#toComplete").on("click", function(){
		
		// console.log($("input[name=address]:checked").attr("id"));
		// 라디오박스가 어디 체크되어있는지 확인하고, 알맞은 값을 hidden 태그의 value로 저장
		if ( $("input[name=address]:checked").attr("id") == "newAddress" ) {
		// 새 배송지가 체크 되어 있을 때
			$("input[name=rName]").val($("#ship2Name").val());
			$("input[name=rContract").val($("#ship2Phone").val());
			$("input[name=rAddress").val($("#ship2Address1").val()+ "," +$("#ship2Address2").val()+ "," +$("#postCode2").val());
			$("input[name=rRequest").val($("#comment2").val());
		} else {
			// 기본 배송지가 체크 되어 있을 때
			$("input[name=rName]").val($("#ship1Name").val());
			$("input[name=rContract").val($("#ship1Phone").val());
			$("input[name=rAddress").val($("#ship1Address1").val()+ "," +$("#ship1Address2").val()+ "," +$("#postCode1").val());
			$("input[name=rRequest").val($("#comment1").val());
		}
		var nameCK = true;
		var addrCK = true;
		var contCK = true;
		var regExp = /^\d{3}\d{3,4}\d{4}$/;
        // 전화번호 정규식
		var infoMsg = "";
		if ( $("input[name=rName]").val() == "" ) {
			nameCK = false;
			infoMsg += "수령자 이름을 적어주세요.<br>"
		}
		if ( $("input[name=rAddress]").val().match(",,") || $("input[name=rAddress]").val().length < 8 ) {
			addrCK = false;
			infoMsg += "주소를 정확하게 입력 해주세요.<br>";
		}
		if ( $("input[name=rContract]").val() == "" || !regExp.test($("input[name=rContract]").val()) ) {
			contCK = false;
			infoMsg += "연락처를 정확하게 입력 해주세요."
		}
		// if ( !(nameCK && addrCK && contCK) ) {
		// 	Swal.fire( '작성란을 기입해주세요!', infoMsg, 'warning' );
		// 	return false;
		// }

		var allCK = false;
		// console.log($("input:checked[name=allCheck]").is(":checked"));
		if ( $("input:checked[name=allCheck]").is(":checked") ) {
			allCK = true;
		}

		console.log("addi : " + $("input[name=addi]").val());
		console.log("rName : " + $("input[name=rName]").val());
		console.log("rContract : " + $("input[name=rContract]").val());
		console.log("rAddress : " + $("input[name=rAddress]").val());
		console.log("rRequest : " + $("input[name=rRequest]").val());
		console.log("rUser : " + $("input[name=rUser]").val());
		console.log("rRefPno : " + $("input[name=rRefPno]").val());
		// 뒤로 넘기기
		var c1 = $("input[name=card1]").val();
		if ( allCK ) {
			// 부트페이 테스트
			BootPay.request({
				price: 0, // 0으로 해야 한다.
				application_id: "5d7cf0bb0627a80029aecce3",
				name: '정기적인 결제', //결제창에서 보여질 이름
				pg: 'danal',
				method: 'card_rebill', // 빌링키를 받기 위한 결제 수단
				show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
				user_info: {
					email: 'raonnzena12@gmail.com',
				},
				order_id: 'order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
				params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
				extra: {
					start_at: '2019-10-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
					end_at: '2019-10-10' // 정기결제 만료일 -  기간 없음 - 무제한
				}
			}).error(function (data) {
				//결제 진행시 에러가 발생하면 수행됩니다.
				console.log(data);
			}).cancel(function (data) {
				//결제가 취소되면 수행됩니다.
				console.log(data);
			}).done(function (data) {
				// 빌링키를 정상적으로 가져오면 해당 데이터를 불러옵니다.
				console.log("success");
				console.log(data);
			});
			// $("#fndInsert").submit();
			// $("#fndInsert2").submit();
			setTimeout(function(){
				$(document).find("input[name=cardNo1]").val(c1);
			}, 3000);
		} else {
			Swal.fire( '약관에 동의해주세요!', "", 'warning' );
			return false;
		}
	});
});
// amount maxLength 체크해주는 함수
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
}
function calcPrice() {
	var sum = 0;
	$("input[name^=rewardPrice]").each(function(){
		var index = $(this).attr("idx");
		var amount = $(".rwd-amount"+index).val();
		sum += $(this).val()*1*amount;
	})
	$("#fundingPrice").val(sum+${ additionalCost });
}
</script>
</body>
</html>
