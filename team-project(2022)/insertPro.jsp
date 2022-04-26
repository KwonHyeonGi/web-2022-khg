<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
<%
		request.setCharacterEncoding("UTF-8");
		
		String id ="";
		String name = "";
		String passwd = "";

		id = request.getParameter("id");
		passwd = request.getParameter("pwd");
		name = request.getParameter("name");
		
		//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. connetion 얻기
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String pwd = "0301";
		Connection con = DriverManager.getConnection(url, user, passwd);
		
		//3. SQL 실행 준비
		String sql = "insert into login(id, name, pwd) values(?,?,?)";		
		
		
		//4. SQL 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, passwd);
		pstmt.executeUpdate();		
		
		//5. 객체 해제
		pstmt.close();
		con.close();
		// "list.jsp" 파일로 이동시키는 코드.
		response.sendRedirect("list.jsp");

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

</body>
</html>