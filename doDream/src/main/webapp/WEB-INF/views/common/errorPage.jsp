<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
	<div id="error-container" style="text-align:center;">
		<h1>Error</h1>
		<h2 style="color:red;">
			${msg} <br>
			<%= request.getAttribute("javax.servlet.error.khssage")%>
		</h2>
		<a href="home.dr">시작페이지로 이동</a>	
	</div>

</body>
</html>




