<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<%
	//1. jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	//2. db 와 연결 (Connection) 생성
	String url = "jdbc:mariadb://localhost:3306/khgdb";
	String user = "dlddj";
	String password = "0301";
	
	Connection con = DriverManager.getConnection(url,user,password);
	//3. DB 연동
	String sql = "select id,title,date from notice";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	//4. 결과 셋에서 데이터 추출하기
	String id = "";
	String title = "";
	String date = "";
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
		<tr>
			<th>작성자</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<tr>
<%
	while(rs.next()){
		id = rs.getString("id");
		title = rs.getString("title");
		date = rs.getString("date");
%>
	<td><%=id %></td>
	<td><a href="noticeupdateForm %>"><%=title %></a></td>
	<td><%=date %></td>
	</tr>
	
	<%}
	//5. DB 연결 해지
	stmt.close();
	con.close();
	%>
	</table>
</body>