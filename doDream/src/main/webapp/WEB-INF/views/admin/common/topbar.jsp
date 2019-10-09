<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- include summernote css/js -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
	#alarmarea a:not(#showall){
		pointer-events: none;
		cursor: default;
	}
</style>
</head>
<body>

	<!-- Topbar -->
	<nav
		class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

		<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop"
			class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>

		<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">

			<!-- Nav Item - Search Dropdown (Visible Only XS) -->
			<li class="nav-item dropdown no-arrow d-sm-none"><a
				class="nav-link dropdown-toggle" href="#" id="searchDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
			</a> <!-- Dropdown - Messages -->
				<div
					class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
					aria-labelledby="searchDropdown">
					<form class="form-inline mr-auto w-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
				</div></li>

			<!-- Nav Item - Alerts -->
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
					<span class="badge badge-danger badge-counter" id="allCountAlarm"></span>
			</a> <!-- Dropdown - Alerts -->
				<div
					class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="alertsDropdown" id="alarmarea">
					
					<!-- 알람 ajax 처리 들어가는 부분 -->
					
				</div></li>


			<div class="topbar-divider d-none d-sm-block"></div>
			
			<!-- Nav Item - User Information -->
			<li class="nav-item dropdown no-arrow">
				<a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">
				<span id="loginMenuText" class="mr-2 d-none d-lg-inline text-gray-600 small">
					<!-- 로그인 시 출력 -->
					<c:if test="${ !empty sessionScope.loginUser }">
						<h6><c:out value="'${ loginUser.userNickname }' 관리자님 환영합니다!"/></h6>
					</c:if>
				</span>
					<div style="display: inline-block;">
					<c:if test="${empty loginUser.userProfileImage}">
					<i class="material-icons">account_circle</i>
					</c:if>
					<c:if test="${! empty loginUser.userProfileImage }">
						<img alt="프로필사진" src="resources/images/userProfileImage/${loginUser.userProfileImage}" class="img-profile rounded-circle" style="width: 24px; height: 24px;" id="userProfileImage_sm" name="userProfileImage"/>
					</c:if>
					</div>
					</a>
			 <!-- Dropdown - User Information -->
				<div
					class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#"> <i
						class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
					</a> <a class="dropdown-item" href="#"> <i
						class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
					</a> <a class="dropdown-item" href="#"> <i
						class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
						Log
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal"> <i
						class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						Logout
					</a>
				</div></li>

		</ul>

	</nav>
	<!-- End of Topbar -->
	<script>
		$(document).on("click","#alertsDropdown",function(){
			$.ajax({
				url : "getAlarmCount.dr",
				success: function(result){
					var count1 = result[0];
					var count2 = result[1];
					var count3 = result[2];
					$("#alarmarea").empty();
					var input = '<p class="dropdown-header" style="font-size: medium;">알 림 창</p>';
					if(count1>0){
						input += '<a class="dropdown-item d-flex align-items-center" href="#"><div class="mr-3"><div class="icon-circle bg-primary"><i class="fas fa-file-alt text-white"></i></div></div><div>';
						input += '<div class="small text-gray-500"></div>미확인  알림 : <br> 금일 마감하는 프로젝트가 '+ count1 +'개 있습니다.</div></a>';
					} 
					if(count2>0){
						input += '<a class="dropdown-item d-flex align-items-center" href="#"><div class="mr-3"><div class="icon-circle bg-warning"><i class="fas fa-exclamation-triangle text-white"></i></div></div><div>';
						input += '<div class="small text-gray-500"></div>미확인 알림 : <br> 신고사항이 '+ count2 +'개 있습니다.</div></a>';
					}
					if(count3>0){
						input += '<a class="dropdown-item d-flex align-items-center" href="#"><div class="mr-3"><div class="icon-circle bg-success"><i class="fas fa-donate text-white"></i></div></div><div>';
						input += '<div class="small text-gray-500"></div>미확인 알림 : <br> 성공한 프로젝트가 '+ count3 +'개 있습니다.</div></a>';
					}
					input += '<a class="dropdown-item text-center small text-gray-500" href="goAlarmList.dr" id="showall">모든 알림 보기</a>';
					$("#alarmarea").append(input);
				}
			});
		});
		
		$.ajax({
			url: "allCountAlarm.dr",
			success: function(result){
				console.log(result);
				$("#allCountAlarm").prop("style","font-size:13px").text(result+ "+");
			} 
		});		  	
			
		
		
		
	</script>

</body>
</html>