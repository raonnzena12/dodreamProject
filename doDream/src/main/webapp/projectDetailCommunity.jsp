<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectDetailCommunity</title>
<%@ include file = "WEB-INF/views/common/menubar.jsp" %>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       <style>
           
           #section{
               width: 1000px;
               height: auto;
               margin: auto;
               min-height: 1600px;
           }
           #content{
               width: 100%;
               min-height: 1000px;
               height:auto;
              /*  border: 1px solid black; */
           }
           #detailContent2{
                width:70%;
                height: auto;
                min-height: 1000px;
                border: 1px solid black;
                display: block;
                float: left;
           }
           section{
               width: 100%;
               /*height: 50px;*/
               /* border: 1px solid black; */
               display: block;
           }
           #aside{
               width: 30%;
               height: auto;
               min-height: 1000px;
               /* border: 1px solid black; */
               display: block;
               float: right;

           }
           #detailCommunity{
           		width:100%;
                height: auto;
                min-height: 990px;
                border: 1px solid #ddd;
                display: block;
                float: left;
                margin: 10px 0 0 0;
                border-radius: 3px;
           }
           /* ==============커뮤니티================ */
           #writebtn{
           		width: 100px;
           		height: 100px;
           }
       </style>
</head>
<body>
	<section id="section">
		<%@ include file = "projectDetailHeader.jsp" %>
            
		<section id="content" class="clearfix">
			<section id="detailContent2">
			    <div id="detailCommunity">
					<div class="form-group">
						
				      	<textarea class="form-control"  id="exampleTextarea" rows="3" style="margin-top: 10px; margin-left: 10px; width:600px; height: 120px; resize:none;"></textarea>
				      	<button type="button" class="btn btn-primary btn-lg btn-block" id="writebtn">글쓰기</button>
				    </div>
				</div>            
			</section>
			
			<aside id="aside">
				<%@ include file = "projectDetailAside.jsp" %>
			</aside>
		</section>  


   	</section>
	

</body>
</html>