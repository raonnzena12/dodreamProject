<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.resultPrint {
    /* display: flex; */
    width: 100%;
    flex-wrap: wrap;
    justify-content: space-around;
    align-content: space-around;
}
.resultPrint>div {
    margin: 10px;
    min-width: 300px;
    height: 400px;
/*     flex: 1;
    flex-basis: 20%; */
    padding: 10px;
    position: relative;
    display: inline-block;
}

.fundCon {
    /* border: 1px solid red; */
    width: 250px;
    height: 350px;
	position: absolute;
    margin: auto;
    right: 0;
    left: 0;
    box-shadow: 1px 1px 3px #ccc;
}
.fundCon:hover {
    box-shadow: 1px 1px 4px #aaa;
}

.fundItem {
    display: grid;
    grid-template-columns: 200px 50px;
    grid-template-rows: 180px 50px 50px 70px;
}

 .fundImg, .chartArea {
    grid-column-start: 1;
    grid-column-end: 3;
}

.detailArea {
    grid-column-start: 1;
    grid-column-end: 3;
    padding-left: 15px;
    padding-right: 15px;
    line-height: 15px;
    padding-top: 3px;
}

.detailArea>span{
	font-weight: 800;
	font-size: 14px;
    color: #8E44AD;
}

.nameArea {
    grid-column-start: 1;
    grid-column-end: 3;
    padding-left: 15px;
    line-height: 21px;
    padding-top: 12px;
}

.fundImg>img {
    width: 100%;
    height: 180px;
}

.categoryName {
    font-weight: 800;
    font-size: 15px;
    color: #F39C12;
}

.fundName {
    font-weight: 900;
    font-size: 18px;
    
}

.fundName>a {
    font-weight: 900;
    font-size: 18px;
    color: #777;
}


.detailText {
    font-size: 14px;
    color: #777;
}

.chartBar {
    width: 100%;
    height: 5px;
    background-color: #ddd;
    border-radius: 5px;
}

.purpleBar {
    border-radius: 5px;
    background-color:#8E44AD;
    height: 100%;
    /* width: 25%; */
}

.chartInfo1 {
    float: left;
}

 .chartInfo2 {
    float: right;
}

.chartInfo>span {
    font-size: 14px;
    font-weight: bold;
}

 .chartDate {
    font-size: 13px;
    font-weight: bold;
    float: right;
    color: #777;
    margin-right: 5px;
}

.fundItem {
    cursor: pointer;
 }
 
	#myfundingsub{
		text-decoration: none;
	}
	#myfundingsub>a{
		color: #444;
	}
	
	#myfundingsub>a.active {
	color: #8E44AD;
	font-weight: 600;
}

#myOpenPRJView{
	min-height: 600px;
	height: auto;
}

