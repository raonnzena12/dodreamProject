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

<title>회원관리</title>

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

.rewardBtn{
	width: auto;
	height: auto;
	background-color: #F39C12;
	border: #F39C12;
	font-size: 15px;
}
.rewardBtn:hover{
	background-color: #8E44AD;
	cursor: pointer;
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

				<jsp:include page="../common/topbar.jsp"/>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 일반회원 관리</h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<p class="m-0 font-weight-bold text-primary">-----</p>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_length" id="dataTable_length">
												<label><select name="dataTable_length"
													aria-controls="dataTable"
													class="custom-select custom-select-sm form-control form-control-sm"><option
															value="10">전체회원</option>
														<option value="25">일반회원</option>
														<option value="50">아티스트회원</option>
														<option value="100">탈퇴회원</option></select> 
												</label>
											</div>
										</div>
										<div class="col-sm-12 col-md-6">
											<div id="dataTable_filter" class="dataTables_filter">
												<label>Search:<input type="search"
													class="form-control form-control-sm" placeholder=""
													aria-controls="dataTable"></label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<table class="table table-bordered dataTable" id="dataTable"
												width="100%" cellspacing="0" role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending"
															style="width: 29px;">회원번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending"
															style="width: 50px;">닉네임</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending"
															style="width: 31px;">전화번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending"
															style="width: 68px;">이메일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"
															style="width: 67px;">가입일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"
															style="width: 67px;">회원상태</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"
															style="width: 67px;">블랙리스트 처리</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th rowspan="1" colspan="1">회원번호</th>
														<th rowspan="1" colspan="1">닉네임</th>
														<th rowspan="1" colspan="1">전화번호</th>
														<th rowspan="1" colspan="1">이메일</th>
														<th rowspan="1" colspan="1">가입일</th>
														<th rowspan="1" colspan="1">회원상태</th>
														<th rowspan="1" colspan="1">블랙리스트 처리</th>
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="m" items="${ list }">
														<tr role="row" class="odd">
															<td class="sorting_1">${ m.userNo }</td>
															<td>${ m.userNickname }</td>
															<td>${ m.userPhone}</td>
															<td>${ m.userEmail}</td>
															<td>${ m.userEnrollDate }</td>
															<td>
																<c:if test="${ m.userStatus eq 'Y'}">
																	일반 회원
																</c:if>
																<c:if test="${ m.userStatus eq 'N'}">
																	탈퇴 회원
																</c:if>
															</td>
															<td>
																<button type="button" class="btn btn-primary btn-lg btn-block rewardBtn">블랙리스트 등록</button>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12 col-md-5">
											<div class="dataTables_info" id="dataTable_info"
												role="status" aria-live="polite">Showing 1 to 10 of 57
												entries</div>
										</div>
										<div class="col-sm-12 col-md-7">
											<div class="dataTables_paginate paging_simple_numbers"
												id="dataTable_paginate">
												<ul class="pagination">
													<li class="paginate_button page-item previous disabled"
														id="dataTable_previous"><a href="#"
														aria-controls="dataTable" data-dt-idx="0" tabindex="0"
														class="page-link">Previous</a></li>
													<li class="paginate_button page-item active"><a
														href="#" aria-controls="dataTable" data-dt-idx="1"
														tabindex="0" class="page-link">1</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="dataTable" data-dt-idx="2" tabindex="0"
														class="page-link">2</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="dataTable" data-dt-idx="3" tabindex="0"
														class="page-link">3</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="dataTable" data-dt-idx="4" tabindex="0"
														class="page-link">4</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="dataTable" data-dt-idx="5" tabindex="0"
														class="page-link">5</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="dataTable" data-dt-idx="6" tabindex="0"
														class="page-link">6</a></li>
													<li class="paginate_button page-item next"
														id="dataTable_next"><a href="#"
														aria-controls="dataTable" data-dt-idx="7" tabindex="0"
														class="page-link">Next</a></li>
												</ul>
											</div>
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
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="resources/js/demo/chart-area-demo.js"></script>
	<script src="resources/js/demo/chart-pie-demo.js"></script>


</body>

</html>


</body>
</html>