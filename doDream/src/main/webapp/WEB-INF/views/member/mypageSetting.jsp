<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->
<style type="text/css">

	td{
		padding-bottom: 15px;
		padding-right: 0px;
	}

</style>

</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp" />
	<div class="container-fluid">
	<br>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">			
					<h3 class= "text-center">나의 정보</h3>
					<br>
					<form action="myInfoUpdate.dr" method="post" class="form-group" enctype="multipart/form-data">
						<table>
							<tr>
								<td style="width: 20%">
									프로필사진
								</td>
								<td style="width: 60%">
									<div class="text-center">
										<c:if test="${loginUser.userProfileImage}">
										<img alt="프로필사진" src="${loginUser.userProfileImage}" class="rounded-circle " id="userProfileImage"/>
										</c:if>
										<c:if test="${empty loginUser.userProfileImage}">
										<img alt="프로필사진" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="rounded-circle" id="userProfileImage"/>
										</c:if>
									</div>
								</td>
								<td style="width: 20%" class="text-center">
									<button class="btn btn-warning btn-sm mb-2" id="changeImgBtn">변경하기</button>
								</td>
							</tr>
							<tr>
								<td class="text-center">닉네임</td>
								<td colspan="2"><input type="text" class="form-control" id="userNickname" value="${loginUser.userNickname}" placeholder="변경할 닉네임을 입력해주세요"></td>
							</tr>
							<tr>
								<td class="text-center" rowspan="2">주소</td>
								<td class="pr-2"><input type="text" class="form-control" id="userAddress1"  placeholder="리워드 수령시 기본 주소"></td>
								<td class="text-center"><button type="button" class="btn btn-warning btn-sm" id="postcodify_search_button">주소검색</button></td>
					
							</tr>
							<tr>
							<td><input type="text" class="form-control" id="userAddress3" placeholder="상세 주소 입력"></td>
							<td><input type="text" class="form-control" id="userAddress2" placeholder="우편번호"></td>
							</tr>
							<tr>
								<td class="text-center">전화번호</td>
								<td class="pr-2"><input type="tel" class="form-control" id="userPhone" placeholder="전화번호를 입력해주세요"></td>
								<td class="text-center"><button class="btn btn-warning btn-sm mb-2 text-right">인증하기</button></td>
							</tr>
							<tr>
							<td colspan="3" class="text-center">
								<button class="btn btn-warning btn-lg btn-block" id="changeInfoBtn">수정하기</button>
							</td>
							</tr>
						</table>				
					</form>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	//버튼 클릭 시 주소 검색 팝업 후 input태그 insert
	$("#postcodify_search_button").postcodifyPopUp({
        insertPostcode5 :"#userAddress2",
        insertAddress : "#userAddress1",
        insertDetails: "#userAddress3"
    });
	
</script>

</body>
</html>