<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
	<div><jsp:include page ="../menu/menu.jsp" /></div>
	<div>
		<div><h1>로 그 인</h1></div>
		<div>
			<form id="frm" action="memberLogin.do" method="post">
			
			<table border="1">
				<tr>
					<th width ="100">아이디</th>
					<td width ="150">
						<input type="text" id="memberId" name="memberId" required="required">
					</td>
				</tr>
				
				<tr>
					<th>패스워드</th>
					<td>
						<input type ="password" id=meberPassword name=memberPass], required = "required">
					</td>
				</tr>
				
				
			</table>
			</form>
		</div>
	</div>
</div>
</body>
</html>