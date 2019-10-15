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
	
	#followsub a.active{
		color: #8E44AD;
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
		<c:choose>	
		<c:when test="${ !empty social }">
		<a class="" id="sub1" href="socialfollowList.dr?userNo=${social.userNo}&page=1">아티스트가 팔로잉한</a> ｜ <a class="" id="sub2" href="socialfollowList.dr?userNo=${social.userNo}&page=2">아티스트를 팔로잉한</a>
		</c:when>
		<c:otherwise>
			<a class="" id="sub1" href="followList.dr?userNo=${loginUser.userNo}">내가 팔로잉한</a> ｜ <a class="" id="sub2" href="followerList.dr?userNo=${loginUser.userNo}">나를 팔로잉한</a>
		</c:otherwise>
		</c:choose>
		</div>
		<div class="col-md-2"></div>
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
                    <c:choose>
					<c:when test="${ empty followerList.followerPfImg }">
					<img alt="프로필사진" src="resources/images/talent.png" class="rounded-circle float-sm ml-3" style="width: 100px; height: 100px;"/>
					</c:when>
					<c:when test= "${fn:contains(followerList.followerPfImg,'http://')}">
					<img alt="프로필사진" src="${followerList.followerPfImg}" class="rounded-circle float-sm" style="width: 100px; height: 100px;"/>
					</c:when>
					<c:otherwise>
					<img alt="프로필사진" src="resources/images/userProfileImage/${followerList.followerPfImg}" class="rounded-circle float-sm" style="width: 100px; height: 100px;"/>
					</c:otherwise>
					</c:choose>				
				</div>
				<div class="col-md-5 text-center" style="padding-top: 30px">
					<h6 class="text-left">
						<c:if test="${empty followerList.followerName }">
							설정된 닉네임이 없습니다.
						</c:if>
						<c:if test="${! empty followerList.followerName }">
							${followerList.followerName}
						</c:if>
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
		</div>
	</div>
</div>


	
	<script>

	$(function() {
		console.log("${fn:length(followerList)}");
	});
	
	$(function(){
		var menu = ${menu} + "";
		
		if(menu ==2){
			$("#menu2>i").addClass("active");
		}
		
		var sub = ${sub} + "";
		if(sub==2){
			$("#sub2").addClass("active");
		}else{
			$("#sub1").addClass("active");
		}
	});
	
	

</script>



</body>
</html>