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
			<form id="update" action="memberUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th>아이디</th>
							<td>
								<input type="text" id="memberId" name="memberId" value="${vo.memberId}" required="required"> 
							</td>
							<th>패스워드</th>
							<td>
								<input type="password" id="memberPw" name="memberPassword" value="${vo.memberPassword }" required="required">
								</td>
							<th>이름</th>
							<td>
								<input type="text" id="memberName" name= "memberName" value="${vo.memberName}" required="required">
							</td>
							<th>주소</th>
							<td>
								<input type="text" id="memberAdd"  name = "memberAddress" value="${vo.memberAddress}" required="required">
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="text" id="memberEmail" name ="memberEmail" value="${vo.memberEmail}" required="required">
						</tr>
						<tr>
							<th>전화번호</th>
							<td>
								<input type="text" id="memberTel" name="memberTel" value="${vo.memberTel}" required="required">
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="hidden" id="memberId" name="memberId" value="${vo.memberId}">
					<input type="submit" value="수정">&nbsp;&nbsp;
					<input type="reset" value="리셋">
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
					function selectmember(id) {
						document.getElementById("id").value = id
						frm.submit();
					}
				</script>
</body>
</html>