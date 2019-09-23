<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두드림 회원가입</title>
<link rel="stylesheet" href="resources/css/insertMemberForm.css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="joinFormOuter" id="joinFormOuter">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4" id="joinform">
					<br>
					<h3 align="center">두드림 회원가입 <br>
	  					<small class="text-muted">회원가입 후 두드림 서비스가 이용가능합니다</small>
					</h3>
					<form action="insertMember.dr" method="POST" class="form-group"	align="center" id="insertForm">
						<table id="insert-table">
							<tr>
								<td>
									<input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="email을 입력해 주세요" required>
								</td>
								<td>
									<span style="display: none" id="alertMsg"></span>
								</td>
								<td>
									<button class="btn btn-warning" id="emailauthbtn">인증하기</button>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" class="form-control" id="userEmailAuthYn" name="userEmailAuthYn" placeholder="인증코드를 입력해주세요" required>

								</td>
								<td>
									<span style="display: none" id="emailAuthAlert"></span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="닉네임을 입력해주세요(20자이내)" maxlength="40" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해주세요" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control" id="userPwdCk" name="userPwdCk" placeholder="비밀번호를 다시 한번 입력해주세요" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="custom-control custom-checkbox my-1">
										<input type="checkbox" id="agree" name="agree" class="custom-control-input" required>
										<label class="custom-control-label" for="agree">
											두드림의 <a	href="#" id="agreement" class="emp blue" target="_blank">이용약관</a>에 동의합니다.
											<!-- href="agreement.dr" -->
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div>
										<button type="submit" class="btn btn-warning btn-lg btn-block mb-2" id="insertbtn">가입하기</button>
									</div>
								</td>
							</tr>
						</table>
						<br>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
	<br>
	
	<script>
			
	$(function(){
		
		var userEmail;
		var auth;
		
		$("#userEmail").blur(function() {
			userEmail = $("#userEmail").val().trim();
			console.log(userEmail);
			if(userEmail == ""){
				$("#alertMsg").show();
				$("#alertMsg").text("이메일을 입력해주세요.").css("color", "#8E44AD");
				("#userEmail").focus();
			}else{
				var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				if(! emailRegex.test(userEmail)){
					$("#alertMsg").show();
					$("#alertMsg").text("유효한 이메일 형식이 아닙니다.").css("color", "#8E44AD");
					("#userEmail").focus();
				}else{
					$("#alertMsg").show().text("이메일 인증을 진행해 주세요").css("color", "#F39C12");
				}
			}			
		});
	
	$("#emailauthbtn").on("click",function(){
		
		userEmail = $("#userEmail").val().trim();
		$.ajax({
			type : "post",
			url : "authEmail.dr",
			data : {userEmail : userEmail},			
			success: function(data) {
				if(data == "1"){
					$("#alertMsg").show().text("이미 가입된 이메일입니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmail").val("").focus();
				} else if(date == "0"){
					$("#alertMsg").show().text("이메일 전송에 실패하였습니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmail").val("").focus();
				} else if(data != "1" || date != "0"){
					$("#alertMsg").show().text("이메일 인증번호가 전송되었습니다. 인증번호를 입력해주세요.").css("color", "#F39C12");
					$("#userEmailAuthYn").focus();
					auth = data;
				}
			}
		});			
	});
	
	$("#userEmailAuthYn").blur(function() {
		
		if(auth.equals("userEmailAuth").val().trim()){
			$("#emailAuthAlert").show().text("인증이 완료되었습니다.").css("color, #F39C12");
		}else{
			$("#emailAuthAlert").show().text("인증에 실패하였습니다. 다시 입력해주세요.").css("color, #8E44AD");
			$("#userEmailAuthYn").val("").focus();
		}
	});
		
});

	
	
		
	
	</script>
	
	
</body>
</html>