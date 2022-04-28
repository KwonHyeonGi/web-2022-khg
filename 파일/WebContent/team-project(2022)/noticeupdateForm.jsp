<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%	
	String id = request.getParameter("id");
	//1. jdbc driver 등록
		Class.forName("org.mariadb.jdbc.Driver");
	//2. db 와 연결 (Connection) 생성
		String url = "jdbc:mariadb://localhost:3306/khgdb";
		String user = "dlddj";
		String password = "0301";
	
		Connection con = DriverManager.getConnection(url,user,password);
	//3. DB 연동
		String sql = "select id,date,title,txtarea from notice where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		ResultSet rs = pstmt.executeQuery();
	//4. 결과 셋에서 데이터 추출하기	
		rs.next();
		String date = rs.getString("date");
		String title = rs.getString("title");
		String txtarea = rs.getString("txtarea");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>글 작성</title>
<style type="text/css">
	#name {
		position: fixed;
		left: 10%;
	}
	#title {
		position: fixed;
		left: 30%;
	}
	#date {
		position: fixed;
		left: 50%;
	}
</style>
</head>
<body>
<h2>게시글 작성</h2>
	<form action="noticeupdatePro.jsp" method="post">
	<table>
		<tr class="input-group mb-3">
			<th class="input-group-text">작성자</th>
			<td><input type="text" class="form-control" name="id" value="<%=id %>"></input></td>
			<th class="input-group-text">제목</th>
			<td><input type="text" class="form-control"style="width:210%" name="title" value="<%=title %>"></input></td>
			<th class="input-group-text"style="position:fixed;left:49.2%">날짜</th>
			<td><input type="text" class="form-control"style="position:absolute;left:152%;width:200px" name="date" placeholder="예시)2022-xx-xx" value="<%=date %>"></input></td>
		</tr>
	</table>
	<textarea cols="136" rows="20" name="txtarea" wrap="hard"><%=txtarea %></textarea> <br>
	<input type="submit" class="btn btn-primary"style="position:fixed;left:21%;" value="변경"></input>
	<button type="button" class="btn btn-primary"style="position:fixed;left:25%;" onclick="location.href='noticedeletePro.jsp?id=<%=id %>'">삭제</button>
	<button type="button" class="btn btn-primary"style="position:fixed;left:29%;" onclick="location.href='noticelist.jsp'">돌아가기</button>
	</form>
</body>