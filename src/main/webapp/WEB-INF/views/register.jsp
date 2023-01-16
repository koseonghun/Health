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
<form action="registerbtn" id="registerbtn" method="POST">
<table>
	<tr>
		<td>아이디 : </td>
		<td>
			<input type="text" id="userid" name="userid" placeholder="아이디를 입력하세요.">
		</td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td>
			<input type="password" id="userpw" name="userpw" placeholder="비밀번호를 입력하세요.">
		</td>
	</tr>
	<tr>
		<td>비밀번호 재입력 : </td>
		<td>
			<input type="password" id="userpw2" name="userpw2" placeholder="아이디를 입력하세요.">
		</td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td>
			<input type="text" id="username" name="username" placeholder="아이디를 입력하세요.">
		</td>
	</tr>
	<tr>
		<td>휴대폰번호 : </td>
		<td>
			<input type="text" id="userphone" name="userphone" placeholder="휴대폰 번호를 입력하세요.">
		</td>
		<td>
			<button type="button" onclick="javascript:register();">회원가입</button>
		</td>
	</tr>
</table>

</form>
</body>
</html>