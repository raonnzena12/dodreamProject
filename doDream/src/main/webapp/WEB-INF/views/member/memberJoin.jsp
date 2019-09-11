<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	.centerText table {
		margin: auto;
	}
	
	span.guide{
		display : none;
		font-size : 12px;
		top : 12px;
		right: 10px;
	}	
	
	span.ok{color:green}
	span.error{color:red}
	
	
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<h1 align="center">회원가입</h1>
	
	<div class="centerText">
		<form action="minsert.kh" method="post" id="joinForm">
			<table width="650" cellspacing="5" >
				<tr>
					<td width="150">* 아이디</td>
					<td width="300">
						<input type="text" name="id" id="userId" required>
						
						<span class="guide ok">이 아이디는 사용 가능합니다.</span>
						<span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						<input type="hidden" name="idDuplicateCheck" 
							   id="idDuplicateCheck" value="0">
						
					</td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="pwd" required></td>
				</tr>
				<tr>
					<td>* 비밀번호확인</td>
					<td><input type="password" name="pwd2" required></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="M">남
						<input type="radio" name="gender" value="F">여
					</td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" min="20" max="100" name="age"></td>				
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="tel" name="phone"></td>
				</tr>
				<!-- 
					이제 주소 input을 작성할껀데!! 너무 식상하니깐 API 사용해보자
					주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다. 
				-->
				<tr>
					<td>우편번호</td>
					<td>
						<input type="text" name="post" class="postcodify_postcode5" value="" size="6">
						<button type="button" id="postcodify_search_button">검색</button>
					</td>
				</tr>
				<tr>
					<td>도로명 주소</td>
					<td><input type="text" name="address1" class="postcodify_address" value=""></td>
				</tr>
				<tr>
					<td>상세 주소</td>
					<td><input type="text" name="address2" class="postcodify_extra_info" value=""></td>
				</tr>
				
				<!-- jQuery와 postcodify 를 로딩한다. -->
				<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
					$(function(){
						$("#postcodify_search_button").postcodifyPopUp();
					});
				</script>
				
				<tr>
					<td colspan="2" align="center">
						<button onclick="return validate();">가입하기</button>
						&nbsp;
						<button type="button" onclick="location.href='${contextPath}/home.kh'">홈으로</button>
					</td>
				</tr>
			</table>
		</form>
		<br>
		<br>
	</div>
	
	<script>
		function validate(){ // 유효성 검사
			
			if($("#idDuplicateCheck").val() == 0){
				alert("사용 가능한 아이디를 입력해주세요.");
				$("#userId").focus();
				return false;
			} else{
				return true;
			}
			
			
		}
	
	
	
	
		$("#userId").on("input", function(){
			
			var userId = $(this).val().trim();
			
			// 아이디가 4글자 미만인 경우
			if(userId.length < 4){
				$(".guide").hide();
				$("#idDuplicateCheck").val(0);
				
				return;
			}
			
			// 아이디 중복 검사(ajax)
			$.ajax({
				url : "dupid.kh",
				data : {id:userId},
				success:function(result){
					console.log(result);
					if(result == "true"){
						$(".guide.error").hide();
						$(".guide.ok").show();
						$("#idDuplicateCheck").val(1);
					}else{
						$(".guide.error").show();
						$(".guide.ok").hide();
						$("#idDuplicateCheck").val(0);
					}
					
				}
			});
			
		});
	
	</script>
	
</body>
</html>