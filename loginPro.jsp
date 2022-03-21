<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신의 아이디는 request.getParameter("id")이고<br>
	암호는  request.getParameter("pwd") 입니다.
	</body>
</html>