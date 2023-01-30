<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<body>
	<form action="write" id="write" method="POST">
		<table>
    		<tr>
				<td>작성자</td>
				<td><input type="text" name="username" size=10 maxlength=8></td>
			</tr>
			<tr>
     			<td>제 목</td>
     			<td><input type="text" name="title"></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name="content" rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td colspan="2"><div align="center">
     			<input type="submit" value="등록" >&nbsp;&nbsp;
         		<input type="button" value="뒤로" onclick="";></div>
     			</td>
    		</tr> 
		</table>
	</form>
</body>
</html>