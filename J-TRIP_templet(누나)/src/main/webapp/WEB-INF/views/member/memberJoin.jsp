<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>Create new customer form - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
body {
	background: #eee;
}

.col-lg-8 {
	margin-right: auto;
	margin-left: auto;
	width: 1200px;
}

.card {
	box-shadow: 0 20px 27px 0 rgb(0 0 0/ 5%);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: 1rem;
}

.card-body {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.5rem 1.5rem;
}

.custom_checkbox {
	position: relative;
	margin: 45px 0 0 20px;
}

.custom_checkbox label {
	position: absolute;
	left: 0;
	height: 20px;
	padding: 4px 0 0 25px;
	background: url('images/custom_checkbox2.png') no-repeat;
}

.custom_checkbox input[type="checkbox"]:checked+label {
	background-position: 0 -25px;
}

.parent {
	width: 90%;
	margin: 10px auto;
}

table{
	margin-left: -15px;
}

#emailTitle{
	height: 40px;
}

#emailId{
	width: 150px;
}

#textEmail{
	width: 175px;
}

#select{
	margin-left: 10px;

}

#memberAddress{
	margin-left: -8px;
	margin-right: 8px;
}

#memberTel{
	margin-left: -8px;
	margin-right: 8px;
}
:root {
	accent-color: grey;
}
/* input::placeholder {
        color: grey;
        font-style: italic;
        opacity: 2;
      } */

</style>

</head>
<body>
	<div class="container-fluid" style="margin-top: 100px">

		<div class="container">
			<!-- Title -->
			<div
				class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
				<h1 class="h5 mb-3 mb-lg-0"
					style="font-weight: bold; margin-left: auto; margin-right: auto;">
					<a href="../../pages/admin/customers.html" class="text-muted"><i
						class="bi bi-arrow-left-square me-2"></i></a> Join Us
				</h1>

			</div>

			<!-- Main content -->

			<!-- Left side -->
			<form name="frm" action="memberInsert.do"
				onsubmit="return formCheck()" method="post">
				<div class="col-lg-8">
					<!-- Address -->
					<div class="card mb-4">
						<div class="card-body" style="padding: 0px -150px">
							<h3 class="h6 mb-4"></h3>
							<div class="mb-3">
								<label class="form-label">&nbsp;Name *</label> <input type="text"
									class="form-control" id="memberName" name="memberName"
									required="required"  placeholder="name">
							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>
							<div class="mb-3" style="margin-bottom: 50px">
								<label class="form-label">&nbsp;USER ID *&nbsp;&nbsp;&nbsp;
									<button class="btn btn-primary btn-sm btn-icon-text"
										style="background-color: #E2C0BB" type="button"
										id="btn" value="No" onclick="idCheck()">
										<i class="bi bi-save"></i><span class="text">check</span>
									</button>
								</label> <input type="text" class="form-control" placeholder="ID"
									id="memberId" name="memberId" required="required"> <span
									class="mb-3-btn" style="width: 0;"> </span>
							</div>




							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>
							<div class="mb-3" style="margin-bottom: 50px">
								<label class="form-label">&nbsp;PassWord *</label> 
								<input type="password" required="required"
									class="form-control" placeholder="password" id="memberPassword" name="memberPassword"><br>
								<input type="password" class="form-control" id="pwc" name="pwc" required="required"
									placeholder="??????????????? ?????? ?????? ??????????????????">
							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>

							<div class="row">
								<div class="parent">
									<!-- parent -->
									<table>
										<tr id="emailTitle">
											<td class="form-label" colspan=4>&nbsp;Email *</td>
										</tr>
										<tr>
											<td><input type="text" id="emailId" value="" name="emailId" class="form-control" placeholder="id"></td>
											<td>&nbsp;&nbsp;@&nbsp;&nbsp;</td>
											<td><input type="text" class="form-control" id="textEmail" name="textEmail" placeholder=""></td>
											<td>
												<select id="select" name="select" class="form-control" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true" onchange="selectChange(this)">
													<option value="" disabled selected>e-mail ??????</option>
													<option value="naver.com" id="naver.com">naver.com</option>
													<option value="hanmail.net" id="hanmail.net">hanmail.net</option>
													<option value="gmail.com" id="gmail.com">gmail.com</option>
													<option value="directly" id="textEmail">?????? ????????????</option>
												</select>
											</td>
										</tr>
									</table>
								</div>

								<div class="col-lg-6"></div>

								<div>

									<label class="form-label">&nbsp;&nbsp;&nbsp;&nbsp;
										Favorite *</label> 
										<label for="interest1"> 
										<input type="radio" class="custom_checkbox" id="interest1" checked="checked"
										name='interest' value="??????" onclick = "getCheckboxValue(this)">&nbsp;&nbsp;&nbsp;??????
									</label> <label for="interest2"> 
									<input type="radio"
										class="custom_checkbox" id="interest2" name='interest' 
										value="??????" onclick = "getCheckboxValue(this)">&nbsp;&nbsp;&nbsp;??????
									</label> <label for="interest3"> 
									<input type="radio"
										class="custom_checkbox" id="interest3" name='interest'
										value="?????????" onclick = "getCheckboxValue(this)">&nbsp;&nbsp;&nbsp;?????????
									</label> <label for="interest4"> 
									<input type="radio"
										class="custom_checkbox" id="interest4" name='interest'
										value="?????????" onclick = "getCheckboxValue(this)">&nbsp;&nbsp;&nbsp;?????????&nbsp;&nbsp;&nbsp;&nbsp;
									</label> 
									<!-- <input type="hidden" id="resultInterest" name="resultInterest"> -->
								</div>


								<!-- ?????? ???????????? ??? -->

								<div class="card-body" style="padding: 0px -150px">
									<h3 class="h6 mb-4"></h3>
									<div class="mb-3">
										<label class="form-label">Address *</label> <input type="text"
											class="form-control" id="memberAddress" name="memberAddress" placeholder="address">
									</div>
									<span class="select2-selection__arrow" role="presentation"><b
										role="presentation"></b></span><span class="dropdown-wrapper"
										aria-hidden="true"></span>
									<div class="mb-3" style="margin-bottom: 50px">
										<label class="form-label">Tel*</label> <input type="tel"  id="memberTel" name="memberTel"
											class="form-control" placeholder="'-' ???????????? ??????????????????">
									</div>
									<span class="select2-selection__arrow" role="presentation"><b
										role="presentation"></b></span><span class="dropdown-wrapper"
										aria-hidden="true"></span>

								</div>



								<!-- ??? ?????? ??? ???????????? -->
							</div>
						</div>

					</div>

					<div id="btn-save" style="margin-left: 250px;">
						<div>
							<p>
								<button class="btn btn-primary btn-sm btn-icon-text"
									 onclick="location.href='memberLogin.do'">
									<i class="bi bi-save"></i><span class="text">Submit</span>
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button style="background-color: #B2BBC9;" class="btn btn-light btn-sm btn-icon-text"
									onclick="location.href='memberLogin.do'">
									<i class="bi bi-x"></i> <span class="text">Cancel</span>
								</button>
						</div>
					</div>
				</div>

			</form>
		</div>

	</div>

	<script type="text/javascript">
