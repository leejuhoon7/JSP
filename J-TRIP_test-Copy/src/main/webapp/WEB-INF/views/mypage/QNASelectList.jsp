<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 목록</h1>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="150">순번</th>
						<th width="150">제목</th>
						<th width="150">이름</th>
						<th width="150">내용</th>
						<th width="150">날짜</th>
					</tr>
				</thead>

				<tbody style="text-align: center;">
					<c:forEach items="${list }" var="q">
						<tr onMouseover="this.style.backgroundColor='yellow';"
							onMouseout="this.style.backgroundColor='white';"
							onclick="selectMember('${q.memberId }')">
							
							<td>${q.QNANo }</td>
							<td>${q.QNATitle }</td>
							<td>${q.memberId }</td>
							<td>${q.QNAContent }</td>
							<td>${q.QNADate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="memberId" name="memberId">
			</form>
		</div>

	</div>

</body>
</html>		