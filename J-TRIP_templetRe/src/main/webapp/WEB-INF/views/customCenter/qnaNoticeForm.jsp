<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="comment-form-wrap pt-5" style="margin-top: 100px;">
		<h3 class="mb-5" style="text-align: center">QnA</h3>
		<h6 style="text-align: center; margin-top: -20px">문의 사항을 남겨주시면 답변해드리겠습니다.</h6>
		<br>
		<form action="#" class="p-5 bg-light">
			<div class="form-group" style="margin-top: -30px">
				<label for="name">ID *</label> <input type="text"
					class="form-control" id="name">
			</div>
			<div class="form-group">
				<label for="email">Date *</label> <input type="email"
					class="form-control" id="email">
			</div>
			<div class="form-group">
				<label for="website">Title *</label> <input type="url"
					class="form-control" id="website">
			</div>

			<div class="form-group">
				<label for="message">Content *</label>
				<textarea name="" id="message" cols="30" rows="10"
					class="form-control"></textarea>
			</div>
			<div>
				<input>
			</div>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button type="button" class="btn btn-outline-dark" onclick="location.href='qna.do'" style="margin-right:30px", style=" border-color:grey">Write</button>
						<button type="button" class="btn btn-outline-dark" onclick="location.href='qna.do'" style="margin-right:30px", style=" border-color:grey">Cancle</button>			
					</div>
						
						

		</form>
	</div>
</body>
</html>