</style>
</head>
<body>

	<jsp:include page="../member/mypageHeader.jsp"/>

	<br>
	<div class="container-fluid" id="myOpenPRJView">
		<br>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="myfundingsub">
			<c:choose>
			<c:when test="${ !empty social }">
			<a id="sub1" href="social.dr?userNo=${social.userNo}&page=1">참여한</a> ｜ <a id="sub2" href="social.dr?userNo=${social.userNo}&page=2">오픈한</a> ｜ <a id="sub3" href="social.dr?userNo=${social.userNo}&page=3">관심있는</a>
			</c:when>
			<c:otherwise>
			<a id="sub1" href="myFundingList.dr?userNo=${loginUser.userNo}">참여한</a> ｜ <a id="sub2" href="myOpenProjectList.dr?userNo=${loginUser.userNo}">오픈한</a> ｜ <a id="sub3" href="myLikePRJList.dr?userNo=${loginUser.userNo}">관심있는</a>
			</c:otherwise>
			</c:choose>
			</div>
			<div class="col-md-2"></div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10 resultPrint">
					<c:if test="${ empty pList }">
						<h4 class="text-center">프로젝트 오픈 내역이 없습니다.<br>
						<c:if test="${ empty social }">
						모두를 두드릴 당신의 꿈을 보여주세요!
						</c:if>
						</h4>
					</c:if>
					<c:if test="${ fn:length(pList) >0 }">
					<c:choose>
					<c:when test="${ empty social }">
						<c:forEach var="pList" items="${ pList }">
							<div>
								<div class="fundCon">
									<div class="fundItem" id="${ pList.pNo }">
										<div class="fundImg">
											<img src="resources/images/projectImg/thumbnail/${ pList.pThumbImage }">
										</div>
										<div class="nameArea">
											<p class="categoryName mb-0">${ pList.pCategoryName } 
												<span class="detailArea float-right">
												<c:choose>
														<c:when test="${pList.pStatusNum eq 1 }">
															<span>임시저장</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 2 }">
															<span>심사대기</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 3 }">
															<span>심사완료</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 4 }">
															<span>펀딩중</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 5 }">
															<span>펀딩마감</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 6 }">
															<span>심사탈락</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 7 }">
															<span>펀딩성공</span>
														</c:when>																							
													</c:choose>
												</span>
											</p>
											
											<c:choose>
											<c:when test="${pList.pStatusNum eq 1 }">
												<c:if test="${!empty pList.pTitle }">
												<span class="fundName"><a href="selectCurrentProject.dr?pNo=${pList.pNo }">${ pList.pTitle }</a> </span>
												</c:if>
												<c:if test="${empty pList.pTitle }">
												<span class="fundName"><a href="selectCurrentProject.dr?pNo=${pList.pNo }">제목없음</a> </span>
												</c:if>										
											</c:when>
											<c:when test="${pList.pStatusNum <= 4 }">
												<span class="fundName"> <a href="detailSt.dr?pNo=${pList.pNo }">${ pList.pTitle }</a> </span>
											</c:when>
											<c:otherwise>
												<span class="fundName">${ pList.pTitle } </span>
											</c:otherwise>
											</c:choose>
										</div>

										<div class="detailArea my-1"> </div>
										<div class="chartArea px-3 mt-2">
											<div class="chartInfo clearfix">
												<c:choose>
													<c:when test="${pList.pStatusNum < 4 }">
														<span class="chartInfo1">&nbsp;</span>													
													</c:when>
													<c:otherwise>
														<span class="chartInfo1">￦<fmt:formatNumber value="${ pList.pCurrentFunding }" groupingUsed="true" /></span>
														<span class="chartInfo2"><fmt:parseNumber value="${ (pList.pCurrentFunding / pList.pGoal) * 100 }" integerOnly="true" />%</span>
													</c:otherwise>
												</c:choose>
											</div>
											<c:choose>
											<c:when test="${pList.pStatusNum < 3 }">
												<div></div>
											</c:when>
											<c:when test="${pList.pStatusNum eq 3 }">
												<div>
												<button class="btn-sm btn-warning" id="openPRJ" project = "${pList.pNo}" termdate="${pList.termDate }">프로젝트오픈하기</button>
												</div>
											</c:when>
											<c:when test="${ ((pList.pCurrentFunding / pList.pGoal) * 100) < 100 }">
											<div class="chartBar">
												<div class="purpleBar"style="width:${ (pList.pCurrentFunding / pList.pGoal) * 100 }%"></div>
											</div>
											</c:when>
											<c:otherwise>
											<div class="chartBar">
												<div class="purpleBar"></div>
											</div>
											</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${pList.pStatusNum eq 1 }">
													<div class="chartDate">미등록</div>
												</c:when>
												<c:when test="${ pList.pDDay > 0 }">
													<c:if test="${pList.pStatusNum ne 3 }">
													<div class="chartDate">${ pList.pDDay }일남음</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div class="chartDate">펀딩 종료</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach var="pList" items="${ pList }">
							<c:if test="${ pList.pStatusNum eq 4 || pList.pStatusNum eq 5 || pList.pStatusNum eq 7 }" >
							<div>
								<div class="fundCon">
									<div class="fundItem" id="${ pList.pNo }">
										<div class="fundImg">
											<img src="resources/images/projectImg/thumbnail/${ pList.pThumbImage }">
										</div>
										<div class="nameArea">
											<p class="categoryName mb-0">${ pList.pCategoryName } 
												<span class="detailArea float-right">
												<c:choose>
														<c:when test="${pList.pStatusNum eq 1 }">
															<span>임시저장</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 2 }">
															<span>심사대기</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 3 }">
															<span>심사완료</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 4 }">
															<span>펀딩중</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 5 }">
															<span>펀딩마감</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 6 }">
															<span>심사탈락</span>
														</c:when>
														<c:when test="${pList.pStatusNum eq 7 }">
															<span>펀딩성공</span>
														</c:when>																							
													</c:choose>
												</span>
											</p>
											
											<c:choose>
											<c:when test="${pList.pStatusNum eq 1 }">
												<c:if test="${!empty pList.pTitle }">
												<span class="fundName"><a href="selectCurrentProject.dr?pNo=${pList.pNo }">${ pList.pTitle }</a> </span>
												</c:if>
												<c:if test="${empty pList.pTitle }">
												<span class="fundName"><a href="selectCurrentProject.dr?pNo=${pList.pNo }">제목없음</a> </span>
												</c:if>										
											</c:when>
											<c:when test="${pList.pStatusNum <= 4 }">
												<span class="fundName"> <a href="detailSt.dr?pNo=${pList.pNo }">${ pList.pTitle }</a> </span>
											</c:when>
											<c:otherwise>
												<span class="fundName">${ pList.pTitle } </span>
											</c:otherwise>
											</c:choose>
										</div>

										<div class="detailArea my-1"> </div>
										<div class="chartArea px-3 mt-2">
											<div class="chartInfo clearfix">
												<c:choose>
													<c:when test="${pList.pStatusNum < 4 }">
														<span class="chartInfo1">&nbsp;</span>													
													</c:when>
													<c:otherwise>
														<span class="chartInfo1">￦<fmt:formatNumber value="${ pList.pCurrentFunding }" groupingUsed="true" /></span>
														<span class="chartInfo2"><fmt:parseNumber value="${ (pList.pCurrentFunding / pList.pGoal) * 100 }" integerOnly="true" />%</span>
													</c:otherwise>
												</c:choose>
											</div>
											<c:choose>
											<c:when test="${pList.pStatusNum < 3 }">
												<div></div>
											</c:when>
											<c:when test="${pList.pStatusNum eq 3 }">
												<div>
												<button class="btn-sm btn-warning" id="openPRJ" project = "${pList.pNo}" termdate="${pList.termDate }">프로젝트오픈하기</button>
												</div>
											</c:when>
											<c:when test="${ ((pList.pCurrentFunding / pList.pGoal) * 100) < 100 }">
											<div class="chartBar">
												<div class="purpleBar"style="width:${ (pList.pCurrentFunding / pList.pGoal) * 100 }%"></div>
											</div>
											</c:when>
											<c:otherwise>
											<div class="chartBar">
												<div class="purpleBar"></div>
											</div>
											</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${pList.pStatusNum eq 1 }">
													<div class="chartDate">미등록</div>
												</c:when>
												<c:when test="${ pList.pDDay > 0 }">
													<c:if test="${pList.pStatusNum ne 3 }">
													<div class="chartDate">${ pList.pDDay }일남음</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div class="chartDate">펀딩 종료</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						</c:otherwise>
						</c:choose>
					</c:if>
				</div>
			</div>
		<div class="col-md-1"></div>
	</div>
	
	<script>
		// 페이지 접속하면 currentPage = 1;
		/* var currentPage = 1;
		 var maxPage = ${ pi.maxPage };
		 var cate = null;
		 var order = null;
		 var endYn = null;
		 var keyword = null; */

		// 펀드 리스트 출력하는 함수(수정중)
		function printFunds(list) {
			var $resultPrint = $(".resultPrint");

			$.each(
					list,
					function(i) {
						var $conDiv = $("<div>");
						// 펀딩 인덱스 아이디로 추가할 것
						var $fundCon = $("<div>").addClass("fundCon");
						var $fundItem = $("<div>").addClass("fundItem").attr("id", list[i].pNo);
						var $fundImg = $("<div>").addClass("fundImg");
						// 이미지 url 지정할것
						var $img = $("<img>").attr("src","resources/images/projectImg/thumbnail/"+ list[i].pThumbImage);
						$fundImg.append($img);
						var $nameArea = $("<div>").addClass("nameArea");
						// 들어갈 텍스트들 지정할 것
						var $categoryName = $("<p>").addClass("categoryName mb-0").text(list[i].pCategoryName);
						var $fundName = $("<span>").addClass("fundName").text(list[i].pTitle);
						$nameArea.append($categoryName, $fundName);
						var $detailArea = $("<div>").addClass("detailArea my-1");
						var $detailText = $("<span>").addClass("detailText")/*.text(list[i].pSummaryText)*/;
						$detailArea.append($detailText);
						var $chartArea = $("<div>").addClass("chartArea px-3 mt-2");
						var $chartInfo = $("<div>").addClass("chartInfo clearfix");
						var $chartInfo1 = $("<span>").addClass("chartInfo1").text("￦"+ addComma(list[i].pCurrentFunding));
						var $chartInfo2 = $("<span>").addClass("chartInfo2").text(Math.floor((list[i].pCurrentFunding / list[i].pGoal) * 100)+ "%");
						$chartInfo.append($chartInfo1, $chartInfo2);
						var $chartBar = $("<div>").addClass("chartBar");
						// 진행바 가로길이 지정
						var $purpleBar = $("<div>").addClass("purpleBar").css("width",(list[i].pCurrentFunding / list[i].pGoal)	* 100 + "%");
						$chartBar.append($purpleBar);
						var $chartDate = $("<div>").addClass("chartDate").text(list[i].pDDay + "일 남음");
						$chartArea.append($chartInfo, $chartBar, $chartDate);
						$fundItem.append($fundImg, $nameArea, $detailArea, $chartArea);
						$fundCon.append($fundItem);
						$conDiv.append($fundCon);
						$resultPrint.append($conDiv);
					 });
		}

		// 컴마 추가하는 함수
		function addComma(num) {
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			return num.toString().replace(regexp, ',');
		}
		
		//해당메뉴 강조
	    $(function(){
			var menu = ${menu} + "";
			
			if(menu ==1){
				$("#menu1").addClass("active");
			}
			
			var sub = ${sub} + "";
			if(sub==3){
				$("#sub3").addClass("active");
			}else if(sub==2){
				$("#sub2").addClass("active");
			}else{
				$("#sub1").addClass("active");
			}
		});
	    
		//심사완료 시 프로젝트 오픈
	    $("#openPRJ").click(function(){
	    	var pNo = $(this).attr("project");
	    	var termDate = $(this).attr("termdate");
			var ck = confirm("해당 프로젝트를 오픈합니다.");
			if(ck == true){
				$.ajax({
					url:"ajaxopenProjectBtn.dr",
					type: "post",
					data: {pNo:pNo, termDate:termDate},
					success:function(result){
						if(result>0){
							alert("프로젝트가 오픈되었습니다.");
							location.reload();
						}
					}
				});	
			}else{
				return false;
			}
	    });
	</script>


</body>
</html> 