<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>프로젝트 후기 작성</title>



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
.collapse-item p {
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

.sorting {
	width: auto;
}

/* imaged preview */
.filebox .upload-display { /* 이미지가 표시될 지역 */
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap { /* 추가될 이미지를 감싸는 요소 */
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img { /* 추가될 이미지 */
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}

select {
   padding: 5px;
   border-radius: 4px;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

</style>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="../common/sidebar.jsp" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<%@include file="../common/topbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 프로젝트 후기 작성</h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<form action="insertReview.dr" name="insertReviewForm"
								id="insertReviewForm" method="post"
								enctype="multipart/form-data">
								<span class="float-right">
									<button type="button"
										class="btn btn-primary btn-lg btn-inline rewardBtn"
										id="submitBtn" style="background: #8E44AD; border: #8E44AD;"
										onclick="">프로젝트 후기 작성</button>
									<button class="btn btn-primary btn-lg btn-inline rewardBtn"
										style="background: #8E44AD; border: #8E44AD;"
										onclick="cancle();">취소하기</button>
								</span>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
											<table align="center" id="tb" cellpadding="5" cellspacing="0" width="1000px">
												<tr>
													<th>프로젝트 후기 제목 : </th>
													<td><input type="text" name="revTitle" type="text" size="97" placeholder="제목을 입력해주세요."></td>
												</tr>
												<tr>
													<th>프로젝트 후기 부제목 : </th>
													<td><input type="text" name="revSubTitle" type="text" size="97" placeholder="부제목을 입력해주세요."></td>
												</tr>
												<tr>
													<th>프로젝트 번호 : </th>
													<td><input type="text" name="revRefPno" type="text" size="97" placeholder="프로젝트 번호를 입력해주세요."></td>
												</tr>
												<tr>
													<th>카테고리 번호 : </th>
													<td>
														<select name="revCatNo" >
															<option value="1">음악</option>
															<option value="2">영화</option>
															<option value="3">연극</option>
															<option value="4">미술</option>
															<option value="5">공연</option>
															<option value="9">기타</option>
														</select>
													</td>
												</tr>
												<tr>
													<th>썸네일 이미지 :</th>
													<td>
														<div class="filebox preview-image">
															<label for="input-file">이미지 업로드</label>
															<input type="file" id="input-file" class="upload-hidden" name="uploadFile" style="display: none;">
														</div>
													</td>
												</tr>
												<tr>
													<th>리뷰 내용 : </th>
													<td><textarea id="summernote" name="revContent"></textarea></td>
												</tr>
												<!-- 등록된 이미지 목록 -->
												<input type="hidden" name="revWriter" value="${loginUser.userNo}">
												<input type="hidden" name="imgList" value="">
												</form>
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
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close" style="float: right;">
						<span aria-hidden="true" style="float: right;">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 시 메인 페이지로 이동합니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 취소 버튼을 누를 경우 action 속성값 변경
		function cancle() {
			$("#insertReviewForm").attr("action", "cancleReview.dr");
		}

		$(function() {
			$("#submitBtn").on("click", function() {
				if ($("input[name=revTitle]").val().trim() == "") {
					alert("후기 제목을 작성해주세요.");
					return false;
				}
				if ($("input[name=revSubTitle]").val().trim() == "") {
					alert("후기 부제목을 작성해주세요.");
					return false;
				}
				if ($("input[name=revRefPno]").val().trim() == "") {
					alert("프로젝트 번호를 작성해주세요.");
					return false;
				}
				if ($("input[name=uploadFile]").val().trim() == "") {
					alert("썸네일 이미지를 선택해주세요.");
					return false;
				}
				if ($("#summernote").val().trim() == "") {
					alert("후기 내용을 작성해주세요.");
					return false;
				}
				$("#insertReviewForm").submit();
			});
		});
		
		var imgTarget = $('.preview-image .upload-hidden'); 
		
		imgTarget.on('change', function(){
			var parent = $(this).parent(); 
			parent.children('.upload-display').remove(); 
			
			if(window.FileReader){ //image 파일만 
				if (!$(this)[0].files[0].type.match(/image\//)) 
					return;
			
				var reader = new FileReader(); 
				reader.onload = function(e){ 
					var src = e.target.result; parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
				}
				reader.readAsDataURL($(this)[0].files[0]); 
			} else {
				$(this)[0].select();
				$(this)[0].blur();
				var imgSrc = document.selection.createRange().text;
				parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
				
				var img = $(this).siblings('.upload-display').find('img');
				img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
			}
		});

	</script>

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

	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
		rel="stylesheet">
	<!-- summernote 기능 구현 js -->
	<script src="resources/summernote/js/summernote.js"></script>
	<script src="resources/summernote/dist/summernote.js"></script>

	<!-- summernote 언어 설정 js -->
	<script src="resources/summernote/dist/lang/summernote-ko-KR.js"></script>


</body>
</html>


