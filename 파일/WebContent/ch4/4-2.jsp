<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>성적계산기</title>
</head>
<body>

<%

	request.setCharacterEncoding("utf-8");	
	
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	// 문자열 Integer.parseInt로 숫자로 바꿔줌
	int sum = kor + eng + math;
	float average = (float)sum/3;
	
	out.println("국어점수 : "+ kor + "<br>");
	out.println("영어점수 : "+ eng + "<br>");
	out.println("수학점수 : "+ math + "<br>");
	
	out.println("총점 : "+ sum + "<br>");
	out.println("평균 : "+ String.format("%.2f", average) + "<br>");
	
%>

</body>
</html>