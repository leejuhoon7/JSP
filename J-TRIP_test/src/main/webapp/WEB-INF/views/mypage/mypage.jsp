<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
</head>
<body>

	<div align="center">
		
			<form id="frm" action="mypage.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th>아이디</th>
						<td><input type="text" name = "memberId"></td>
						<th>비밀번호</th>
						<td>${vo.memberPassword}</td>
						<th>이름</th>
						<td>${vo.memberName}</td>
						<th>주소</th>
						<td>${vo.memberAddress}</td>
						<td><input type="text" id="memberAddress"
							name="memberAddress" required="required"></td>
						<th>이메일</th>
						<td>${vo.memberEmail}</td>
						<td><input type="text" id="memberEmail" name="memberEmail"
							required="required"></td>
						<th>전화번호</th>
						<td>${vo.memberTel}</td>
						<td><input type="text" id="memberTel" name="memberTel"
							required="required"></td>
					</tr>
				</table>
		</div>
		<input type="submit" value="수정하기"> <input type="reset"
			value="취소">

		</form>
	</div>

</body>
</html>