<%@page import="com.dodream.spring.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ${contextPath} 선언부입니다  -->
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
<!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 부트스트랩4.3 코어 삽입부입니다. -->
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- google웹폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- google웹아이콘 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- 메뉴바 CSS -->
<link rel="stylesheet" href="resources/css/menubar.css">
<!-- 메뉴바 JS -->
<script src="resources/js/menubar.js"></script>
<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

	<!-- 주소 api -->
	<script src="//cdn.poesis.kr/post/search.min.js"></script>
	<!-- 카카오 로그인 -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: 'Noto Sans KR', sans-serif;
		color: #444;
		text-decoration: none;
		/* user-select: none; */
	}

</style>
</head>
<body>
	<section id="mainMenuBar">
	<div class="mainLogoArea" id="mainLogoArea"><a href="main.dr"><img src="${contextPath}/resources/images/DoDream-2e.png" alt="두드림" id="mainLogo"></a></div>
	<nav class="navbar navbar-expand-lg navbar-light" id="naviBar">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
			<li class="nav-item dropdown active">
				<a class="nav-link dropdown" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="material-icons" id="menuIcon">menu</i>
					<span id="menuText">메뉴</span>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="main.dr">홈</a>
					<a class="dropdown-item" href="category.dr">카테고리</a>
					<!-- 카테고리 소분류 입력할것 -->
					<a class="dropdown-item submenu" href="category.dr?cate=music"> - 음악</a>
					<a class="dropdown-item submenu" href="category.dr?cate=movie"> - 영화</a>
					<a class="dropdown-item submenu" href="category.dr?cate=play"> - 연극</a>
					<a class="dropdown-item submenu" href="category.dr?cate=art"> - 미술</a>
					<a class="dropdown-item submenu" href="category.dr?cate=etc"> - 기타</a>
				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="insertFundForm.dr">펀딩 등록하기</a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown" href="#" id="nbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span id="">링크페이지</span>
				</a>
				<div class="dropdown-menu" aria-labelledby="nbarDropdownMenuLink">
					<a href="https://ovenapp.io/view/6PkJ9GJEJ4iv9eqJ7gJz2jDzuLfgXvIw/" target="_blank" class="dropdown-item">와이어프레임</a>
					<a href="https://www.wadiz.kr/web/wreward/main?keyword=&endYn=ALL&order=recommend" target="_blank" class="dropdown-item">와디즈</a>
					<a href="https://tumblbug.com/" target="_blank" class="dropdown-item">텀블벅</a>
					<a href="https://opentutorials.org/course/3424" target="_blank" class="dropdown-item">구글로그인 API</a>
					<a href="https://www.erdcloud.com/d/uytgmtPeSSvxrS49E" target="_blank" class="dropdown-item">erdCloud</a>
					<a href="https://www.cmsfactory.net/10035" target="_blank" class="dropdown-item">구글 웹 아이콘</a>
					<a href="http://bootstrapk.com/" target="_blank" class="dropdown-item">부트스트랩</a>
					<a href="https://getbootstrap.com/" target="_blank" class="dropdown-item">BootStrap</a>
					<a href="https://sweetalert2.github.io/" target="_blank" class="dropdown-item">sweetalert2</a>
					<a href="https://www.layoutit.com/en" target="_blank" class="dropdown-item">layoutit</a>
					<hr>
					<div class="color" style="background-color:#FFCD01; text-align:center;">#FFCD01</div>
					<div class="color" style="background-color:#F39C12; text-align:center; color:#fff;">#F39C12</div>
					<div class="color" style="background-color:#8E44AD; text-align:center; color:#fff;">#8E44AD</div>
				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="kakaotest.dr">(temp) 펀딩 결제 INFO</a>
			</li>
			</ul>
			<ul class="navbar-nav ml-auto mr-3">
				<li>
					<!-- FORM ACTION 지정할것 -->
					<form class="form-inline" id="titleSearchForm" action="category.dr" method="GET">
						<input class="mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="titleSearch" name="keyword">
						<i class="material-icons" id="titleSearchSubmit">search</i>
					</form>
				</li>
			</ul>
		</div>
		<div class="float-right navbar-expand">
			<a class="" href="#" id="loginMenuLink">
				<span id="loginMenuText">
					<!-- 비로그인 시 출력 -->
					<c:if test="${ empty sessionScope.loginUser }">
						로그인 / 회원가입
					</c:if>  
					<!-- 로그인 시 출력 -->
					<c:if test="${ !empty sessionScope.loginUser }">
						<c:out value="${ loginUser.userNickname }님 환영합니다!"/>
					</c:if>
				</span>
				<div style="display: inline-block;">
					<c:choose>
					<c:when test="${empty loginUser.userProfileImage}">
					<i class="material-icons">account_circle</i>
					</c:when>
					<c:when test= "${fn:contains(loginUser.userProfileImage,'http://')}">
					<img alt="프로필사진" src="${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 60px; height: 60px;"/>
					</c:when>
					<c:otherwise>
					<img alt="프로필사진" src="resources/images/userProfileImage/${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 60px; height: 60px;"/>
					</c:otherwise>
					</c:choose>
				</div>
			</a>
			<div class="loginmenu" id="veil"></div>
			<!-- 비로그인 시 메뉴창 출력 -->
			<c:if test="${ empty sessionScope.loginUser }">
			<div id="login-menu" class="loginmenu">
				<div style="text-align:center;" class="mb-2"> LOGIN </div>
				<form action="login.dr" method="POST" id="loginFrm">
					<input type="hidden" value="prevPage" name="prevPage" id="prevPage">
					<table id="login-table" class="form-group">
						<tr>
							<td><input class="form-control" type="email" name="userEmail" id="userEmail" placeholder="이메일 주소" autocomplete="off" required></td>
						</tr>
						<tr>
							<td><input class="form-control" type="password" name="userPwd" id="userPwd" placeholder="비밀번호" required></td>
						</tr>
						<tr>
							<td class="loginmenuText custom-control custom-checkbox my-1">
								<input type="checkbox" class="custom-control-input" id="useCookie" name="useCookie"><label class="custom-control-label" for="useCookie">자동로그인</label>
								<a href="findPwd.dr" class="gray float-right">비밀번호 찾기</a>
							</td>
						</tr>
						<tr>
							<td><button type="button" class="btn btn-warning btn-block mb-2" id="loginBtn" onclick="beforeLogin()">L O G I N</button></td>
						</tr>
						<tr>
						<!-- 소셜 로그인 아이콘 들어가는 부분 -->
							<td class="text-center naverKakaoArea">
								<div>
								<div id="naver_id_login" class="text-left mx-2" style="display: inline-block;">
								</div>
								<a href="javascript:loginWithKakao()"><img src="resources/images/kakao_sns_icon.png" data-toggle="tooltip" data-placement="left" title="KAKAO ID로 로그인" class="mx-2"></a>
								<img src="resources/images/faceB_sns_icon.png" data-toggle="tooltip" data-placement="left" title="FACEBOOK ID로 로그인" class="mx-2">
								<!-- <img src="resources/images/naver_sns_icon.png" data-toggle="tooltip" data-placement="left" title="NAVER ID로 로그인" class="mx-2"> -->
								</div>
							</td>
						</tr>
						<tr>
							<td class="loginmenuText text-center">
								<hr>회원이 아니신가요?<br> <a href="insertForm.dr" class="emp blue">가입하기</a>
							</td> 
						</tr>
					</table>
				</form>
			</div>
		</c:if>
		<!-- 로그인 시 메뉴창 출력 -->
		<c:if test="${ !empty sessionScope.loginUser }">
					<div id="mypageMenu" class="dropdown-menu dropdown-menu-right loginmenu" aria-labelledby="loginMenuLink">
						<div class="container-fluid" id="myinfoOuter">
							<div class="row">
								<div class="hr-sect">MY INFO</div>
								<div class="col-md-12 text-center">
									<span class="text-left">${ loginUser.userNickname }님</span>
									<div style="display: inline-block;">
									<c:choose>
									<c:when test="${empty loginUser.userProfileImage}">
									<img alt="프로필사진" src="resources/images/talent.png" class="rounded-circle float-sm ml-3" style="width: 50px; height: 50px;"/>
									</c:when>
									<c:when test= "${fn:contains(loginUser.userProfileImage,'http://')}">
									<img alt="프로필사진" src="${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 50px; height: 50px;"/>
									</c:when>
									<c:otherwise>
									<img alt="프로필사진" src="resources/images/userProfileImage/${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 50px; height: 50px;"/>
									</c:otherwise>
									</c:choose>
									</div>
								</div>
							</div>
						</div>
							<div class="row">
								<div class="hr-sect">SUB MENU</div>
								<div class="col-md-12" id="myinfosub">
								
									<div class="row text-center">
										<div class="col-md-4">
											<i class="material-icons">supervisor_account</i>
											<br>
											<a href="followList.dr?userNo=${loginUser.userNo}">팔로잉</a>
										</div>
										<div class="col-md-4">
											<i class="material-icons">favorite</i>
											<br>
											<a href="myLikePRJList.dr?userNo=${loginUser.userNo}">찜</a> <!-- 좋아요한 프로젝트목록 -->
										</div>
										<div class="col-md-4">
											<i class="material-icons">folder</i>
											<br>
											<a href="myFundingList.dr?userNo=${loginUser.userNo}">펀딩로그</a> <!-- 내가 참여한 프로젝트 -->
										</div>
									</div>
								</div>
							</div>
							<div class="row" id="myinfobtn">
								<div class="col-md-12 text-center">
								<c:url var="adminPage" value="adminHome.dr"/>
								<c:url var="logout" value="logout.dr"/>
								<button class="btn btn-sm mb-2" id="mypagebtn"onclick="location.href='myFundingList.dr?userNo=${loginUser.userNo}'">My Page</button>
								&nbsp; &nbsp;
								<%-- <button class="btn btn-sm mb-2" id="logoutbtn" onclick="location.href='${logout}'">로그아웃</button> --%>
								<button class="btn btn-sm mb-2" id="logoutbtn"">로그아웃</button>
								<c:if test="${loginUser.userAdminYn eq 'Y'}">
									&nbsp; &nbsp;
									<button class="btn btn-sm mb-2" id="goAdmin"onclick="location.href='${adminPage}'">관리자 페이지로 이동</button>
								</c:if>
								</div>	
							</div>
						</div>
				</c:if>	   
	</nav>
	<!-- <a id="top_btn"><img src="resources/images/up_button_p.png" alt="탑 버튼"></a> -->
	</section>
	<script>
		
		/* 로그인폼 submit */
		function beforeLogin(){
			var frm = $("#loginFrm");
			var path = window.location.pathname;
			var arr = path.split("/");
			$("#prevPage").val(arr[2]);
			frm.submit();
		};
		
		
		$("#loginBtn").click(function() {
			var useCookie = $("input[name=useCookie]").is(":checked");
			console.log(useCookie); 
			/* true */
		});
		
		/* 카카오 로그인 */
		function loginWithKakao() {
			
			Kakao.init('ff3dadde4ab297ea0f244c294c45e600')			
			Kakao.Auth.loginForm({
				success: function(authObj) {
					Kakao.API.request({
						url:"/v2/user/me",
						success: function(res){
							/* var userEmail = res.kaccount_email; */
							var info = res;
							console.log(res);
							console.log(res.kakao_account.email);
							
							var userEmail = res.kakao_account.email; //email
							var userPwd = res.id;
							var userNickname = res.properties.nickname;
							var userProfileImage = res.properties.profile_image;
							
							console.log(userEmail+"/"+userNickname+"/"+userProfileImage+"/"+userPwd);
							//userId+userNickname -> userNickname에 insert
							$.ajax({
								url:"checkEmail.dr", //회원가입여부 확인
								data: {userEmail:userEmail},
								type: "post",
								success: function(result) {
									console.log(result);
									if(result == "0"){//email이 없을경우
										location.href="insertSNS.dr?userEmail="+userEmail+"&userNickname="+userNickname+"&userProfileImage="+userProfileImage+"&userPwd="+userPwd;
									}else if(result == "1"){
										snsLoginFrm("login.dr", userEmail, userPwd);
										/* location.href="login.dr?userEmail="+userEmail+"&userPwd="+userPwd; */
									}
								}
							});
						},
						fail: function(err){
	                           console.log(err);
						}
					});
				}
			});
		};
		
		/* SNS로그인 시 가상 로그인 폼 생성 후 submit */
		function snsLoginFrm(url, userEmail, userPwd){
			var form = document.createElement("form");
			var param = new Array();
			var input = new Array();

			var path = window.location.pathname;
			var arr = path.split("/");
			var prevPage = arr[2];

			
			form.action = url;
			form.method = "post";
			
			param.push(["userEmail",userEmail]);
			param.push(["userPwd",userPwd]);
			param.push(["prevPage",prevPage]);
			
			for(var i=0; i<param.length; i++){
				input[i] = document.createElement("input");
				input[i].setAttribute("type", "hidden");
	            input[i].setAttribute('name', param[i][0]);
	            input[i].setAttribute("value", param[i][1]);
	            form.appendChild(input[i]);
			}
			document.body.appendChild(form);
						
			form.submit();
		}
	
		/* 쿠키생성 */
		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			
			var cookieValue =  escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}
		
		/* 쿠키삭제 */
		function deleteCookie(cookieName) {
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate()- 1);
			document.cookie = cookieName + "=" +"; expires=" + expireDate.toGMTString();
		}
		
		/* 쿠키 얻기 */
		function getCookie(cookieName) {
			cookieName = cookieName + '=';
	        var cookieData = document.cookie;
	        var start = cookieData.indexOf(cookieName);
	        var cookieValue = '';
	        if(start != -1){
	            start += cookieName.length;
	            var end = cookieData.indexOf(';', start);
	            if(end == -1)end = cookieData.length;
	            cookieValue = cookieData.substring(start, end);
	        }
	        return unescape(cookieValue);
		}
		
		/* 쿠키저장 */
		$(document).ready(function() {
			
			if(getCookie("userEmail") && getCookie("userPwd")){
				$("#userEmail").val(getCookie("userEmail"));
				$("#userPwd").val(getCookie("userPwd"));
				
				var frm = $("#loginFrm");
				var path = window.location.pathname;
				var arr = path.split("/");
				$("#prevPage").val(arr[2]);
				
				$("#loginFrm").submit();
			}
						
			var userEmail = getCookie("userEmail");
			//$("#userEmail").val(userEmail);
			
			var userPwd = getCookie("userPwd");
			//$("#userPwd").val(userPwd);
			
			$("#useCookie").change(function() {
				if($("#useCookie").is(":checked", true)){ //자동로그인 체크박스 선택 할때
					var userEmail = $("#userEmail").val();
					setCookie("userEmail", userEmail, 15); //15일저장
					var userPwd = $("#userPwd").val();
					setCookie("userPwd", userPwd, 15); //15일저장

				}else{
					deleteCookie("userEmail");
					deleteCookie("userPwd");
				}	
			
			});
			
			
		});
		
		$("#logoutbtn").click(function(){
			deleteCookie("userEmail");
			deleteCookie("userPwd");
			
			location.href='${logout}';
		});
		

	</script>
	

	<%@ include file="footer.jsp" %>
</body>
</html>