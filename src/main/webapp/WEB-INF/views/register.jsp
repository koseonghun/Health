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
		<td>���̵� : </td>
		<td>
			<input type="text" id="userid" name="userid" placeholder="���̵� �Է��ϼ���.">
		</td>
	</tr>
	<tr>
		<td>��й�ȣ : </td>
		<td>
			<input type="password" id="userpw" name="userpw" placeholder="��й�ȣ�� �Է��ϼ���.">
		</td>
	</tr>
	<tr>
		<td>��й�ȣ ���Է� : </td>
		<td>
			<input type="password" id="userpw2" name="userpw2" placeholder="���̵� �Է��ϼ���.">
		</td>
	</tr>
	<tr>
		<td>�̸� : </td>
		<td>
			<input type="text" id="username" name="username" placeholder="���̵� �Է��ϼ���.">
		</td>
	</tr>
	<tr>
		<td>�޴�����ȣ : </td>
		<td>
			<input type="text" id="userphone" name="userphone" placeholder="�޴��� ��ȣ�� �Է��ϼ���.">
		</td>
		<td>
			<button type="button" onclick="javascript:register();">ȸ������</button>
		</td>
	</tr>
</table>

</form>
</body>
</html>