<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp"/>	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="myfundingsub">	
				<a class="" href="myFundingList.dr?userNo=${loginUser.userNo}">내가 참여한</a> ｜ <a class="" href="">내가 오픈한</a> ｜ <a class="" href="">내가 관심있는</a>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>