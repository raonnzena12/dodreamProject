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

<title>모든 알림 확인</title>

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.css"
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
					<h1 class="h3 mb-2 text-gray-800"># 전체 알림 목록</h1>
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
												role="grid"	aria-describedby="dataTable_info" style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_desc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="descending"
															aria-label="Name: activate to sort column descending"
															style="width: 80px;">알림 번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending"
															style="width: auto;">알림 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending"
															style="width: auto;">알림 내용</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending"
															style="width: 150px;">알림 날짜</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending"
															style="width: 150px;">알림 확인 여부</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															style="width: 150px;">알림확인</th>
													</tr>    
												</thead>
												<tfoot>
													<tr>
														<th rowspan="1" colspan="1">알림 번호</th>
														<th rowspan="1" colspan="1">알림 제목</th>
														<th rowspan="1" colspan="1">알림 내용</th>
														<th rowspan="1" colspan="1">알림 날짜</th>
														<th rowspan="1" colspan="1">알림 확인 여부</th>
														<th rowspan="1" colspan="1">알림확인 <br>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" id="chkall" class="custom-control-input">
															<label class="custom-control-label" for="chkall">전체선택</label>
														</div>
															<button type="button" class="btn btn-primary btn-lg btn-block rewardBtn"
															 id="alarmcheck" align="center">확인처리</button>
														</th>
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="a" items="${ list }" varStatus="status">
														<tr role="row" class="odd">
															<td class="sorting_1">${ a.alNo}</td>
															<td>${ a.alTitle}</td>
															<td>${ a.alContent}</td>
															<td>${ a.alDate}</td>
															<td>
																<c:if test="${a.alStatus=='Y' }">
																	읽지않음		
																</c:if>
																<c:if test="${a.alStatus=='N' }">
																	읽음		
																</c:if>
															</td>
															<td>
																<c:if test="${a.alStatus=='Y' }">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" class="custom-control-input temp" id="alchecked${status.index }" name="alchecked" value="${a.alNo }">
																	<label class="custom-control-label" for="alchecked${status.index }">확인</label>
																</div>
																</c:if>
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
  	<script>
  		$(document).on("input","#chkall",function(){
  			var value = $("#chkall").is(":checked");
  			if(value==true){
				$("input[type='checkbox']").prop("checked",true);  				
  			}else{
				$("input[type='checkbox']").prop("checked",false);  				
  			}
  		});
  		$(document).on("click","#alarmcheck",function(){
  			var checkedValue = document.getElementsByName("alchecked");
  			var temp = "";
  			for (var i = 0; i < checkedValue.length; i++) {
				if(checkedValue[i].checked){
					temp += checkedValue[i].value + ",";
				}
			}
  			var arr = temp.split(",");
  			if(arr.length>1){
  				location.href = "confirmAlarm.dr?arr="+arr;
  			}
  		});
  		/* 체크 박스 개별 처리 */
  		$(document).on("click",".temp",function(){
  			$chkArr = $(".temp");
  			var count = 0;
  			for(var i = 0; i < $chkArr.length ; i++){
  				if($($(".temp")[i]).is(":checked")){
	  				count++;
  				}
  			}
			if(count==$chkArr.length){
				$("#chkall").prop("checked",true);  	
			}else{
				$("#chkall").prop("checked",false);  	
			}		
  			
  		});
	  		
  		
  		
	</script>
	
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