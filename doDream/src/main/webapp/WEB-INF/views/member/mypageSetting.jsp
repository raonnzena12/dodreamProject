<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

   td{
      padding-bottom: 15px;
      padding-right: 0px;
   }
   
   #myInfoForm ::placeholder{
      font-size: 14px;
   }
   
   #deleteMemMsg a{
      text-decoration: none;
      color: red;
   }
   
   #deleteMemMsg mark{
      color: #8E44AD;
      background-color: white;
      padding: 0; 
   }

</style>

</head>
<body>
   <jsp:include page="../member/mypageHeader.jsp"/>
   
   <div class="container-fluid">
   <br>
   <div class="row">
      <div class="col-md-12">
         <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">         
               <h3 class= "text-center">나의 정보</h3>
               <br>
               <form action="myInfoUpdate.dr" id="myInfoForm" method="post" class="form-group" enctype="multipart/form-data">
	               <input type="hidden" value="${loginUser.userNo}" name="userNo">
	               <input type="hidden" value="${loginUser.userEmail}" name="userEmail">
	               <input type="hidden" value="${loginUser.userProfileImage}" name="userProfileImage">
	               <input type="hidden" value="${loginUser.userAddress}" name="userAddress" id="userAddress">
	               <input type="hidden" value="${loginUser.userSelf}" name="userSelf">
	               <input type="hidden" value="${loginUser.userPhone}" name="userPhone">
                  <table>
                     <tr>
                        <td style="width: 20%">
                           프로필사진
                        </td>
                        <td style="width: 60%">
                           <div class="text-center">
                              <c:choose>
								<c:when test="${empty loginUser.userProfileImage}">
								<img alt="프로필사진" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="rounded-circle float-sm ml-3" style="width: 150px; height: 150px;"/>
								</c:when>
								<c:when test= "${fn:contains(loginUser.userProfileImage,'http://')}">
								<img alt="프로필사진" src="${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
								</c:when>
								<c:otherwise>
								<img alt="프로필사진" src="resources/images/userProfileImage/${loginUser.userProfileImage}" class="rounded-circle float-sm" style="width: 150px; height: 150px;"/>
								</c:otherwise>
								</c:choose>
                           </div>
                        </td>
                        <td style="width: 20%" class="text-center">
                           <button type="button" class="btn btn-warning btn-sm mb-2" id="changeImgBtn">변경하기</button>
                        </td>
                     </tr>

                     <tr>
                        <td class="text-center">닉네임</td>
                        <td><input type="text" class="form-control" name="userNickname" value="${loginUser.userNickname}" placeholder="변경할 닉네임을 입력해주세요"></td>
                        <td> <span id="nicknameAlert"></span><td>
                     </tr>
                     <tr>
                        <td class="text-center">자기소개</td>
                        <td colspan="2"><input type="text" class="form-control" name="userSelf"  id="userSelf" value="${loginUser.userSelf}" placeholder="자기소개를 입력해주세요."></td>
                     </tr>
                     <tr>
                        <td class="text-center" rowspan="2">주소</td>
                        <td class="pr-2"><input type="text" class="form-control" name="address" id="address" placeholder="리워드 수령시 기본 주소"></td>
                        <td class="text-center"><button type="button" class="btn btn-warning btn-sm" id="postcodify_search_button">주소검색</button></td>
                     </tr>
                     <tr>
                        <td><input type="text" class="form-control" name="details" id="details"  placeholder="상세 주소 입력"></td>
                        <td><input type="text" class="form-control" name="postcode" id="postcode" placeholder="우편번호"></td>
                     </tr>
                     <tr>
                        <td class="text-center">전화번호</td>
                        <td class="pr-2"><input type="tel" class="form-control" name="userPhone" placeholder="전화번호를 입력해주세요" value="${loginUser.userPhone}"></td>
                        <td class="text-center"><button class="btn btn-warning btn-sm mb-2 text-right" type="button">인증하기</button></td>
                     </tr>
                     <tr>
                        <td></td>
                        <td><input type="file" id="changbtn" style="display:none;" name="uploadImg"></td>
                     </tr>
                     <tr>
                     <td></td>
                     <td colspan="2">
                        <div class="row">
                        <div class="col-md-12 text-center">
                        <button class="btn btn-sm mb-2 btn-warning">수정하기</button><button class="btn btn-sm mb-2 btn-warning" onclick="location.href='home.dr'">돌아가기</button>
                        </div>
                        </div>
                     </td>
                     </tr>
                  </table>
                  <div id="deleteMemMsg" class= "text-center">
                     <mark>두드림</mark>에서 탈퇴하시겠습니까? <a role="button" id="deleteMember">회원탈퇴</a>   
                  </div>
                           
               </form>
            </div>
            <div class="col-md-4">
            </div>
         </div>
      </div>
   </div>
