<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="loginbtn" id="loginbtn" method="POST">
<table border="1">
	<tr>
		<td>아이디</td>
		<td>
		<input type ="text" id="userid" name="userid"  placeholder="아이디를 입력하세요">
		</td>
	</tr>
		<tr>
		<td>비밀번호</td>
		<td>
		<input type ="text" id="userpw" name="userpw" placeholder="비밀번호를 입력하세요">
		</td>
	</tr>
</table>
</form>
<button type="button" onclick="javascript:login()">로그인</button>

</body>
</html>