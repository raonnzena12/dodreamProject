<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>관리자 홈</title>

<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<style>

.collapse-item p{
	color: gray;
	font-weight: bold;
} 

</style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
		
	<jsp:include page="common/sidebar.jsp"/>		

		<!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <jsp:include page="common/topbar.jsp"/>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"> # 메인</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4"> # 회원 현황
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body"> 
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">전체 회원 </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="memberAllMember"></div><br>
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">신규 회원 </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="memberNewMember"></div><br>
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">탈퇴 회원</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="memberLeaveMember"></div><br>
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">블랙리스트 회원</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="blackListMember"></div> 
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

			<!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4"> # 프로젝트 현황
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">심사 대기 중인 프로젝트</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countProject1"></div><br>
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">오픈 중인  프로젝트</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countProject2"></div><br>
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">마감된 프로젝트</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countProject3"></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4"> # 결제 현황
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body"> 
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">주문 예약 현황 </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countReserve1"></div><br>
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">결제 완료 현황</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countReserve2"></div><br>
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">취소 및 환불 현황</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countReserve3"></div> 
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

			<!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4"> # 신고 현황
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">신고 접수된 프로젝트 개수</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countReport"></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>

          <!-- Content Row -->
		<br>
          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <p class="m-0 font-weight-bold text-primary">누적 방문자 수</p>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <p class="m-0 font-weight-bold text-primary">카테고리 분포도</p>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 음악
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success" ></i> 영화
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> 연극
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> 미술
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> 공연
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> 기타
                    </span>
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
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
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

	<!-- Page level custom scripts -->
	<script src="resources/js/demo/chart-area-demo.js"></script>
	<script src="resources/js/demo/chart-pie-demo.js"></script>
	
	
	<script>
		// 관리자 페이지 전체 회원 수
		$.ajax({
			url : "adminCountAllMember.dr",
			success : function(result){
				console.log(result);
				$("#memberAllMember").text(result+"명");
			}
		});
		
		// 관리자 페이지 신규 회원 수
		$.ajax({
			url : "adminCountNewMember.dr",
			success : function(result){
				console.log(result);
				$("#memberNewMember").text(result+"명");
			}
		});
		
		// 관리자 페이지 탈퇴 회원 수
		$.ajax({
			url : "adminCountLeaveMember.dr",
			success : function(result){
				console.log(result);
				$("#memberLeaveMember").text(result+"명");
			}
		});
		
		// 관리자 페이지 블랙리스트 회원 수
		$.ajax({
			url: "adminCountBlackListMember.dr",
			success : function(result){
				console.log(result);
				$("#blackListMember").text(result + "명");
			}
		});
		
		// 관리자 페이지 심사 대기 중인 프로젝트 수
		$.ajax({
			url: "adminCountProject1.dr",
			error: function(e){
				console.log(e);
			},
			success : function(result){
				console.log(result);
				$("#countProject1").text(result + "개");
			}
		});
		
		// 관리자 페이지 오픈 중인 프로젝트 수
		$.ajax({
			url: "adminCountProject2.dr",
			success : function(result){
				console.log(result);
				$("#countProject2").text(result + "개");
			}
		});
		
		// 관리자 페이지 마감 된 프로젝트 수
		$.ajax({
			url: "adminCountProject3.dr",
			success : function(result){
				console.log(result);
				$("#countProject3").text(result + "개");
			}
		});
		
		// 관리자 페이지 주문 예약 개수 
		$.ajax({
			url: "adminCountReserve1.dr",
			success: function(result){
				console.log(result);
				$("#countReserve1").text(result + "개");
			}
		});
		
		// 관리자 페이지  결제 완료 개수 
		$.ajax({
			url: "adminCountReserve2.dr",
			success: function(result){
				console.log(result);
				$("#countReserve2").text(result + "개");
			}
		});
		
		// 관리자 페이지 예약 취소 개수 
		$.ajax({
			url: "adminCountReserve3.dr",
			success: function(result){
				console.log(result);
				$("#countReserve3").text(result + "개");
			}
		});
		
		// 관리자 페이지 신고 접수 현황
		$.ajax({
			url: "adminCountReport.dr",
			success: function(result){
				console.log(result);
				$("#countReport").text(result + "개")
			}
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
</body>

</html>
