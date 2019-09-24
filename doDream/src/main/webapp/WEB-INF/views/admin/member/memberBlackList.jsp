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

<title>블랙리스트 관리</title>

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
.pagination {
	font-size: 20px;
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
					<h1 class="h3 mb-2 text-gray-800"># 블랙리스트 회원 관리</h1>
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
												role="grid"	aria-describedby="dataTable_info" style="width: 100%;">
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
															style="width: 67px;">일반회원 처리</th>
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
														<th rowspan="1" colspan="1">일반회원 처리</th>
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="b" items="${ list }">
														<tr role="row" class="odd">
															<td class="sorting_1">${ b.userNo }</td>
															<td>${ b.userNickname }</td>
															<td>${ b.userPhone}</td>
															<td>${ b.userEmail}</td>
															<td>${ b.userEnrollDate }</td>
															<td> 블랙리스트 회원</td>
															<td>
																<button type="button" class="btn btn-primary btn-lg btn-block rewardBtn">일반회원 처리</button>
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
												role="status" aria-live="polite">  ${pi.startPage } / ${pi.maxPage } 페이지 </div>
										</div>
										<div class="col-sm-12 col-md-7">
											<div class="dataTables_paginate paging_simple_numbers"
												id="dataTable_paginate">
												<table class="pagination" style="float: right; margin-top: 10px; border: 1px soild gray;">
													<!-- 페이징 처리 -->
													<tr align="center" height="20">
														<td colspan="7" >
															<!-- [이전] -->
															<c:if test="${ pi.currentPage <= 1 }">
																[이전] &nbsp;
															</c:if>
															<c:if test="${ pi.currentPage > 1 }">
																<c:url var="before" value="adminBlist.dr">
																	<c:param name="page" value="${ pi.currentPage - 1 }"/>
																</c:url>
																<a href="${ before }">[이전]</a> &nbsp;
															</c:if>
															
															<!-- 페이지 -->
															<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
																<c:if test="${ p eq currentPage }">
																	<font color="red" size="4"><b>[${ p }]</b></font>
																</c:if>
																
																<c:if test="${ p ne currentPage }">
																	<c:url var="pagination" value="adminBlist.dr">
																		<c:param name="page" value="${ p }"/>
																	</c:url>
																	<a href="${ pagination }">${ p }</a> &nbsp;
																</c:if>
															</c:forEach>
															
															<!-- [다음] -->
															<c:if test="${ pi.currentPage >= pi.maxPage }">
																[다음]
															</c:if>
															<c:if test="${ pi.currentPage < pi.maxPage }">
																<c:url var="after" value="adminBlist.dr">
																	<c:param name="page" value="${ pi.currentPage + 1 }"/>
																</c:url> 
																<a href="${ after }">[다음]</a>
															</c:if>
														</td>
													</tr>
												</table>
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