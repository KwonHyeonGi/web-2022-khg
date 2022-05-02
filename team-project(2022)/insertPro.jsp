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
	//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
	//2. 커넥션 얻기
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
		Connection con = DriverManager.getConnection(url,user,password);
	//3. SQL 실행 준비
		String sql = "insert into login(id,name,pwd) values(?,?,?)";
	 		Statement stmt;
	 		stmt = con.createStatement();
 	//4. SQL 실행
	 	PreparedStatement pstpmt = con.prepareStatement(sql);
	 	pstpmt.setString(1, id);
	 	pstpmt.setString(2, name);
	 	pstpmt.setString(3, pwd);
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
	//5. 객체 해체
 	pstpmt.close();
 	con.close();
 	
 	response.sendRedirect("list.jsp");
%>
</body>