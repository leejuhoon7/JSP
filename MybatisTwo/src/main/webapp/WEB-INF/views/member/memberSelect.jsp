<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>멤버상세정보</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="120">아이디</th>
					<td width="200">${m.memberId }</td>

				</tr>

				<tr>
					<th>패스워드</th>
					<td>${m.memberPassword }</td>

				</tr>

				<tr>
					<th>이 름</th>
					<td>${m.memberName }</td>

				</tr>

				<tr>
					<th>전화번호</th>
					<td>${m.memberTel }</td>

				</tr>

				<tr>
					<th>권 한</th>
					<td>${m.memberAuthor }</td>


				</tr>
			</table>
		</div><br>

	</div>
</body>
</html>