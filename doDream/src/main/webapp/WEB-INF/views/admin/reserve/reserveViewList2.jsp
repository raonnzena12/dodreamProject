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

<title>결제 관리 (결제 완료 현황)</title>

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
					<h1 class="h3 mb-2 text-gray-800"># 결제 관리 (결제 완료 현황)</h1>
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
										<div class="col-sm-12">
											<table class="table table-bordered dataTable" id="dataTable"
												role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending">주문 예약 번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending">프로젝트 이름</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending">회원 이름</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending">주문일자</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">추가 후원금</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">배송 이름</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">배송 전화번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">배송 주소</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th rowspan="1" colspan="1">주문 예약 번호</th>
														<th rowspan="1" colspan="1">프로젝트 이름</th>
														<th rowspan="1" colspan="1">회원 이름</th>
														<th rowspan="1" colspan="1">주문일자 </th>
														<th rowspan="1" colspan="1">추가 후원금</th>
														<th rowspan="1" colspan="1">배송 이름</th>
														<th rowspan="1" colspan="1">배송 전화번호</th>
														<th rowspan="1" colspan="1">배송 주소</th>
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="r" items="${ list }">
														<tr role="row" class="odd">
															<td class="sorting_1">${ r.rNo }</td>
															<td>${ r.pTitle}</td>
															<td>${ r.userNickname}</td>
															<td>${ r.rDate}</td>
															<td>${ r.addi}</td>
															<td>${ r.rName}</td>
															<td>${ r.rContract}</td>
															<td>${ r.rAddress}</td>
														</tr>
													</c:forEach>
												</tbody>
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
	<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
	<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<script src="resources/js/demo/chart-area-demo.js"></script>
	<script src="resources/js/demo/chart-pie-demo.js"></script>

	<!-- Demo scripts for this page-->
	<script src="resources/js/demo/datatables-demo.js"></script>

</body>

</html>


</body>
</html>