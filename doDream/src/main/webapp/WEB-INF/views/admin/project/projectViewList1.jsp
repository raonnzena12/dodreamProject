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


<title>프로젝트 관리 (심사 대기 중)</title>

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

tbody tr:hover{
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

				<jsp:include page="../common/topbar.jsp"/>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 프로젝트 관리 (심사 대기 중)</h1>
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
															aria-label="Name: activate to sort column descending">프로젝트 번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending">카테고리</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending">프로젝트 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending">목표 금액</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending">프로젝트 시작일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">프로젝트 종료일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">아티스트 이름</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">아티스트 연락처</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">아티스트 이메일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">심사 통과 처리</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">심사 탈락 처리</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th rowspan="1" colspan="1">프로젝트 번호</th>
														<th rowspan="1" colspan="1">카테고리</th>
														<th rowspan="1" colspan="1">프로젝트 제목</th>
														<th rowspan="1" colspan="1">목표 금액</th>
														<th rowspan="1" colspan="1">프로젝트 시작일</th>
														<th rowspan="1" colspan="1">프로젝트 종료일</th>
														<th rowspan="1" colspan="1">아티스트 이름</th>
														<th rowspan="1" colspan="1">아티스트 연락처</th>
														<th rowspan="1" colspan="1">아티스트 이메일</th>
														<th rowspan="1" colspan="1">심사 통과 처리</th>
														<th rowspan="1" colspan="1">심사 탈락 처리</th>
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="p" items="${ list }" varStatus="status">
														<tr role="row" class="odd">
															<td class="sorting_1">${ p.pNo }</td>
															<td>${ p.pCategoryName }</td>
															<td> 
																<a href="goPreview.dr?pNo=${p.pNo}" target="_blank" style="text-decoration:none; color: gray;">${ p.pTitle }</a>
															</td>
															<td>${ p.pGoal}</td>
															<td>${ p.pStartDate}</td>
															<td>${ p.pCloseDate }</td>
															<td>${ p.pArtistName }</td>
															<td>${ p.pArtistPhone }</td>
															<td>${ p.pArtistEmail }</td>
															<td>
																 <button type="button" data-toggle="modal" data-target="#exampleModal${ status.index }" data-whatever="심사 통과"
 																 id="passProjectBtn" class="btn btn-primary btn-lg btn-block rewardBtn">심사 통과</button>
 																 <!-- Modal -->
 																<form action ="passProjectBtn.dr" method="post">
																<div class="modal fade" id="exampleModal${ status.index }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">심사 통과</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																        	해당 프로젝트 심사 합격을 진행하시겠습니까?
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																        <button type="submit" class="btn btn-primary">진행하기</button>
																        <input type="hidden" name="pNo" value="${p.pNo}">
																      </div>
																    </div>
																  </div>
																</div>
																</form>
															</td>
															<td>
																<button type="button" data-toggle="modal" data-target="#exampleModalt${ status.index }" data-whatever="심사 탈락"
 																 id="dropOutProjectBtn" class="btn btn-primary btn-lg btn-block rewardBtn">심사 탈락</button>
 																 <!-- Modal -->
 																<form action ="dropOutProjectBtn.dr" method="post">
																<div class="modal fade" id="exampleModalt${ status.index }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">심사 탈락</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																        	해당 프로젝트 심사 탈락을 진행하시겠습니까?
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																        <button type="submit" class="btn btn-primary">진행하기</button>
																        <input type="hidden" name="pNo" value="${p.pNo}">
																      </div>
																    </div>
																  </div>
																</div>
																</form>
															</td>
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
	          <a class="btn btn-primary" href="logout.dr">Logout</a>
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
