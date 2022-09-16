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
			<h1>멤버 가입</h1>
		</div>
		<div>
			<form id="frm" action="memberInsert.do" onsubmit="return formCheck()"
				method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="280"><input type="text" id="memberId"
								name="memberId">
								<button type="button" id="btn" value="No" onclick="idChek()">중복체크</button>
							</td>
						</tr>
						<tr>
							<th width="150">비밀번호</th>
							<td colspan="3"><input type="password" id="memberPassword"
								name="memberPassword" required="required"></td>
						</tr>
						<tr>
							<th width="150">비밀번호 확인</th>
							<td colspan="3"><input type="password" id="pwc"
								required="required"></td>
						</tr>
						<tr>
							<th width="150">이름</th>
							<td width="200"><input type="text" id="memberName"
								name="memberName"></td>
						</tr>
						<tr>
							<th width="150">전화번호</th>
							<td colspan="3"><input type="tel" id="memberTel"
								name="memberTel"></td>
						</tr>
					</table>
					<br />
					<div>
						<input type="hidden" name="memberAuthor" value="USER"> <input
							type="submit" value="등록">&nbsp;&nbsp; <input type="reset"
							value="취소">&nbsp;&nbsp; <input type="button" value="목록"
							onclick="memberSelectList.do">
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function formCheck() {
		let pass1 = document.getElementById("memberPassword").value;
		let pass2 = document.getElementById("pwc").value;
	// frm.memberPassword.value
	
		let idChecked = document.getElementById("btn").value;
		if(idChecked == 'No'){
			alert("아이디 중복체크를 해주세요.");
			
			return false;
		}
		
	
		if(pass1 != pass2) {
			alert("패스워드가 일치하지 않습니다.");
			document.getElementById("memberPassword").value = "";
			document.getElementById("pwc").value = "";
			document.getElementById("memberPassword").focus();
			return false;
	}
		
		return true;
}
	
	function idChek() { //Ajax를 이용해서 id 중복체크를 한다.
		let id = document.getElementById("memberId").value;
	/*	
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
			if (this.readyState == 4 && this.status == 200){ // 삭제여부
				responseResult(this.response){
				
					document.getElementById("btn").value = "Yes";
					document.getElementById("memberPassword").focus();
					
				}else{
					alert("사용할수 없는 아이디 입니다.");
					document.getElementById("memberId").value = "";
					document.getElementById("memberId").focus();
				}
			}
		}
		
		xhttp.open("GET", "ajaxMemberIdCheck.do?id="+id");
		xhttp.send();
		*/
		//fetch를 사용한 ajax
		
		fetch('ajaxMemberIdCheck.do?id='+id)
			.then(response => response.text()); // 이곳에 Call Back함수를 작성하면 됨
			.then(data => result(data));
		
	}
	
	function result(data) { // fetch처리 Callback 함수
		if(this.responseText == '1'){
			alert("아이디체크");
			document.getElementById("btn").value = "Yes";
			document.getElementById("memberPassword").focus();
			
		}else{
			alert("사용할수 없는 아이디 입니다.");
			document.getElementById("memberId").value = "";
			document.getElementById("memberId").focus();
		}
	}
	</script>
</body>
</html>