</div>


<script>

   $(function () {
      //버튼 클릭 시 주소 검색 팝업 후 input태그 insert
      $("#postcodify_search_button").postcodifyPopUp({
           insertPostcode5 :"#postcode",
           insertAddress : "#address",
       });
      
      //사진 등록      
      $("#changeImgBtn").click(function() {
         $("#changbtn").click();
      });
      
      var sel_file;
      
      $("#changbtn").on("change", handleImgSelect);
      
      function handleImgSelect(e) {
         
         var file = e.target.files;
         var fileArr = Array.prototype.slice.call(file);
         
         fileArr.forEach(function(f) {
            if(!f.type.match("image.*")){
               alert("이미지 파일만 가능합니다.");
               return;
            }
            
            sel_file = f;
            
            var reader = new FileReader();
            reader.onload = function(e) {
               $(".userProfileImage").attr("src", e.target.result).css({"width":"140px","height":"140px"});
               console.log(e.target.result);
            }
            
            reader.readAsDataURL(f);
         });
      };
      // 사진등록 끝
      
      //닉네임 변경
      $("#userNickname").blur(function(){
         var originNickname = "${loginUser.userNickname}";
         var userNickname = $("#userNickname").val().trim();
         if(ogrinNickname != userNickname){
            if(userNickname.length > $("#userNickname").attr("maxlength")){
               alert("닉네임은 20자 이내로 작성해주세요!^_^");
               $("#userNickname").focus();
            }else{
               $.ajax({
                  type : "post",
                  url : "checkNickname.dr",
                  data : {userNickname : userNickname},
                  success: function(data) {
                     if(data == "1"){
                        $("#nicknameAlert").show().text("이미 사용 중인 닉네임입니다.").css("color", "#8E44AD");
                        $("#userNickname").val("").focus();
                     }else{
                        $("#nicknameAlert").show().text("사용 가능한 닉네임입니다.").css("color", "#F39C12");
                     }
                  }
               });
            }            
         }
      });
      
   });
   
   
   //주소분할입력
    $(document).ready(function(){
       
       var address = "${loginUser.userAddress}";
       var res = address.split(",");
       $("#address").attr("value",res[0]);
       $("#details").attr("value",res[1]);
       $("#postcode").attr("value",res[2]);
              
    });
   
   //회원탈퇴버튼 클릭 시 오픈프로젝트 조회
   $("#deleteMember").click(function(){
	   $.ajax({
		   url: "countOpenPJT.dr",
		   type: "post",
		   data: {userNo : ${loginUser.userNo}},
		   success: function(result){
			   console.log(result);
			   if(result > 0){
				   alert("진행중인 프로젝트가"+result+"건이 있습니다. 탈퇴를 진행할 수 없습니다.");
				   $("#deleteMember").bind("click", false);
			   }else{
				   alert("진행중인 프로젝트가 없습니다.");
				   location.href = "deleteForm.dr?userNo=${loginUser.userNo}";
			   }
		   }
	   });
   });
   
   $(document).ready(function() {
		var userSelf = $("#userSelf").val();
		console.log(userSelf);
	});
   
   
   
   
</script>

</body>
</html>