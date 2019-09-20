<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>링크모음</title>
<style>
	.color {
		display: inline-block;
		width: 150px;
		height: 150px;
		line-height: 150px;
		text-align: center;
	}
	#fileSection {
		min-height: 700px;
		height: 100%;
	}
	#fileSection table th {
		text-align: center;
	}
	#fileSection table td:nth-child(1) {
		text-align: center;
	}
	#fileSection table td:nth-child(3) {
		text-align: right;
		padding-right: 20px;
	}
	#fileSection label {
		padding-right: 10px;
	}
	#fileSection input[type=checkbox]:checked+label {
		color: #999;
		text-decoration: line-through;
	}
</style>
</head>
<body>
	<section id="fileSection">
	<!-- <a href="https://docs.google.com/presentation/d/1XkfuofeyWaXsZRmGucVAaBB-h3BEeO77g1T0EaC5KQc/edit#slide=id.g5de696b7fa_0_156" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="스토리보드 PPT" >스토리보드 PPT</button></a> -->
	<a href="https://ovenapp.io/view/6PkJ9GJEJ4iv9eqJ7gJz2jDzuLfgXvIw/" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="오븐앱으로 만든 와이어프레임입니다. 화면구현 참고용으로 사용해주세요" >와이어프레임</button></a>
	<a href="https://www.wadiz.kr/web/wreward/main?keyword=&endYn=ALL&order=recommend" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="참고사이트" >와디즈</button></a>
	<a href="https://tumblbug.com/" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="참고사이트" >텀블벅</button></a>
	<!-- <a href="https://medium.com/@j.thechois/node-js%EB%A1%9C-sms-%EC%9D%B8%EC%A6%9D%EB%B2%88%ED%98%B8-%EC%8B%9C%EC%8A%A4%ED%85%9C-%EC%A7%81%EC%A0%91-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0-612b748257bb" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="Node.js로 구현하는 방법이네요 일단 참고용으로.." >SMS 인증번호 시스템</button></a> -->
	<a href="https://opentutorials.org/course/3424" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="생활코딩" >구글로그인 API</button></a>
	<a href="https://www.erdcloud.com/d/uytgmtPeSSvxrS49E" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="DB테이블" >erdCloud</button></a>
	<!-- <a href="https://www.auiproject.com/prj/view.html?i=MTA5MjE3OTczMjQ5NzIyMzkxMzIzLDEzMzg0LGty" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="프로젝트 일정관리 간트차트(클릭 후 주소창에서 엔터 한번 쳐주면 보임)" >AUI프로젝트</button></a> --><br><br>
	<a href="https://www.cmsfactory.net/10035" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="간편하게 아이콘 삽입하기" >구글 웹 아이콘</button></a>
	<a href="http://bootstrapk.com/" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="부트스트랩(한글/3버젼)" >부트스트랩</button></a>
	<a href="https://getbootstrap.com/" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="부트스트랩(영어/4버젼) - 자료 많음" >BootStrap</button></a>
	<a href="https://sweetalert2.github.io/" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="sweetalert - 디자인 얼럿창" >sweetalert2</button></a>
	<a href="https://www.layoutit.com/en" target="_blank"><button type="button" class="btn btn-light border" data-toggle="tooltip" data-placement="top" title="부트스트랩 기반 레이아웃 잡아주는 홈페이지" >layoutit</button></a><br>

	<hr>
	<br>
	<div class="color" style="background-color:#FFCD01;">#FFCD01</div>
	<div class="color" style="background-color:#F39C12; color:#fff;">#F39C12</div>
	<div class="color" style="background-color:#8E44AD; color:#fff;">#8E44AD</div>
	<hr>
	<table class="table">
		<tr>
			<th colspan="3"> 화면단 구현 체크리스트</th>
		</tr>
		<tr>
			<td style="width: 120px;">박성혁<br>고객센터</td>
			<td class="p">
				<input type="checkbox" name="p1" id="p1"> <label for="p1">고객센터 공지사항</label>
				<input type="checkbox" name="p2" id="p2"> <label for="p2">고객센터 이용약관</label>
				<input type="checkbox" name="p3" id="p3"> <label for="p3">고객센터 펀딩후기</label>
				<input type="checkbox" name="p4" id="p4"> <label for="p4">고객센터 펀딩후기 상세</label>
				<input type="checkbox" name="p5" id="p5"> <label for="p5">고객센터 FAQ</label>
			</td>
			<td style="width: 120px;"><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td>송창혁<br>펀딩등록</td>
			<td class="s">
				<input type="checkbox" name="s1" id="s1"> <label for="s1">프로젝트등록 체크리스트</label>
				<input type="checkbox" name="s2" id="s2"> <label for="s2">프로젝트등록(기본정보)</label>
				<input type="checkbox" name="s3" id="s3"> <label for="s3">프로젝트등록(리워드)</label>
				<input type="checkbox" name="s4" id="s4"> <label for="s4">프로젝트등록(스토리)</label>
				<input type="checkbox" name="s5" id="s5"> <label for="s5">프로젝트등록(아티스트)</label>
				<input type="checkbox" name="s6" id="s6"> <label for="s6">프로젝트등록완료</label>
			</td>
			<td><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td>양주연<br>펀딩상세</td>
			<td class="y">
				<input type="checkbox" name="y1" id="y1"> <label for="y1">프로젝트상세(스토리)</label>
				<input type="checkbox" name="y2" id="y2"> <label for="y2">프로젝트상세(커뮤니티)</label>
				<input type="checkbox" name="y3" id="y3"> <label for="y3">프로젝트상세(리워드)</label>
				<input type="checkbox" name="y4" id="y4"> <label for="y4">프로젝트상세(미리보기용)</label>
			</td>
			<td><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td>이영상<br>관리자</td>
			<td class="l">
				<input type="checkbox" name="l1" id="l1"> <label for="l1">관리자 메인</label>
				<input type="checkbox" name="l2" id="l2"> <label for="l2">회원관리</label>
				<input type="checkbox" name="l3" id="l3"> <label for="l3">블랙리스트회원관리</label>
				<input type="checkbox" name="l4" id="l4"> <label for="l4">프로젝트관리</label>
				<input type="checkbox" name="l5" id="l5"> <label for="l5">프로젝트심사</label>
				<input type="checkbox" name="l6" id="l6"> <label for="l6">신고관리</label>
				<input type="checkbox" name="l7" id="l7"> <label for="l7">결제관리</label>
			</td>
			<td><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td>제상란<br>회원</td>
			<td class="j">
				<input type="checkbox" name="j1" id="j1"> <label for="j1">회원가입</label>
				<input type="checkbox" name="j2" id="j2"> <label for="j2">비밀번호찾기</label>
				<input type="checkbox" name="j3" id="j3"> <label for="j3">비밀번호변경</label>
				<input type="checkbox" name="j4" id="j4"> <label for="j4">메뉴바-로그인 이후 메뉴</label>
				<input type="checkbox" name="j5" id="j5"> <label for="j5">마이페이지 펀딩</label>
				<input type="checkbox" name="j6" id="j6"> <label for="j6">마이페이지 팔로잉/팔로워</label>
				<input type="checkbox" name="j7" id="j7"> <label for="j7">마이페이지 알림</label>
				<input type="checkbox" name="j8" id="j8"> <label for="j8">마이페이지 펀딩로그</label>
				<input type="checkbox" name="j9" id="j9"> <label for="j9">마이페이지 프로필수정</label>
			</td>
			<td><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td>황선희<br>펀딩결제</td>
			<td class="h">
				<input type="checkbox" name="h1" id="h1"> <label for="h1">menubar/footer</label>
				<input type="checkbox" name="h2" id="h2"> <label for="h2">펀딩 목록</label>
				<input type="checkbox" name="h3" id="h3"> <label for="h3">펀딩 결제</label>
				<input type="checkbox" name="h4" id="h4"> <label for="h4">펀딩 결제완료</label>
				<input type="checkbox" name="h5" id="h5"> <label for="h5">펀딩 결제내역확인</label>
			</td>
			<td><span class="percent">0</span> %</td>
		</tr>
		<tr>
			<td colspan="3" class="e">
				<input type="checkbox" name="e1" id="e1"> <label for="e1">main</label>
			</td>
		</tr>
	</table>
	</section>
<script>
$(function(){
	$("input:checkbox").on("change", function(){
		var cha = $(this).parent().attr("class");
		var total = $(".table input[name^="+cha+"]").length;
		var chk = $(".table input[name^="+cha+"]:checked").length;
		var calc = Math.round((chk/total)*100);
		$(this).parent().next().children().eq(0).text(calc);
	});
});
</script>
</body>
</html>