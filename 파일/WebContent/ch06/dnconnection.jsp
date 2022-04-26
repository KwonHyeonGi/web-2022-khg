<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>DB 연결</title>
</head>
<body>
	<%
	//1. jdbc driver 등록(클래스 객체에 forname을 통해서 등록)	
	// 위에 imort = java.sql * <- 패키지 넣어줌
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와 연결(Connetcion) 생성
	// 연결 문자열 설정
	String url = "jdbc:mariadb://localhost:3306/khgdb";
	String user = "dlddj";
	String pwd = "0301";
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. db에 연결
	Statement stmt = con.createStatement();
	
	//4. 연동 확인
	out.println("DB연결 완료");
	
	//5. DB연결 해지(작은것 부터)
	stmt.close();
	con.close();
	
	%>
</body>
</html>