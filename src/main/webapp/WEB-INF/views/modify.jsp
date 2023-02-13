<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<th>정보</th>
		<th>데이터</th>
		<tr>
			<td>이름</td>
			<td>${modify.username}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" value="${modify.title}" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" value="${modify.content}"/></td>
		</tr>
		<tr>
			<td>작성일자</td>
			<td>
			<fmt:formatDate pattern="yyyy-MM-dd" value="${modify.time}" />
			</td>
		</tr>
	</table>
	<button type="button" onclick="location.href='modify2?list=${modify.list}'">수정</button>
	<button type="button" onclick="location.href='detail?list=${modify.list}'">뒤로가기</button>
</body>
</html>