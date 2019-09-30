<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp"/>
	<br>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<ul class="nav nav-tabs" style="height: 45px;">
				<li class="nav-item">
					<a class="nav-link active" href="followList.dr?userNo=${loginUser.userNo}">내가 팔로잉한</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="followerList.dr?userNo=${loginUser.userNo}">나를 팔로잉한</a>
				</li>
			</ul>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<!-- 팔로잉 리스트 출럭 -->
				<c:forEach var="fList" items="${ fList }">
				<div class="row my-2">
					<c:if test="${empty fList }">
						리스트가 없습니다.
					</c:if>
				<div class="col-md-3 text-right">
					<c:if test="${ empty fList.followPfImg }">
					<img alt="프로필사진" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="rounded-circle" style="width: 100px; height: 100px;"/>
					</c:if>
					<c:if test="${ !empty fList.followPfImg }">
					<img alt="프로필사진" src="resources/images/userProfileImage/${fList.followPfImg }" class="rounded-circle text-center" style="width: 100px; height: 100px;"/>
					</c:if>					
				</div>
				<div class="col-md-6 text-center" style="padding-top: 40px">
					<h6 class="text-left">
						<c:if test="${empty fList.followName }">
							설정된 닉네임이 없습니다.
						</c:if>
						<c:if test="${! empty fList.followName }">
						${fList.followName}
						</c:if>
						<img class="float-sm align-top" src="resources/images/alertBadge/star.png" style="width: 25px; height: 25px;"/>
					</h6>
				</div>
				<div class="col-md-3" style="padding-top: 40px">					 
					<button type="button" class="btn btn-warning btn-sm" id="unfollow">언팔로우</button>
				</div>
				</div>
				<br>
				</c:forEach>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<script>
	$("#unfollow").click(function() {
		confirm("언팔로우하시겠습니까?");
	});
</script>


</body>
</html>