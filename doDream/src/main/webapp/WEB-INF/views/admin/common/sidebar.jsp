<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="adminHome.dr">
			<div class="sidebar-brand-icon rotate-n-15" style="color: #FFCD01;">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">두 드 림</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link"
			href="adminHome.dr"> <i class="fas fa-fw fa-tachometer-alt"></i>
				<span>메 인</span></a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">관리</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown1" aria-expanded="true"
			aria-controls="dropDown1"> <i class="fas fa-fw fa-cog"></i> <span>회원
					관리 </span>
		</a>
			<div id="dropDown1" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="adminMlist.dr"><p>〉 일반회원 관리</p></a>
					<a class="collapse-item" href="adminBlist.dr"><p>〉 블랙리스트 관리</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown2" aria-expanded="true"
			aria-controls="dropDown2"> <i class="fas fa-fw fa-cog"></i> <span>프로젝트
					관리 </span>
		</a>
			<div id="dropDown2" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="adminFlist1.dr"><p>〉 심사 대기 중 프로젝트</p></a>
					<a class="collapse-item" href="adminFlist2.dr"><p>〉 심사 완료된 프로젝트</p></a> <a
						class="collapse-item" href="adminFlist3.dr"><p>〉 오픈 중인 프로젝트</p></a> <a
						class="collapse-item" href="adminFlist4.dr"><p>〉 마감된 프로젝트</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown3" aria-expanded="true"
			aria-controls="dropDown3"> <i class="fas fa-fw fa-cog"></i> <span>결제
					관리</span>
		</a>
			<div id="dropDown3" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="adminPlist1.dr"><p>〉 주문 예약
							현황</p></a> <a class="collapse-item" href="adminPlist2.dr"><p>〉 결제
							완료 현황</p></a> <a class="collapse-item" href="adminPlist3.dr"><p>〉
							취소 및 환불 현황</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown4" aria-expanded="true"
			aria-controls="dropDown4"> <i class="fas fa-fw fa-cog"></i> <span>신고
					관리</span>
		</a>
			<div id="dropDown4" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="adminSlist.dr"><p>〉 신고 접수 현황</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown5" aria-expanded="true"
			aria-controls="dropDown5"> <i class="fas fa-fw fa-cog"></i> <span>게시판
					관리</span>
		</a>
			<div id="dropDown5" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="#"><p>〉 공지사항</p></a> <a
						class="collapse-item" href="#"><p>〉 프로젝트 후기</p></a> <a
						class="collapse-item" href="#"><p>〉 댓글 관리</p></a>
				</div>
			</div></li>


		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Addons</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapsePages"
			aria-expanded="true" aria-controls="collapsePages"> <i
				class="fas fa-fw fa-folder"></i> <span>Pages</span>
		</a>
			<div id="collapsePages" class="collapse"
				aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<p class="collapse-header">Login Screens:</p>
					<a class="collapse-item" href="login.html">Login</a> <a
						class="collapse-item" href="register.html">Register</a> <a
						class="collapse-item" href="forgot-password.html">Forgot
						Password</a>
					<div class="collapse-divider"></div>
					<p class="collapse-header">Other Pages:</p>
					<a class="collapse-item" href="404.html">404 Page</a> <a
						class="collapse-item" href="blank.html">Blank Page</a>
				</div>
			</div></li>

		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
		</a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href="#"> <i
				class="fas fa-fw fa-table"></i> <span>Tables</span></a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->

</body>
</html>