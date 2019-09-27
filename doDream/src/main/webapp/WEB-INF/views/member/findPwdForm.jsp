<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="resources/css/findPwdForm.css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="findPwdForm" id="findPwdForm">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h3 align="center">비밀번호찾기 <br>
	  					<small class="text-muted">비밀번호를 잊으셨나요?</small>
					</h3>
					<form action="changePwd.dr" method="POST" class="form-group" align="center" id="findPwdForm">
					<!-- class="form-control" -->
						<table id="findPwd-table">
							<tr>
								<td>
									<input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="email을 입력해 주세요">
								</td>
								<td>
									<button class="btn btn-warning" id="emailauthbtn" type="button">인증하기</button>
								</td>
							</tr>
							<tr>
								<td colspan="2"><span id="alertmsg" style="display: none"></span></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control"  id="userEmailAuthYn" name="userEmailAuthYn" placeholder="인증코드를 입력해주세요" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div>
										<button type="submit" class="btn btn-warning btn-lg btn-block mb-2" >비밀번호초기화</button>
										
									</div>
								</td>
							</tr>							
						</table>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
	
	<script>
		$(function() {
			
			var userEmail;
			var auth;
			
			$("#userEmail").blur(function() {
				userEmail = $("#userEmail").val().trim();
				console.log(userEmail);
				$.ajax({
					type: "post",
					url: "checkEmail.dr",
					data : {userEmail : userEmail},
					/* 가입된 이메일 확인 */
					success: function(result) {
						console.log(result);
						if(result == "1"){
							$("#alertmsg").show().text("가입된 이메일입니다.").css("color", "#8E44AD");
						} else if(result == "0"){
							$("#alertmsg").show().text("정보를 찾지 못했습니다.").css("color", "#8E44AD");
							$("#userEmail").val("").focus();
						}
					}
				});
			});
			
			$("#emailauthbtn").click(function(){
				userEmail = $("#userEmail").val().trim();
				$.ajax({
					type:"post",
					url:"sendAuth.dr",
					data:{userEmail : userEmail},
					success: function(data){
						if(data == "0" && data == "1"){
							$("#alertmsg").show().text("이메일 인증에 실패하였습니다.").css("color","#8E44AD");
						}else{
							$("#alertmsg").show().text("인증번호가 전송되었습니다.").css("color","#F39C12");
							$("userEmailAuthYn").focus();
							auth = data;
						}
					}
				});
			});
			
			$("#userEmailAuthYn").blur(function(){
				var emailAuth =	$("#userEmailAuthYn").val().trim();
				if(auth == emailAuth){
					$("#alertmsg").show().text("인증이 완료되었습니다.비밀번호 초기화를 진행해주세요.").css("color","#F39C12");
				}else{
					$("#alertmsg").show().text("인증에 실패하였습니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmailAuthYn").val("").focus();
					return false;
				}
			});
			
			
			
			
		})
	</script>
	
</body>
</html>