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
			<h1>게시글 목록</h1>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="150">작성자ID</th>
						<th width="150">이름</th>
						<th width="150">순번</th>
						<th width="150">제목</th>
						<th width="150">날짜</th>
					</tr>
				<thead>
				<tbody>
					<c:if test="${empty list}">
						<tr>
							<td colspan="6">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty list}">
						<c:forEach items="${list}" var="notice">
							<tr onMouseover="this.style.backgroundColor='yellow';"
								onMouseout="this.style.backgroundColor='white';"
								onclick="selectNotice('${notice.noticeId}')">
								<td>${notice.noticeId}</td>
								<td>${notice.noticeTitle}</td>
								<td>${notice.noticeWriter}</td>
								<td>${notice.noticeDate}</td>
								<td>${notice.noticeAttech}</td>
								<td>${notice.noticeHit}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="id" name="id">
				<c:if test="${not empty id}">
					<button type="button" onclick="location.href='noticeWriteForm.do'">글쓰기</button>
				</c:if>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function selectNotice(id) {
			document.getElementById("id").value = id
			frm.submit();
		}
	</script>
</body>
</html>