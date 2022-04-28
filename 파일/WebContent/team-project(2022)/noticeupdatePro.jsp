<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
 	request.setCharacterEncoding("UTF-8");
	
		String id = "";
		String title = "";
		String date = "";
		String txtarea = "";
		
		id = request.getParameter("id");
		title = request.getParameter("title");
		date = request.getParameter("date");
		txtarea = request.getParameter("txtarea");

		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
		
		Connection con = DriverManager.getConnection(url,user,password);
		
		String sql = "update notice set title = ?,date = ?,txtarea = ? where id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,title);
		pstmt.setString(2,date);
		pstmt.setString(3, txtarea);
		pstmt.setString(4, id);
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