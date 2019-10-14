<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/mypageHeader.css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<div></div>			
		<div class="row">
			<c:if test = "${! empty social}">
			<div class="col-md-4"></div>
			<div class="col-md-4 myPagehead">
				<h4 class="text-left">
						${ social.userNickname }님의 페이지입니다.
					<img src="" class="rounded-circle float-sm" />
				</h4>
					<p class="mb-0" id="userSelf">${ social.userSelf }</p>
				<div id="followOuter">
					<p class="text-left">팔로워 <span id="follower"></span>명 &nbsp; 팔로잉 <span id="follow"></span>명</p>
				</div>
			</div>
			<div class="col-md-4">
				<div id="pfImgOuter">
					<a href="myInfo.dr">
					<c:choose>
					<c:when test="${empty social.userProfileImage}">
					<img alt="프로필사진" src="resources/images/talent.png" class="rounded-circle float-sm ml-3" style="width: 150px; height: 150px;"/>
					</c:when>
					<c:when test= "${fn:contains(social.userProfileImage,'http://')}">
					<img alt="프로필사진" src="${social.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
					</c:when>
					<c:otherwise>
					<img alt="프로필사진" src="resources/images/userProfileImage/${social.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
					</c:otherwise>
					</c:choose>
					</a>
				</div>
			</div>
			</c:if>
		</div>
		<div style="height: 20px;"></div>
		<div class="row" id="navOuter">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link" id="menu1" href="myFundingList.dr?pWriter=${social.pWriter}">프로젝트로그</a></li>
							<li class="nav-item"><a class="nav-link" id="menu2" href="followList.dr?pWriter=${social.pWriter}"><i class="material-icons">favorite</i></a></li>
						</ul>
					</div>
					<div class="col-md-4">
					</div>
				</div>
			</div>
		</div>
		<!-- <div style="height: 2000px;"></div> -->
	</div>
	<%-- </c:if> --%>
</body>
</html>