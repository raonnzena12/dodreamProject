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
                  <div class="text-center">
                     <mark>프로젝트</mark>가 진행중인 경우 <mark>탈퇴</mark>가 진행되지 않습니다. <br>
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