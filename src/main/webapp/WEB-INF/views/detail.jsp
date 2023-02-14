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
			<td>${detail.username}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${detail.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${detail.content}</td>
		</tr>
		<tr>
			<td>작성일자</td>
			<td>
			<fmt:formatDate pattern="yyyy-MM-dd" value="${detail.time}" />
			</td>
		</tr>


	</table>
		<button type="button" onclick="location.href='modify?list=${detail.list}'">수정</button>
		<button type="button" onclick="location.href='mainpage'">목록</button>
		<button type="button" onclick="location.href='delete?list=${detail.list}'">삭제</button>

</body>
</html>