<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀드 등록하기</title>
<link rel="stylesheet" href="resources/css/fundagreement.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
.purplefont {
	color: #8E44AD;
}

.orangemark {
	background-color: #FFCD01;
}

#goSubmit, #goPreview {
	margin-top: 40px;
	opacity: 0.85;
}

#goSubmit:hover, #goPreview:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<link rel="stylesheet" href="resources/css/fundinginsertform.css">
	<div class="clearfix"></div>
	<div id="agreementForm">
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
		<div class="container">
			<section class="reward-create" id="reward-create-process-step2">
				<h2 class="process-title">
					# <span class="purplefont">잠깐!</span> 프로젝트를 올리기 전에
				</h2>
				<h2 class="process-title">
					다음 <span class="purplefont">세부사항</span>을 미리 확인하고 프로젝트를 시작하세요!
				</h2>
				<div class="process-desc">
					<p>
						저희 두드림은 공개검토 절차를 통해 <span class="spurplefont">"아티스트"</span> 님이 작성한
						프로젝트가 두드림의 정책을 준수하는지 확인하고 있습니다.<br> 아래 사항들을 확인한 후 프로젝트를 등록해
						주세요!
					</p>
				</div>
				<ul class="checklist" id="insertformul">
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist1">
							<label for="reward-create-process-checklist1"> 펀딩 진행 중에는
								제공할 리워드를 <span class="orangemark">다른 온∙오프라인에서 펀딩하거나 판매하지
									않습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist2">
							<label for="reward-create-process-checklist2"> 이미 시판된 제품,
								현금이나 지분 등 수익 제공, 선물 없는 단순 기부, 성인 인증이 필요한 컨텐츠 등 <span
								class="orangemark">기준에 맞지 않는 리워드를 제공하지 않습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist3">
							<label for="reward-create-process-checklist3"> 서포터에게 프로젝트
								진행 과정을 <span class="orangemark">안내</span>하고, <span
								class="orangemark">배송 약속을 지킬 수 있습니다!</span>
							</label>
						</div>
					</li>
					<li>
						<div class="ui checkbox">
							<input type="checkbox" id="reward-create-process-checklist4">
							<label for="reward-create-process-checklist4"> 서포터와의 신뢰를
								위해 펀딩 진행∙제품 제작∙ 배송 등 모든 과정에서 겪는 어려움들을 <span class="orangemark">서포터에게
									진솔하게 전달하고 문제를 해결합니다.</span>
							</label>
						</div>
					</li>
				</ul>
				<div class="bottom" align="center">
					<br>
					<button type="button" class="btn btn-primary"
						style="background-color: #F39C12; border-color: #fff; color: #fff;">이전으로</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" id="goInsertForm" class="btn btn-primary"
						style="background-color: #8E44AD; border-color: #fff; color: #fff;"
						onclick="checkAgreement();" disabled>시작하기!</button>
				</div>
			</section>
		</div>
		<div class="mt-5 mb-5 pt-3 pb-3"></div>
	</div>
	<div id="insertFundForm">
		<div class="accWrapper">
			<form id="insertFrm" action="insertProject.dr" method="POST"
				enctype="multipart/form-data">
				<input type="hidden" name="pNo" value="${pNo }">
				<input type="hidden" name="pStatusNum" id="pStatusNum" value="0">
				<input type="hidden" name="pWritter" value="${loginUser.userNo}">
				<div class="accBtn active">
					<span>기본정보</span>
				</div>
				<div class="accContainer">
					<div class="accHeadBox">
						<div style="width: 50%; float: left;">
							<i><p>&nbsp;&nbsp;첫 번째.</p></i>
							<p>기본 정보 입력하기</p>
						</div>
						<div
							style="width: 42%; float: left; text-align: right; line-height: 18px; padding-top: 30px;">
							<span> 프로젝트의 기본적인 정보들입니다<br> 프로젝트 성공을 위해서는 <br>
								달성가능한 목표금액을 정하는게 중요합니다 <br> 제목과 썸네일 이미지도 남에게 비춰지는 만큼 신경써서
								올려주세요
							</span>
						</div>
						<div class="clearFloat"></div>
					</div>
					<div class="accHeadDrawline"></div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로젝트 번호</div>
							<div class="accdesc">
								두드림 담당자와의 소통은 <br> 프로젝트 번호로 진행됩니다.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<p style="font-weight: 600;">프로젝트 번호 : ${pNo }</p>
								<br>
								<p style="font-size: 12px;">
									https://dodream.com/web/campaign/detail/${pNo } 로 프로젝트가 오픈되며, <br>
									프로젝트 오픈 이후 진입 가능합니다.
								</p>
								<div class="form-length-chk">
									<a href="javascript:void(0);" style="color: #777;">URL 복사하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">카테고리</div>
							<div class="accdesc">
								오픈 후, 노출 될 카테고리를 <br> 선택해주세요.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box nonborder">
								<select class="form-control" name="pCategoryNum"
									style="font-size: 14px; width: 85%;">
									<option>카테고리 선택</option>
									<option value="1">음악</option>
									<option value="2">영화</option>
									<option value="3">연극</option>
									<option value="4">미술</option>
									<option value="9">ETC</option>
								</select>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로젝트 제목</div>
							<div class="accdesc">
								프로젝트 성격과 리워드를 <br> 짐작할 수 있게 간결하고 개성있는 <br> 제목을 작성해주세요!
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<input type="text" class="form-control" name="pTitle"
									placeholder="예) 남녀노소 방방 뛸 수 있는 흠뻑쇼" maxlength="36"
									style="font-size: 12px;">
								<div class="form-length-chk">
									<span id="pTitleLengthChk">0</span>/36
								</div>
							</div>
						</div>
					</div>

					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로젝트 짧은 제목</div>
							<div class="accdesc">
								검색, 알림 등에 사용되는 <br> 짧은 제목을 함께 작성해주세요!
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<input type="text" class="form-control" name="pSTitle"
									placeholder="예) 누구나 즐기는 ★흠뻑쑈★" maxlength="36"
									style="font-size: 12px;">
								<div class="form-length-chk">
									<span id="pSTitleLengthChk">0</span>/36
								</div>
							</div>
						</div>
					</div>

					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">목표 금액</div>
							<div class="accdesc">
								마감일 자정 기준 목표금액<br> 미달성시, 프로젝트는 취소됩니다.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box nonborder">
								<input type="number" class="form-control" name="pGoal"
									placeholder="0"
									style="width: 250px; display: inline; margin-right: 5px;">
								<span>원</span>
							</div>
						</div>
					</div>

					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">썸네일 (대표이미지)</div>
							<div class="accdesc">
								프로젝트의 성격과 개성이<br> 한 눈에 드러나는 사진이 좋아요!
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<div class="box-img-area">
									<a href="javascript:void(0);" id="pThimbNailImgUpload"> <i
										class="material-icons" id="pThumbNailImg"
										style="font-size: 52px;"> camera_alt </i>
									</a>
									<p>사진등록</p>
								</div>
								<div class="box-img-desc">
									<p>· 용량 : 3MB 미만의 사진만 올려주세요!</p>
									<p>· 크기 : 가로 250px, 세로 180px로 자동 조정됩니다.</p>
								</div>
								<input type="file" name="uploadfile1"
									style="background-color: #fff; width: 100%; height: 20px; font-size: 8px;">
							</div>
						</div>
					</div>

					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로젝트 시작 / 종료일</div>
							<div class="accdesc">
								프로젝트 진행기간은 평균 30일 입니다. <br> 프로젝트 검토는 평균 5~7일 소요되므로 <br>
								이를 감안하여 시작일을 설정해 주세요.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<label>프로젝트 시작일 : </label> <input type="date"
									class="form-control form-control-sm" name="pStartDate"
									style="width: 50%; margin-left: 15px; display: inline; text-align: center;">
								<br> <label>프로젝트 종료일 : </label> <input type="date"
									class="form-control form-control-sm" name="pCloseDate"
									style="width: 50%; margin-left: 15px; display: inline; text-align: center;">
							</div>
						</div>
					</div>

					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">해시태그</div>
							<div class="accdesc">
								해시태그에 보여질 태그들을<br> 작성해주세요. <br> 여러 태그들을 입력하실 경우 <br>
								콤마 (,) 로 구분해주세요.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box nonborder">
								<label>#</label> <input type="text"
									class="form-control form-control-sm" name="pHashTag"
									placeholder="예) 물쇼, 인디밴드, 상큼발랄"
									style="width: 96%; display: inline;">
							</div>
						</div>
					</div>
				</div>
				<div class="accBtn">
					<span>리워드정보</span>
				</div>
				<div class="accContainer" id="rewardContainer">
					<div class="accHeadBox">
						<div style="width: 50%; float: left;">
							<i><p>&nbsp;&nbsp;두 번째.</p></i>
							<p>리워드 정보 입력하기</p>
						</div>
						<div
							style="width: 42%; float: left; text-align: right; line-height: 18px; padding-top: 30px;">
							<span> 프로젝트를 후원해주실<br> 소중한 서포터분들에게 드리는 작은 선물입니다<br>
								한 가지 리워드에 여러가지 아이템을 조합하는 것도 가능합니다<br> 리워드는 최대 10개까지 생성하실 수
								있습니다
							</span>
						</div>
						<div class="clearFloat"></div>
					</div>
					<div class="accHeadDrawline"></div>
					<div class="rewardBox">
						<div class="leftBoxArea">
							<div class="nthReward"></div>
						</div>
						<div class="rewardContentBox">
							<div class="rewardContent">
								<div class="rewardContentLeft">리워드 이름</div>
								<div class="rewardContentRight">
									<input type="text" class="form-control form-control-sm"
										name="rList[0].rName" style="width: 88%; required">
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">금액</div>
								<div class="rewardContentRight">
									<input type="number" class="form-control form-control-sm"
										name="rList[0].rPrice"
										style="width: 30%; display: inline-block;"><label
										style="padding: 5px;">원</label>
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">리워드 설명</div>
								<div class="rewardContentRight">
									<textarea rows="8" class="form-control form-control-sm"
										id="rExplain" name="rList[0].rExplain"
										style="width: 100%; resize: none;"></textarea>
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">옵션</div>
								<div class="rewardContentRight">
									<input type="radio" class="optionrad" name="rList[0].rOptionNo"
										value="1" checked> <label for="option1">옵션 입력이
										필요 없는 리워드입니다.</label><br> <input type="radio" class="optionrad"
										name="rList[0].rOptionNo" value="2"> <label
										for="option2">선택 옵션이 필요한 리워드입니다. <span>(사이즈, 색상
											등)</span></label><br> <input type="radio" class="optionrad"
										name="rList[0].rOptionNo" value="3"> <label
										for="option3">직접 입력 옵션이 필요한 리워드입니다. <span>(각인,
											메세지 등)</span></label>
								</div>
							</div>
							<div class="rewardContent" style="display: none;">
								<div class="rewardContentLeft"></div>
								<div class="rewardContentRight">
									<textarea rows="4" name="rList[0].rOptionAdd"
										class="form-control form-control-sm" style="resize: none;"></textarea>
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">배송조건</div>
								<div class="rewardContentRight">
									<input type="checkbox" id="shipChk" name="rList[0].rShipCDT" value="1">
									<label for="shipChk">배송을 위해 주소지가 필요합니다.</label>
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">제한수량</div>
								<div class="rewardContentRight">
									<p>
										리워드를 <input type="number" class="form-control form-control-sm"
											name="rList[0].rLimit" style="display: inline; width: 15%;">
										개로 제한합니다.
									</p>
								</div>
							</div>
							<div class="rewardContent">
								<div class="rewardContentLeft">발송예정일</div>
								<div class="rewardContentRight">
									<input type="date" class="form-control form-control-sm"
										name="rList[0].rShipDate" style="width: 60%;">
								</div>
							</div>
						</div>
						<div class="rightBoxArea">
							<a href="javascript: void(0);" class="removeReward"> <i
								class="material-icons">delete_forever</i>
							</a>
						</div>
						<div class="clearFloat"></div>
					</div>
					<div class="rewardBtnArea" id="rewardBtnArea">
						<button type="button" id="addRewardBtn" class="btn btn-primary"
							onclick="addReward();"
							style="background-color: #F39C12; border-color: #fff; color: #fff;">리워드
							추가</button>
					</div>
				</div>
				<div class="accBtn">
					<span>스토리</span>
				</div>
				<div class="accContainer">
					<div class="accHeadBox">
						<div style="width: 50%; float: left;">
							<i><p>&nbsp;&nbsp;세 번째.</p></i>
							<p>스토리 입력하기</p>
						</div>
						<div
							style="width: 42%; float: left; text-align: right; line-height: 18px; padding-top: 30px;">
							<span> </span>
						</div>
						<div class="clearFloat"></div>
					</div>
					<div class="accHeadDrawline"></div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">소개영상 / 사진 등록</div>
							<div class="accdesc">
								- 프로젝트 본문 상단에 업로드될 영상 또는 사진을 올려주세요 (택1)<br> - 영상은 YouTube,
								Vimeo에 업로드 후 URL을 입력하여 영상을 삽입할 수 있습니다.<br> - YouTube,
								Vimeo에 등록된 썸네일로 동영상 시작 이미지를 사용하려면 등록된 영상과 썸네일이 600px 이상이어야 합니다.<br>
								- 영상이 없다면 사진을 등록해주세요.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<input type="text"
									class="form-control form-control-sm nooutline" id="pMainImage"
									name="pMainImage" style="width: 75%; display: inline-block;">
								<button type="button" class="btn btn-warning customized">등록하기</button>
								<div class="box-img-area story">
									<div id="noImage"
										style="margin: auto; padding: 0; border: none;">
										<i class="material-icons"
											style="color: #999; margin-top: 80px; font-size: 40px; opacity: 0.6; display: block;">error_outline</i>
										<span style="color: #999; font-size: 12px;">등록된 사진/영상이
											없습니다.</span>
									</div>
								</div>
								<a href="javascript:void(0)" id="deleteMainImage"
									style="display: inline-block; vertical-align: top; margin-top: 20px;">
									<i class="material-icons">highlight_off</i>
								</a>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로젝트 요약문구</div>
							<div class="accdesc">
								프로젝트를 통해 무엇을 만들고 싶은지,<br> 이루고 싶은 목표가 무엇인지 알려주세요. <br>
								서포터가 제품의 장점이나 특징을 잘 이해할 수 있도록 간략하게 소개하세요.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<textarea rows="5" maxlength="100"
									class="form-control form-control-sm" id="pSummaryText"
									name="pSummaryText" style="width: 100%; resize: none;"></textarea>
								<div class="form-length-chk">
									<span id="pSummaryTextChk">0</span>/100
								</div>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="contentarea">
							<div class="contentagreement">
								<p>
									두드림에서 제공하는 심의 가이드라인을 반드시 확인하고 <br>
									<br> 모든 항목의 내용을 준수하여야 합니다. <br>
									<br> 다음의 사항을 동의해야 스토리를 작성하실 수 있습니다.
								</p>
								<div class="chkboxarea">
									<span class="custom-control custom-checkbox"> <input
										type="checkbox" class="custom-control-input" id="storychk1"
										value="1"> <label class="custom-control-label"
										for="storychk1">두드림 심의 가이드라인을 숙지하여야 합니다.</label>
									</span> <span class="custom-control custom-checkbox"> <input
										type="checkbox" class="custom-control-input" id="storychk2"
										value="1"> <label class="custom-control-label"
										for="storychk2">두드림은 담당기관의 해석을 우선시 합니다.</label>
									</span> <span class="custom-control custom-checkbox"> <input
										type="checkbox" class="custom-control-input" id="storychk3"
										value="1"> <label class="custom-control-label"
										for="storychk3">관계 법령을 준수하여야 합니다.</label>
									</span> <span class="custom-control custom-checkbox"> <input
										type="checkbox" class="custom-control-input" id="storychk4"
										value="1"> <label class="custom-control-label"
										for="storychk4">제3자의 지적재산권을 침해하지 않아야 합니다.</label>
									</span>
								</div>
							</div>
							<div class="contentinfoarea">
								<p>최종 승인 이후에는 스토리를 수정할 수 없습니다. 신중하게 작성해주세요!</p>
							</div>
							<div class="projectcontent">
								<textarea rows="37" id="pStory" name="pStory"
									style="width: 100%; resize: none;"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="accBtn">
					<span>아티스트</span>
				</div>
				<div class="accContainer">
					<div class="accHeadBox">
						<div style="width: 50%; float: left;">
							<i><p>&nbsp;&nbsp;네 번째.</p></i>
							<p>아티스트 정보 입력하기</p>
						</div>
						<div
							style="width: 42%; float: left; text-align: right; line-height: 18px; padding-top: 30px;">
							<span> </span>
						</div>
						<div class="clearFloat"></div>
					</div>
					<div class="accHeadDrawline"></div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">아티스트 정보</div>
							<div class="accdesc">아티스트님의 활동 정보를 입력해주세요</div>
						</div>
						<div class="info-box">
							<div class="edit-box artistInfo">
								<div class="artistinfoarea">
									<span>아티스트 이름 : </span> <input type="text"
										class="form-control form-control-sm" name="pArtistName"
										style="display: inline-block; width: 50%; height: 28px;"
										placeholder="예) Sun희">
								</div>
								<div class="artistinfoarea">
									<span>아티스트 소개 : </span>
									<textarea rows="5" class="form-control form-control-sm" name="pArtistIntroduction"
										style="display: inline-block; width: 74%; font-size: 12px; resize: none;"
										placeholder="아티스트님을 소개할 수 있는 문구를 간략히 적어주세요!"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">프로필 이미지</div>
							<div class="accdesc">
								아티스트 프로필 영역에<br> 노출되는 이미지입니다.
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<div class="profileimgarea">
									<div class="profilenoimg">
										<i class="material-icons">account_circle</i> <span>등록된
											이미지가 없습니다.</span>
									</div>
								</div>
								<div class="profileimgdesc">
									<input type="file" name="uploadfile1"
										style="background-color: #fff; width: 100%; height: 20px; font-size: 8px;">
								</div>
								<div class="clearFloat"></div>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">소셜 네트워크</div>
							<div class="accdesc">
								서포터가 확인할 수 있는 <br> 아티스트님의 페이스북, 인스타그램 <br> 링크 등을
								등록해주세요!
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box">
								<div>
									<img src="resources/images/insertFormImages/facebook.jpg"
										style="width: 20px; height: 20px; border-radius: 4px; opacity: 0.9; margin-right: 10px;">
									<label for="pArtistSns1">https://www.facebook.com/</label> <input
										class="form-control form-control-sm" type="text"
										id="pArtistSns1" name="pArtistSns1"
										style="display: inline; width: 150px; height: 24px;">
								</div>
								<div>
									<img src="resources/images/insertFormImages/instagram.jpg"
										style="width: 20px; height: 20px; border-radius: 4px; opacity: 0.9; margin-right: 10px;">
									<label for="pArtistSns2">https://www.instagram.com/</label> <input
										class="form-control form-control-sm" type="text"
										id="pArtistSns2" name="pArtistSns2"
										style="display: inline; width: 150px; height: 24px;">
								</div>
							</div>
						</div>
					</div>
					<div class="acc-box">
						<div class="title-box">
							<div class="acctitle">이메일 & 전화번호</div>
							<div class="accdesc">
								서포터 문의시 연락이 가능하고 <br> 프로젝트 페이지에서 노출이 가능한<br> 대표 이메일,
								전화번호를 입력해주세요
							</div>
						</div>
						<div class="info-box">
							<div class="edit-box artistInfo">
								<div class="artistinfoarea">
									<div
										style="display: inline-block; width: 100px; text-align: right;"
										align="right">
										<span>이메일 : </span>
									</div>
									<input type="text" class="form-control form-control-sm"
										name="pArtistEmail"
										style="display: inline; width: 50%; height: 28px;">
								</div>
								<div class="artistinfoarea">
									<div
										style="display: inline-block; width: 100px; text-align: right;"
										align="right">
										<span>전화번호 : </span>
									</div>
									<input type="text" class="form-control form-control-sm"
										name="pArtistPhone"
										style="display: inline; width: 50%; height: 28px;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<button type="button" onclick="goSave();">임시저장하기</button>
		</div>
	</div>
	<script>
		// 페이지 로드 완료시 인서트폼은 숨깁니다. (동의를 완료해야 보여집니다)
		$(function() {
			$("#insertFundForm").hide();
		});

		// 만약 동의 버튼중 하나라도 변한다면 validate() 메소드 실행
		$(".checklist input[type='checkbox']").change(function() {
			validate();
		});

		// 모든 동의버튼이 체크되어야 다음으로 버튼이 활성화 됩니다.
		function validate() {
			var result1, result2, result3, result4;
			var $chk1 = $("#reward-create-process-checklist1");
			var $chk2 = $("#reward-create-process-checklist2");
			var $chk3 = $("#reward-create-process-checklist3");
			var $chk4 = $("#reward-create-process-checklist4");
			if ($chk1.is(':checked'))
				result1 = true;
			if ($chk2.is(':checked'))
				result2 = true;
			if ($chk3.is(':checked'))
				result3 = true;
			if ($chk4.is(':checked'))
				result4 = true;
			if (result1 && result2 && result3 && result4)
				$("#goInsertForm").attr('disabled', false);
			else
				$("#goInsertForm").attr('disabled', true);
		}
		// 동의를 모두 체크하고 넘어가면 인서트폼을 보여주는 메소드
		function checkAgreement() {
			$("#agreementForm").hide();
			$("#insertFundForm").show();
			$('html').animate({
				scrollTop : 0
			}, 300);
			if ($("#rad1").is(":checked")) {
				$("#ac li>label").css("height",
						$("#rad1").next().next().outerHeight());
				$("#ac").css("height", $("#rad1").next().next().outerHeight());
			}
		};
		// 임시저장하는 메소드입니다. pStatusNum = 1 으로 세팅합니다. 
		function goSave() {
			var frm = $("#insertFrm");
			$("#pStatusNum").val(1);
			console.log("임시저장 완료");
			frm.submit();
		}
	</script>
	<script>
		// 프로젝트 내용 입력전 동의를 체크해야 입력폼이 보이게하는 메소드입니다.
		$(".contentinfoarea").hide();
		$(".projectcontent").hide();
		$(document).on("click", ".chkboxarea input[type='checkbox']",
				function() {
					var chk1 = $("#storychk1:checked").val();
					var chk2 = $("#storychk2:checked").val();
					var chk3 = $("#storychk3:checked").val();
					var chk4 = $("#storychk4:checked").val();
					if (chk1 == 1 && chk2 == 1 && chk3 == 1 && chk4 == 1) {
						$(".contentagreement").hide('slow');
						$(".contentinfoarea").show('slow');
						$(".projectcontent").show('slow');
						var scrollPosition = $(".contentarea").offset().top;
						$("html").animate({
							scrollTop : scrollPosition
						}, 700);
					}
				});

		$(function() {
			// 리워드에서 옵션선택 (라디오)를 선택시 동작하는 메소드, 박스 크기를 늘이고 추가함.
			$(document)
					.on(
							"change",
							"input[type='radio']",
							function() {
								var value = $(this).val();
								if (value == 2) {
									$(this).parent().parent().next().css(
											"display", "block");
									$(this)
											.parent()
											.parent()
											.next()
											.children()
											.next()
											.children()
											.text("예)\n화이트골드 / XL \n오리엔탈블루 / L");
								} else if (value == 3) {
									$(this).parent().parent().next().css(
											"display", "block");
									$(this)
											.parent()
											.parent()
											.next()
											.children()
											.next()
											.children()
											.text(
													"각인 메시지, 카드에 담길 메시지 등 \n서포터가 남길 메시지를 위해 \n설명을 충분히 적어주세요.");
								} else {
									$(this).parent().parent().next().css(
											"display", "none");
								}
							});
		});

		// 길이를 체크해주는 메소드입니다.
		$(function() {

			// pTitle(제목) input태그의 길이를 체크해주는 메소드
			$("input[name='pTitle']").on("input", function() {
				var leng = $("input[name='pTitle']").val().length;
				$("#pTitleLengthChk").text(leng);
			});

			// pSTitle(짧은제목) input태그의 길이를 체크해주는 메소드
			$("input[name='pSTitle']").on("input", function() {
				var leng = $("input[name='pSTitle']").val().length;
				$("#pSTitleLengthChk").text(leng);
			});

			// pSummaryText(요약내용) textarea태그의 길이를 체크해주는 메소드
			$("textarea[name='pSummaryText']").on("input", function() {
				var leng = $("textarea[name='pSummaryText']").val().length;
				$("#pSummaryTextChk").text(leng);
			});
		});
	</script>

	<!--리워드에 관련된 스크립트만 모아놓았습니다.-->
	<script>
		var i = 1;
		var count = 1;
		function addReward() {
			var addbox = '<div class="rewardBox"><div class="leftBoxArea"><div class="nthReward"></div></div><div class="rewardContentBox"><div class="rewardContent"><div class="rewardContentLeft">리워드 이름</div><div class="rewardContentRight"><input type="text" class="form-control form-control-sm" name="rList['
					+ i
					+ '].rName" style="width: 88%;" required></div></div><div class="rewardContent"><div class="rewardContentLeft">금액</div><div class="rewardContentRight"><input type="number" class="form-control form-control-sm" name="rList['
					+ i
					+ '].rPrice" style="width: 30%; display: inline-block;"><label style="padding: 5px;">원</label></div></div><div class="rewardContent"><div class="rewardContentLeft">리워드 설명</div><div class="rewardContentRight"><textarea rows="8" class="form-control form-control-sm" id="rExplain" name="rList['
					+ i
					+ '].rExplain" style="width: 100%; resize :none;"></textarea></div></div><div class="rewardContent"><div class="rewardContentLeft">옵션</div><div class="rewardContentRight"><input type="radio" class="optionrad" name="rList['+i+'].rOptionNo" value="1" checked><label for="option1">옵션 입력이 필요 없는 리워드입니다.</label><br><input type="radio" class="optionrad" name="rList['+i+'].rOptionNo" value="2"><label for="option2">선택 옵션이 필요한 리워드입니다. <span>(사이즈, 색상 등)</span></label><br><input type="radio" class="optionrad" name="rList['+i+'].rOptionNo" value="3"><label for="option3">직접 입력 옵션이 필요한 리워드입니다. <span>(각인, 메세지 등)</span></label></div></div><div class="rewardContent" style="display:none;"><div class="rewardContentLeft"></div><div class="rewardContentRight"><textarea rows="4" name="rList['+i+'].rOptionAdd" class="form-control form-control-sm" style="resize: none;"></textarea></div></div><div class="rewardContent"><div class="rewardContentLeft">배송조건</div><div class="rewardContentRight"><input type="checkbox" id="shipChk" name="rList['+i+'].rShipCDT"><label for="shipChk">배송을 위해 주소지가 필요합니다.</label></div></div><div class="rewardContent"><div class="rewardContentLeft">제한수량</div><div class="rewardContentRight"><p>리워드를 <input type="number" class="form-control form-control-sm" name="rList['
					+ i
					+ '].rLimit" style="display: inline; width: 15%;"> 개로 제한합니다.</p></div></div><div class="rewardContent"><div class="rewardContentLeft">발송예정일</div><div class="rewardContentRight"><input type="date" class="form-control form-control-sm" name="rList['
					+ i
					+ '].rShipDate" style="width: 60%;"></div></div></div><div class="rightBoxArea"><a href="javascript: void(0);" class="removeReward"><i class="material-icons">delete_forever</i></a></div><div class="clearFloat"></div></div>';
			$("#rewardBtnArea").before(addbox);
			var scrollPosition = $("#rewardBtnArea").offset().top-800;
			$("html").animate({
				scrollTop : scrollPosition
			}, 700);
			i++;
			count++;
			if (count == 10) {
				$("#addRewardBtn").attr('disabled', true);
				$("#addRewardBtn").text("리워드는 10개까지만 가능합니다.");
			} else {
				$("#addRewardBtn").attr('disabled', false);
				$("#addRewardBtn").text("리워드 추가");
			}
			giveRewardNum();
		};
		$(document).on("click", ".removeReward", function() {
			if (count == 1) {
				return false;
			}
			count--;
			var $target = $(this).parent().parent();
			$target.hide('slow', function() {
				$target.remove();
			});
			if (count < 10) {
				$("#addRewardBtn").attr('disabled', false);
				$("#addRewardBtn").text("리워드 추가");
			}
			setTimeout(function() {
				giveRewardNum();
			}, 700);
		})
		// 리워드에 번호를 매겨주는 메소드입니다.
		function giveRewardNum() {
			var num = 1;
			// 사이즈 기본값 : 4 (1개있을 경우임);
			var size = document.getElementById("rewardContainer").childElementCount;
			for (var i = 0; i < size - 3; i++) {
				var input = '<span>리워드 #' + (i + 1) + '</span>';
				var $target = $("#rewardContainer>div:nth-child(" + (i + 3)
						+ ")>div:first-child>div");
				$target.empty();
				$target.append(input);
			}
		}
		giveRewardNum();
	</script>

	<script>
		// 아코디언과 관련된 스크립트입니다.
		$(".accBtn:not(.active)").next().slideUp();
		$(function() {
			$(".accBtn").click(function() {
				$(".accBtn").removeClass("active");
				$(this).addClass("active");
				$(this).next().slideDown();
				$(".accBtn:not(.active)").next().slideUp();
				var scrollPosition = $(".accWrapper").offset().top;
				$("html").animate({
					scrollTop : scrollPosition
				}, 400);
			});
		});
	</script>
</body>
</html>