$(function(){
	
	// summernote 출력 및 부가 기능 메소드
	$('#summernote').summernote({
		width : 800,		// 에디터 넓이
		height: 300,        // 에디터 높이
		focus: true,        // set focus to editable area after initializing summernote
		lang: 'ko-KR',		// 언어 : 한국어 설정
		
		// 이미지 업로드 이벤트가 발생했을 때 
		callbacks:{
			onImageUpload: function(files, editor) {
				// 업로드된 이미지를 ajax를 이용하여 서버에 저장
				
        	   sendFile(files[0], this);
        	   
			}
		}
	});
	
	
	
	
});

// 프로젝트 등록에 들어가는 서머노트
function loadSummernote(){
	$('#pStorySummernote').summernote({
	width : 880,		// 에디터 넓이
	height: 890,        // 에디터 높이
	focus: true,        // set focus to editable area after initializing summernote
	lang: 'ko-KR',		// 언어 : 한국어 설정
	disableResizeEditor: true,
	// 이미지 업로드 이벤트가 발생했을 때 
	callbacks:{
		onImageUpload: function(files, editor) {
			// 업로드된 이미지를 ajax를 이용하여 서버에 저장
				
				sendFile(files[0], this);
				
			}
		}
	});
};

// 업로드된 이미지를 ajax를 이용하여 서버로 전송하여 저장하는 함수
function sendFile(file, editor){
	
	form_data = new FormData();
	// FormData : form 태그 내부 값 전송을 위한  k:v 쌍을 쉽게 생성할 수 있는 객체
	
	form_data.append("uploadFile", file);
	// FormData 객체에 새로운 K, V 를 추가
	
	
	$.ajax({
		url : "insertImage.dr",
		type : "post",
		data : form_data,
		dataType: "text",
		enctype: "multipart/form-data",  
		cache : false,
        contentType : false,
        // contentType : 서버로 전송되는 데이터의 형식 설정
        // 기본값  : application/x-www-form-urlencoded; charset=UTF-8
        // 파일 전송 시 multipart/form-data 형식으로 데이터를 전송해야 하므로
        // 데이터의 형식이 변경되지 않도록 false로 지정.
        processData : false,
        // processData : 서버로 전달되는 값을 쿼리스트링으로 보낼경우 true(기본값), 아니면 false
        //				파일 전송 시 false로 지정 해야 함.
        
		success : function(result){
			console.log(result);
			
			// 저장된 이미지를 에디터에 삽입
			$(editor).summernote('editor.insertImage', result);
			
			// 에디터에 삽입된 이미지를 관리하기 위한 hidden 타입 input태그 
			var $imgList = $("input[name=imgList]");
			
			// 이미지 저장 성공시 반환되는 이미지 경로에서 파일명만 추출하여 
			// imgList에 추가
			var cutPoint = result.lastIndexOf("/");
			result = result.substring(cutPoint + 1);
			
			if($imgList.val() == ""){
				$imgList.val(result);
			}else{
				var str = $imgList.val();
				str = str + "," + result;
				$imgList.val(str);
			}
			
			console.log($imgList.val());
		},
		error : function(){
		}
		
	});
	
}