<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="noticeinsertPro.jsp" method="post">
	<table>
		<tr class="input-group mb-3">
			<th class="input-group-text">작성자</th>
			<td><input type="text" class="form-control" name="id"></input></td>
			<th class="input-group-text">제목</th>
			<td><input type="text" class="form-control"style="width:210%" name="title"></input></td>
			<th class="input-group-text"style="position:fixed;left:48.7%">날짜</th>
			<td><input type="text" class="form-control"style="position:absolute;left:152.2%;width:200px" name="date" placeholder="예시)2022-xx-xx"></input></td>
		</tr>
	</table>
	<textarea cols="136" rows="20" name="txtarea"></textarea> <br>
	<input type="submit" class="btn btn-primary"style="position:fixed;left:25%;" value="완료"></input>
	<button type="button" class="btn btn-primary"style="position:fixed;left:29%;" onclick="location.href='main.html'">돌아가기</button>
	</form>
</body>