<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="resources/css/changePwdForm.css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="changePwdForm" id="changePwdForm">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h3 align="center">
						비밀번호변경 <br> <small class="text-muted">새로운 비밀번호를 설정해주세요.</small>
					</h3>
					<form action="${contextPath}/home.dr" method="POST" class="form-group" align="center">
						<table id="changePwd-table">
							<tr>
								<td colspan="2"><input type="password" class="form-control"
									id="userPwd" name="userPwd" placeholder="새 비밀번호를 입력해주세요">
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="password" class="form-control"
									id="userPwdCk" name="userPwdCk"
									placeholder="비밀번호를 다시 한번 입력해주세요"></td>
							</tr>
							<tr>
								<td colspan="2">
									<div>
										<button type="submit" class="btn btn-warning btn-lg btn-block mb-2" id="changePwdbtn">비밀번호변경</button>
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