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


	int 국어점수 = Integer.parseInt(num1);

	int 영어점수 = Integer.parseInt(num2);
	
	int 수학점수 = Integer.parseInt(num3);

	%>
	<%out.println("합 : " + (국어점수+영어점수+수학점수));%>
</body>
</html>
