<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>${vo.memberId }</td>
				<th>비밀번호</th>
				<td>${vo.memberPassword }</td>
				<th>이름</th>
				<td>${vo.memberName }</td>
				<th>전화번호</th>
				<td>${vo.memberTel }</td>
			</tr>
		</table>
	</div>
	<br>


</body>
</html>