function formCheck() {
	let pass1 = document.getElementById("memberPassword").value;
	let pass2 = document.getElementById("pwc").value;
	let idChecked = document.getElementById("btn").value;
	
	if(idChecked == 'No') {
		alert("????????? ??????????????? ????????????.");
		return false;
	}
	
	if(pass1 != pass2) {
		alert("??????????????? ???????????? ????????????.");
		document.getElementById("memberPassword").value = "";
		document.getElementById("pwc").value = "";
		document.getElementById("memberPassword").focus();
		return false;
	}	
	return true;
}

function idCheck(){  //Ajax??? ???????????? id ??????????????? ??????.
	let id = document.getElementById("memberId").value;

	
	//fetch??? ????????? ajax
	fetch('ajaxMemberIdCheck.do?id='+id)
		.then(response => response.text())
		.then(data=> responseResult(data)); //????????? Call Back????????? ???????????? ???
}

function responseResult(data){  //fetch?????? CallBack??????
	if(data == '1') {
    	alert("?????? ????????? ????????? ?????????.");
		document.getElementById("btn").value = 'Yes';
		document.getElementById("memberPassword").focus();
    }else{
    	alert("????????? ??? ?????? ????????? ?????????.");
    	document.getElementById("memberId").value = "";
    	document.getElementById("memberId").focus();
    } // ???????????? callBack ??????.
	
}


function selectChange(sel) {

    // ????????? ?????? ?????? or domain option ??????
    var domainListEl = document.querySelector('#select');
    var domainInputEl = document.querySelector('#textEmail');    

    if (sel.value === "directly") {
        domainInputEl.value = "";
        domainInputEl.readOnly = false;
    } else {
        domainInputEl.value = sel.value;
        domainInputEl.readOnly = true;
    }
}

function getCheckboxValue(box) {
	// ????????? ???????????? ?????? ?????? ??????.
	const arr = [];
	// name??? interest??? ?????? ??????.
	let boxes = document.getElementsByName("interest");
	// ????????? ?????? ?????? ??????.
	for(let i = 0 ; i<boxes.length;i++){
		// ???????????? ?????? ??? ????????? ?????? ??????.
		if (interest[i].checked == true) {
			arr.push(interest[i].value);
		}
	}
	// ????????? ??????.
	document.getElementById("resultInterest").textContent =arr;
}
</script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


