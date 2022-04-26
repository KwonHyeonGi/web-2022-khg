<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입완료</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	아이디 : <%=request.getParameter("id")%><br> 
	비밀번호 : <%=request.getParameter("pw")%><br> 
	회원가입이 완료되었습니다.
</body>
</html>