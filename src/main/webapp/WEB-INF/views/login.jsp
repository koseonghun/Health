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
		<td>���̵�</td>
		<td>
		<input type ="text" id="userid" name="userid"  placeholder="���̵� �Է��ϼ���">
		</td>
	</tr>
		<tr>
		<td>��й�ȣ</td>
		<td>
		<input type ="text" id="userpw" name="userpw" placeholder="��й�ȣ�� �Է��ϼ���">
		</td>
	</tr>
</table>
</form>
<button type="button" onclick="javascript:login()">�α���</button>

</body>
</html>