<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.card-header>a{
		color: #444;
	}
	.card-header>a>span{
		color: #8E44AD;
		font-weight: 600;
	}
	#reportReply{
		background-color: lightgrey;
	}
	
	#myReportListView{
		min-height: 600px;
		height: auto;
	}
</style>
</head>
<body>
	<jsp:include page="../member/mypageHeader.jsp"/>
	<br>
	<div class="row" id="myReportListView">
		<div class="col-md-2"></div>
			<div class="col-md-8">
				<br>
				<c:if test="${ empty rList }">
					문의한 내역이 없습니다.
				</c:if>
				<c:if test="${ fn:length(rList) >0 }">
				<c:forEach var="rList" items="${ rList }">
						<div id="card-577404">
							<div class="card">
								<div class="card-header">
									<a class="card-link" data-toggle="collapse" data-parent="#card-${rList.repNo }" href="#card-${rList.repNo }">
									신고한 프로젝트: ${ rList.pTitle } ｜ 신고일자: ${ rList.repDate } ｜ 답변상태: 
									<c:choose>
										<c:when test="${rList.repStatus eq 'Y'}">
											<span>답변대기</span>
										</c:when>
										<c:otherwise>
											<span>답변완료</span>
										</c:otherwise>
									</c:choose>
									</a>
								</div>
								<!-- 신고내용 출력 -->
								<div id="card-${rList.repNo }" class="collapse show">
									<div class="card-body">${rList.repContent }
									<!-- 신고답변내용출력 -->
									<div id="reportReply" class="text-left mt-3">
									<c:if test="${ empty rList.reportRpContent }">
										<span class="text-center">관리자가 답변대기 중입니다.</span>
									</c:if>
									<c:if test="${ ! empty rList.reportRpContent }">
										<span class="mx-3">
										답변일자: ${rList.reportRpDt }
										</span>
										<br>
										<span class="mx-3">
										${ rList.reportRpContent }
										</span>
									</c:if>
									</div>
									</div>
								</div>
							</div>
						</div>
						<br>
					</c:forEach>
				</c:if>
			</div>
			<div class="col-md-2"></div>
		</div>

</body>
</html>