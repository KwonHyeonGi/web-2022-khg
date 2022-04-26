<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>

	<%
	//1. jdbc driver 등록(클래스 객체에 forname을 통해서 등록)	
	// 위에 imort = java.sql * <- 패키지 넣어줌
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와 연결(Connetcion) 생성
	// 연결 문자열 설정
	String url = "jdbc:mariadb://localhost:3306/khgdb";
	String user = "dlddj";
	String passwd = "0301";
	
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. db에 연결
	String sql = "select id, name, pwd from login";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	//4. 걸과 추출
	String id ="";
	String name ="";
	String pwd = "";

%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>DB 연결</title>
</head>
<body>
	<h2>사용자 목록</h2>
	<table class="table table-bordered">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>	
		</tr>
	<tr>
<%	
	while(rs.next()){
		id = rs.getString("id");
		name = rs.getString("name");
		pwd = rs.getString("pwd");
%>
		<td><a href="updateForm.jsp?id=<%=id %>"><%=id %>  </a></td>
		<td><%=name %></td>
		<td><%=pwd %></td>
	</tr>		
<%	}

	//5. DB연결 해지(작은것 부터)
	stmt.close();
	con.close();
%>
	</table>
</body>
</html>