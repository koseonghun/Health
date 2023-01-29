<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

function register(){
	
	var id = $("#userid").val();
	var pw = $("#userpw").val();
	var pw2 = $("#userpw2").val();
	var name = $("#username").val();
	var phone = $("#userphone").val();
	var idcheck = $("#inputcheck").val();
	
	if(id==""){
		alert("아이디를 입력하세요.")
	}else if(pw==""){
		alert("비밀번호를 입력하세요.")
	}else if(pw2==""){
		alert("비밀번호를 재입력해주세요.")
	}else if(name==""){
		alert("이름을 입력하세요.")
	}else if(phone==""){
		alert("휴대폰번호를 입력하세요.")
	}else if(idcheck=="1"){
		alert("id 중복확인을 체크해주세요.")
	}else{
		registerbtn.submit();
	}
}

function idcheck(){
	
	var id = $("#userid").val();

	$.ajax({
		url : "idcheck",
		type : "POST",
		data : {
			id : id
		},
		datatype : "json",
		success : function (idcheck){
			console.log(idcheck)
			if(idcheck==0){
				alert("사용하실수 있는 아이디입니다.")
				$("input[name=inputcheck]").attr("value",idcheck)
			}else if(idcheck==1){
				alert("이미사용중인 아이디입니다.")
				$("input[name=inputcheck]").attr("value",idcheck)
			}
		}, error : function(){
			alert("에러!!!!")
		}
	})
	
}

</script>
</head>
<body>
<form action="registerbtn" id="registerbtn" method="POST">
<table>
	<tr>
		<td>아이디 : </td>
		<td>
			<input type="text" id="userid" name="userid" placeholder="아이디를 입력하세요.">
		</td>
		<td>
			<button type="button" onclick="javascript:idcheck()">ID중복체크</button>
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
			<input type="password" id="userpw2" name="userpw2" placeholder="비밀번호를 다시 입력하세요.">
		</td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td>
			<input type="text" id="username" name="username" placeholder="이름을 입력하세요.">
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
<input type="hidden" id="inputcheck" name ="inputcheck" value="" />
</form>
</body>
</html>