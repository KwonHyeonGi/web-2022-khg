<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

 	String num1 = request.getParameter("kor");
	String num2 = request.getParameter("eng");
	String num3 = request.getParameter("math");


	int kor = Integer.parseInt(num1);
	int eng = Integer.parseInt(num2);
	int math = Integer.parseInt(num3);

	%>
	<%out.println("국어점수 : " + (kor)); %>
	<%out.println("영어점수 : " + (eng)); %>
	<%out.println("수학점수 : " + (math)); %><br>
	<%out.println("총점 : " + (kor+eng+math));%><br>
	<%out.println("평균 : " + ((kor+eng+math)/3));%>
</body>
</html>