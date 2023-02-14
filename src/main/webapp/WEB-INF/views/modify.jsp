<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function modifybtn(){

	var title = $("#mtitle").val();
	var content= $("#mcontent").val();
	var list =$("#mlist").val();
	
	$.ajax({
		url : "modifybtn",
		type : "POST",
		data : {
			title : title,
			content : content,
			list : list
		},
		datatype : "json",
		success : function(result){
			alert("수정완료!")
			window.location.href = "mainpage";
		},
		error : function(){
			alert("에러!!")
		}
	})
}
</script>
</head>
<body>
	<table border="1">
		<th>정보</th>
		<th>데이터</th>
		<tr>
			<td>글 번호</td>
			<td><input type="text" value="${modify.list}" name="mlist" id="mlist" disabled></td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${modify.username}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" value="${modify.title}" name="mtitle" id="mtitle"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" value="${modify.content}" name="mcontent" id="mcontent"/></td>
		</tr>
		<tr>
			<td>작성일자</td>
			<td>
			<fmt:formatDate pattern="yyyy-MM-dd" value="${modify.time}" />
			</td>
		</tr>
	</table>
	<button type="button" onclick="javascript:modifybtn();">수정</button>
	<button type="button" onclick="location.href='detail?list=${modify.list}'">뒤로가기</button>
</body>
</html>