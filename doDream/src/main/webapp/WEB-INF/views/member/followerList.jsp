<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#followsub{
		text-decoration: none;
	}
	#followsub>a{
		color: #444;
	}
	#top {
 	position: fixed;
 	left: 60%;
  	bottom: 200px;
  	display: none;
	}
</style>
</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp"/>
	<br>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8" id="followsub">	
			<a class="" href="followList.dr?userNo=${loginUser.userNo}">내가 팔로잉한</a> ｜ <a class="" href="followerList.dr?userNo=${loginUser.userNo}">나를 팔로잉한</a>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<!-- 팔로워 리스트 출럭 -->
				<c:if test = "${fn:length(followerList) > 0}">
				<c:forEach var="followerList" items="${ followerList }">
				<div class="row my-2">
				<div class="col-md-3 text-right">
					<c:if test="${ empty followerList.followerPfImg }">
					<img alt="프로필사진" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="rounded-circle" style="width: 100px; height: 100px;"/>
					</c:if>
					<c:if test="${ !empty followerList.followerPfImg }">
					<img alt="프로필사진" src="resources/images/userProfileImage/${followerList.followerPfImg }" class="rounded-circle text-center" style="width: 100px; height: 100px;"/>
					</c:if>					
				</div>
				<div class="col-md-5 text-center" style="padding-top: 30px">
					<h6 class="text-left">
						<c:if test="${empty followerList.followerName }">
							설정된 닉네임이 없습니다.
						</c:if>
						<c:if test="${! empty followerList.followerName }">
							${followerList.followerName}
						</c:if>
						<img class="float-sm align-top" src="resources/images/alertBadge/star.png" style="width: 25px; height: 25px;"/>
					</h6>
					<div class="text-left">
						<c:if test="${empty followerList.followerSelf }">
							자기소개 글이 없습니다.
						</c:if>
						<c:if test="${! empty followerList.followerSelf }">
							${followerList.followerSelf }
						</c:if>
					</div>
				</div>
				<div class="col-md-4">					 
					<!-- <button type="button" class="btn btn-warning btn-sm" id="unfollow">언팔로우</button> -->
				</div>
				</div>
				<br>
				</c:forEach>
				</c:if>
				
				<c:if test= "${fn:length(followerList) eq 0}">
				<div class="row">
					<div class="col-md-12">
						<h4 class="text-center">리스트가 없습니다.</h4>			
					</div>
				</div>
				</c:if>
		</div>
		<div class="col-md-2">
			<a href="#"><img src="${contextPath}/resources/images/pageup.png" style="width: 25px; height: 25px" id="top" ></a>
		</div>
	</div>
</div>


	
	<script>
	$(document).scroll(function() {
		if ( $( this ).scrollTop() > 200 ) {
			$( '#top' ).fadeIn();
		} else {
			$( '#top' ).fadeOut();
		}
	} );
	
	$( '#top' ).click( function() {
		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
		return false;
	} );


	
	$(function() {
		console.log("${fn:length(followerList)}");
	});

</script>



</body>
</html>