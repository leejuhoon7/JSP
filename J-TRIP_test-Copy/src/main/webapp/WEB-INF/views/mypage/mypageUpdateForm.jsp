<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<body>
<div align="center">
		<div>
			<form id="update" action="memberUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th>아이디</th>
							<td>
								<input type="text" id="memberId" value="${vo.memberId}" readonly="readonly"> 
							</td>
							<th>패스워드</th>
							<td>
								<input type="text" id="memberPw" value="${vo.memberPassword }" required="required">
								</td>
							<th>이름</th>
							<td>
								<input type="text" id="memberName" value="${vo.memberName}" required="required">
							</td>
							<th>주소</th>
							<td>
								<input type="text" id="memberAdd" value="${vo.memberAddress}" required="required">
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="text" id="memberEmail" value="${vo.memberEmail}" required="required">
						</tr>
						<tr>
							<th>전화번호</th>
							<td>
								<input type="text" id="memberTel" value="${vo.memberTel}" required="required">
							</td>
						</tr>
					</table>
				</div><br>
				
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

</body>
</html>