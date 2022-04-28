<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
 	request.setCharacterEncoding("UTF-8");
	
		String id = "";
		String name = "";
		String pwd = "";
		
		id = request.getParameter("id");
		name = request.getParameter("name");
		pwd = request.getParameter("pwd");
	//1. jdbc driver 등록
		Class.forName("org.mariadb.jdbc.Driver");
	//2. db 와 연결 (Connection) 생성
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
		
		Connection con = DriverManager.getConnection(url,user,password);
		
		String sql = "update login set name = ?,pwd = ? where id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,pwd);
		pstmt.setString(3, id);
		pstmt.executeUpdate();
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		con.close();
		pstmt.close();
		
		response.sendRedirect("list.jsp");
	%>
</body>