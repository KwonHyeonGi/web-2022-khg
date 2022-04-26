<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	제 목 : <%=request.getParameter("title"  ) %><br> 
	게시판 : <%=request.getParameter("board"  ) %><br>
	내 용 : <%=request.getParameter("content"  ) %><br>
</body>
</html>

