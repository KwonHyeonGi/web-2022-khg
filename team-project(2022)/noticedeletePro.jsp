<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
		
	String id = request.getParameter("id");
	System.out.print(id);
	
		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
		
		Connection con = DriverManager.getConnection(url,user,password);
	//3. DB 연동
		String sql = "delete from notice where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
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
		
		response.sendRedirect("noticelist.jsp");
	%>
</body>