<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberEditForm</title>
</head>
<body>
	<div align="center">
		<form id="frm" action="memberEdit.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th>아이디</th>
						<td>${vo.memberId }</td>
						<th>비밀번호</th>
						<td><input type="password" id="memberPassword"
							name="memberPassword"></td>
						<th>이름</th>
						<td>${vo.memberName }</td>
						<th>전화번호</th>
						<td><input type="text" id="memberTel" name="memberTel">
						</td>
				</table>
				<br>

				<div>
					<input type="hidden" id="memberId" name="memberId"
						value="${vo.memberId }"> <input type="submit" value="수정하기">
					&nbsp;&nbsp;


				</div>
			</div>
		</form>
	</div>

</body>
</html>