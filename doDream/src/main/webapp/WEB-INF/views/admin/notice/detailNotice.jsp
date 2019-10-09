<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>공지사항 상세</title>

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<style>

.collapse-item p{
	color: gray;
	font-weight: bold;
} 
.rewardBtn {
	width: auto;
	height: auto;
	background-color: #F39C12;
	border: #F39C12;
	font-size: 15px;
}

.rewardBtn:hover {
	background-color: #8E44AD;
	cursor: pointer;
}
.sorting{
	width: auto;
}
#tb{
	border-top: 3px solid lightgray; 
	border-bottom: 3px solid lightgray; 
}
#tb td, #tb th{
	border-bottom: 1px solid lightgray;
}
.th{
	border-right: 1px solid lightgray;
  }
#tb th{
	background: #f8f9fc;
}

</style>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="../common/sidebar.jsp"/>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<%@include file="../common/topbar.jsp" %>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 공지사항 상세</h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<c:url var="goUpdateNotice" value="goUpdateNotice.dr">
								<c:param name="nNo" value="${ notice.nNo }"/>
							</c:url>
							<c:url var="removeNotice" value="removeNotice.dr">
								<c:param name="nNo" value="${ notice.nNo }"/>
							</c:url>
							<c:url var="adminNoticeList" value="adminNoticeList.dr">
							</c:url>
							<span class="float-right">
								<button type="button" class="btn btn-primary btn-lg btn-inline rewardBtn" style="background: #8E44AD; border: #8E44AD;"
								onclick="location.href='${goUpdateNotice}'">수정하기</button>
								<button type="button" class="btn btn-primary btn-lg btn-inline rewardBtn" style="background: #8E44AD; border: #8E44AD;"
								onclick="location.href='${removeNotice}'">삭제하기</button> 	
								<button type="button" class="btn btn-primary btn-lg btn-inline rewardBtn" style="background: #8E44AD; border: #8E44AD;"
								onclick="location.href='${adminNoticeList}'">목록으로</button> 
							</span>
						</div>
						<div class="card-body">  
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
			 							<div class="col-sm-12">
			 								<table align="center" id="tb" cellpadding="10" cellspacing="0" width="1000px">
												<tr align="center" valign="middle">
													<th colspan="2" id="tb-header">${ notice.nNo }번 글 상세보기</th>
												</tr>
												<tr>
													<th height="15" width="70" class="th">제목</th>
													<td>${ notice.nTitle }</td>
												</tr>
												<tr>
													<th class="th">작성자</th>
													<td>${ notice.userNickname }</td>
												</tr>		
												<tr>
													<th class="th">작성일</th>
													<td>${ notice.nEnrollDate}</td>
												</tr>		
												<tr height="300">
													<th class="th">내용</th>
													<td>${ notice.nContent }</td>
												</tr>
											</table>
			 							
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
	          <button class="close" type="button" data-dismiss="modal" aria-label="Close" style="float: right;">
	            <span aria-hidden="true" style="float: right;">×</span>
	          </button>
	        </div>
	        <div class="modal-body">로그아웃 시 메인 페이지로 이동합니다.</div>
	        <div class="modal-footer">
	          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
	        </div>
	      </div>
	    </div>
	  </div>
	
	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="resources/vendor/chart.js/Chart.min.js"></script>
	<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
	<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<script src="resources/js/demo/chart-area-demo.js"></script>
	<script src="resources/js/demo/chart-pie-demo.js"></script>

	<!-- Demo scripts for this page-->
	<script src="resources/js/demo/datatables-demo.js"></script>
	
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
	<!-- summernote 기능 구현 js -->
	<script src="resources/summernote/js/summernote.js"></script>
	
	<!-- summernote 언어 설정 js -->
	<script src="resources/summernote/dist/lang/summernote-ko-KR.js"></script>


</body>
</html>


