<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("pwd");
		
		//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. connetion 얻기
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String pwd = "0301";
		Connection con = DriverManager.getConnection(url, user, passwd);
		
		//3. SQL 실행 준비
				//String sql = "insert into login(id, pwd) values('" + id +"', '"+ passwd +"')";		
									// 변수이기때문에 values안에 들어가는 부분이 해석되기 위해서 " + id + " 가 되는것. 
				//Statement stmt = con.createStatement();
		String sql = "update";
		
		
		//4. SQL 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.executeUpdate();
				//int i = stmt.executeUpdate(sql);
		
		//5. 객체 해제
				//stmt.close();
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