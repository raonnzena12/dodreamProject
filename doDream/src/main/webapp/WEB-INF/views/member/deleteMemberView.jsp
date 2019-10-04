<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #deleteMemberForm mark{
      color: #8E44AD;
      background-color: white;
      padding: 0;
   }
   
   #yes, #no{
      color: #444;
   }

</style>
</head>
<body>
   <jsp:include page="../member/mypageHeader.jsp"/>
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-12">
         <br>
         </div>
      </div>   
      <div class="row" id="deleteMemberForm">
         <div class="col-md-4">
         </div>
         <div class="col-md-4">
            <div class="row">
               <div class="col-md-12">
                  <div class="text-center">
                     <img src="${contextPath}/resources/images/DoDream-2e.png" style="width: 200px; height: 100px;">
                  </div>
                  <br>
                  <h4 class="text-center text-danger">
                     정말 두드림에서 탈퇴하시겠습니까?
                  </h4>
                  <br>
                  <div class="text-center">
                     <div class="text-center">${loginUser.userNickname }님</div>
                     <br>
                     <div class="text-left">
                     <mark>오픈 프로젝트</mark>가 <mark>진행중</mark>인 경우 <mark>탈퇴</mark>가 진행되지 않습니다. <br>
                     <mark>참여한 프로젝트</mark> 중 <mark>진행중</mark>인 프로젝트는 자동으로 <mark>환불 처리</mark>됩니다.<br>
                     <mark>참여한 프로젝트</mark> 중 <mark>완료</mark>된 프로젝트의 <mark>리워드</mark> 수령 주소지는 <mark>변경이 불가</mark>합니다. <br>
                     <mark>리워드</mark>의 환불처리도 <mark>불가</mark>합니다.<br>
                     1개월 내 동일한 <mark>Email</mark> 주소로 <mark>재가입</mark>이 <mark>불가</mark>합니다.<br>
                     그래도 <mark>두드림</mark>에서 <mark>탈퇴</mark>하시겠습니까?
                     </div>        
                  </div>
                  <br><br>
                  <div id="btnArea" class="text-center">
                     <button id="yes" class="btn btn-outline-warning btn-sm">네, 탈퇴하겠습니다.</button>
                     <button id="no" onclick="location.href='mypage.dr'" class="btn btn-outline-warning btn-sm">아니요.</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-4">
         </div>
      </div>
   </div>

</body>
</html>