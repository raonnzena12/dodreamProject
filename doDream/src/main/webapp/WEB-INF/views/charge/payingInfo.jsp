<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
<jsp:include page="../common/menubar.jsp" />
<style>
	div {
		border : 1px solid red;
	}
	#payingTable td:nth-child(2) {
		text-align: right
	}
	#rewardTitle {
		color: #8E44AD;
		font-weight: 900;
		font-size: 17px;
	}
	#rewardDetail, #rewardOption {
		font-size: 15px;
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
											<span id="rewardDetail">디테일한 리워드 설명 블라블라 블라블라</span><br>
											<span id="rewardOption">리워드에 옵션이 있다면 여기에 들어감</span><br>
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
										<td>
											최종 결제금액
										</td>
										<td>
											<input type="text" name="fundingPrice" id="fundingPrice"> 원
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>리워드 배송지</h3>
							<label>이름<input type="text" name="shipName" id="shipName"></label><br>
							<label>전화번호<input type="text" name="shipPhone" id="shipPhone"></label><br>
							<label>주소<input type="text" name="shipAddress1" id="shipAddress1" placeholder="주소"></label><button>우편번호 검색</button><br>
							<input type="text" name="shipAddress2"	id="shipAddress2" placeholder="상세주소">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>결제 정보</h3>
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