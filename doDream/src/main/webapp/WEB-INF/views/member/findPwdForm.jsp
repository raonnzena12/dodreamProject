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
					<form action="changePwd.dr" method="POST" class="form-group" align="center">
						<table id="findPwd-table">
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
									<div>
										<button type="submit" class="btn btn-warning btn-lg btn-block mb-2" id="clearPwdbtn">비밀번호초기화</button>
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
</body>
</html>