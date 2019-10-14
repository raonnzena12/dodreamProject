<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- <link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"/>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"/> -->
	<link rel="stylesheet" href="resources/css/mypageHeader.css">


</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
			<%-- <c:if test="${ !empty loginUser }"> --%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<div></div>			
		<div class="row">
			<c:if test="${ ! empty sessionScope.loginUser }">
			<div class="col-md-4"></div>
			<div class="col-md-4 myPagehead">
				<h4 class="mb-3">My Page</h4>
				<h4 class="text-left">
						${ loginUser.userNickname }님 환영합니다.
					<img src="" class="rounded-circle float-sm" />
				</h4>
					<p class="mb-0" id="userSelf">${ loginUser.userSelf }</p>
				<div id="followOuter">
					<p class="text-left">팔로워 <span id="follower"></span>명 &nbsp; 팔로잉 <span id="follow"></span>명</p>
				</div>
			</div>
			</c:if>
			<div class="col-md-4">
				<div id="pfImgOuter">
					<a href="myInfo.dr">
					<c:choose>
					<c:when test="${empty loginUser.userProfileImage}">
					<img alt="프로필사진" src="resources/images/talent.png" class="rounded-circle float-sm ml-3" style="width: 150px; height: 150px;"/>
					</c:when>
					<c:when test= "${fn:contains(loginUser.userProfileImage,'http://')}">
					<img alt="프로필사진" src="${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
					</c:when>
					<c:otherwise>
					<img alt="프로필사진" src="resources/images/userProfileImage/${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
					</c:otherwise>
					</c:choose>
					<img src="resources/images/settings_icon.png" class="float-sm align-top" id="setting" style="width: 35px;"/>
					</a>
				</div>
			</div>
		</div>
		<div style="height: 20px;"></div>
		<div class="row" id="navOuter">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link" id="menu1" href="myFundingList.dr?userNo=${loginUser.userNo}">프로젝트로그</a></li>
							<li class="nav-item"><a class="nav-link" id="menu2" href="followList.dr?userNo=${loginUser.userNo}"><i class="material-icons">favorite</i></a></li>
							<li class="nav-item"><a class="nav-link" id="menu3" href="myReportList.dr?userNo=${loginUser.userNo}">나의신고내역</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link" id="menu4" href="myReserveList.dr?userNo=${loginUser.userNo}">프로젝트결제내역</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- <div style="height: 2000px;"></div> -->
	</div>
	<%-- </c:if> --%>
	<script>
		$(document).ready(function(){
			$.ajax({
				url: "countFollow.dr",
				data: {userNo: ${loginUser.userNo}},
				success: function(result){
					if(result != 0){
						$("#follow").text(result);
					}else{
						$("#follow").text(0);
					}
				}
			});
			
			$.ajax({
				url:"countFollower.dr",
				data: {userNo: ${loginUser.userNo}},
				success: function(result){
					if(result != 0){
						$("#follower").text(result);
					}else{
						$("#follower").text(0);
					}
				}
			});
		});	
		$(function(){
			var menu = ${menu} + "";
			if(menu==4){
				$("#menu4").addClass("active");
			}else if(menu==3){
				$("#menu3").addClass("active");
			}else if(menu==2){
				$("#menu2>i").addClass("active");
			}else{
				$("#menu1").addClass("active");
			}
		});
		
	</script>
</body>
</html>