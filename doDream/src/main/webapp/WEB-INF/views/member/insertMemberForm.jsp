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
					<form action="insertMember.dr" method="POST" class="form-group"	align="center">
						<table id="insert-table">
							<tr>
								<td>
									<input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="email을 입력해 주세요">
								</td>
								<td>
									<button class="btn btn-warning" id="emailauthbtn">인증하기</button>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" class="form-control" id="userEmailAuthYn" name="userEmailAuthYn" placeholder="인증코드를 입력해주세요">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="닉네임을 입력해주세요(20자이내)" maxlength="40">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해주세요">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control" id="userPwdCk" name="userPwdCk" placeholder="비밀번호를 다시 한번 입력해주세요">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="custom-control custom-checkbox my-1">
										<input type="checkbox" id="agree" name="agree" class="custom-control-input">
										<label class="custom-control-label" for="agree">
											두드림의 <a	href="agreement.dr" id="agreement" class="emp blue">이용약관</a>에 동의합니다.
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
</body>
</html>