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
	//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
	//2. 커넥션 얻기
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
		Connection con = DriverManager.getConnection(url,user,password);
	//3. SQL 실행 준비
		String sql = "insert into notice(id,date,title,txtarea) values(?,?,?,?)";
	 		Statement stmt;
	 		stmt = con.createStatement();
 	//4. SQL 실행
	 	PreparedStatement pstpmt = con.prepareStatement(sql);
	 	pstpmt.setString(1, id);
	 	pstpmt.setString(2, date);
	 	pstpmt.setString(3, title);
	 	pstpmt.setString(4, txtarea);
	 	pstpmt.executeUpdate();
	 	
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
		pstpmt.close();
		
		response.sendRedirect("noticelist.jsp");
	%>
</body>