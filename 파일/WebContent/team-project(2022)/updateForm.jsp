<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	String id = request.getParameter("id");
	
		Class.forName("org.mariadb.jdbc.Driver");

		String url = "jdbc:mariadb://localhost:3306/khdb";
		String user = "dlddj";
		String password = "0301";
	
		Connection con = DriverManager.getConnection(url,user,password);

		String sql = "select id,name,pwd from login where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		ResultSet rs = pstmt.executeQuery();

		rs.next();
		String name=rs.getString("name");
		String pwd=rs.getString("pwd");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보변경</title>
</head>
<body>
	<h2>회원정보 변경</h2>
	<form name="login" action="updatePro.jsp" method="post">
			아이디 : <input type="text" name="id" value="<%=id %>"><br>
			이름 : <input type="text" name ="name" value="<%=name %>"><br>
			암호 : <input type="password" name ="pwd" value="<%=pwd %>"><br>
		<button type="submit">변경</button>
		<button type="button" onclick="location.href='deletePro.jsp?id=<%=id %>'">삭제</button>
		<button type="button" onclick="location.href='list.jsp'">사용자 조회</button>
	</form>
</body>