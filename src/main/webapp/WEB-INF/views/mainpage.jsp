<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

</script>
</head>
<body>
	<marquee behavior="alternate" scrolldelay="100" direction="right">
	안녕하세요 회원님들!
	</marquee>
	<table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
		<colgroup>
			<col width="50" />
			<col width="500" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>번 호</th>
				<th>제 목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조 회</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td align="center">3</td>
				<td>게시판 글입니다 3</td>
				<td align="center">후후</td>
				<td align="center"></td>
				<td align="center"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td>게시판 글입니다 2</td>
				<td align="center"></td>
				<td align="center"></td>
				<td align="center"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td>게시판 글입니다 1</td>
				<td align="center"></td>
				<td align="center"></td>
				<td align="center"></td>
			</tr>
		</tbody>		
	</table>
		<input type="button" value="글쓰기" onclick="location.href='hun'" />
		

</body>
</html>
</html>