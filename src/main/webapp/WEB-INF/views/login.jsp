<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function login(){
	
	var id = $("#userid").val();
	var pw = $("#userpw").val();
	if(id==""){
		alert("아이디를 입력해주세요!")
	}else if(pw==""){
		alert("비밀번호를 입력해주세요!")
	}else{
		$.ajax({
			url : "loginbtn",
			type : "POST",
			data : {
				id : id,
				pw : pw
			},
			datatype : "json",
			success : function(login){
				if(login==""){
					alert("아이디 혹은 비밀번호를 확인하세요.")
				}else{
					alert(login+"님 안녕하세요!")
					opener.parent.location="mainpage"
					window.close();
					
				}
			},error : function(){
				alert("에러!!")
			}
		})
	}
	
}
</script>
</head>
<body>
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
		<input type ="password" id="userpw" name="userpw" placeholder="비밀번호를 입력하세요">
		</td>
	</tr>
</table>
<button type="button" onclick="javascript:login()">로그인</button>
</body>
</html>