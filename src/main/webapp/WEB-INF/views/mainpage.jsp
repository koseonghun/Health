<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제 목</th>
				<th>내용</th>
				<th>작성 일자</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items= "${boardList}" var="board">
				<tr>
					<td>${board.list}</td>
					<td>${board.username}</td>
					<td><a href="detail?list=${board.list}">${board.title}</a></td>
					<td>${board.content}</td>
					<td>
						<fmt:formatDate pattern="yyyy-MM-dd" value="${board.time}"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>		
	</table>
		<input type="button" value="글쓰기" onclick="location.href='hun'" />
</body>
</html>
</html>