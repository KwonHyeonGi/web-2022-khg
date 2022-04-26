<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- post방식일 경우는 인코딩이 필수 -->
<%
	request.setCharacterEncoding("utf-8");
	String[] hobby = request.getParameterValues("hobby");
	  
	for(int i=0; i<hobby.length; i++){
		out.println(hobby[i]);
	}	
	
	for(String s : hobby){
		out.println(s);
	}
%>
	<!-- 객체일때 사용 할 수 있는 방법. String s -->
</body>
</html>


