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
</head>
<body>
	<div class="container-fluid" style="margin-top: 100px">

		<div class="container">
			<!-- Title -->
			<div
				class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
				<h1 class="h5 mb-3 mb-lg-0" style="font-weight: bold">
					<a href="../../pages/admin/customers.html" class="text-muted"><i
						class="bi bi-arrow-left-square me-2"></i></a> Reservation
				</h1>
				<div class="hstack gap-3">
					<button class="btn btn-light btn-sm btn-icon-text">
						<i class="bi bi-x"></i> <span class="text">Cancel</span>
					</button>
					<button class="btn btn-primary btn-sm btn-icon-text"
						onclick="location.href='cart.do'">
						<i class="bi bi-save"></i><span class="text">Save</span>
					</button>
				</div>
			</div>

			<!-- Main content -->
			<div class="row">
				<!-- Left side -->
				<div class="col-lg-8">
					<!-- Basic information -->
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="h6 mb-4">Basic information</h3>
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">First name</label> <input
											type="text" class="form-control">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Last name</label> <input type="text"
											class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Email</label> <input type="email"
											class="form-control">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Phone number</label> <input
											type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Address -->
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="h6 mb-4">Package Reserve</h3>
							<div class="mb-3">
								<select class="select2 form-control select2-hidden-accessible"
									data-select2-placeholder="Select country"
									data-select2-id="select2-data-1-gy14" tabindex="-1"
									aria-hidden="true">
									<option data-select2-id="select2-data-3-ibs9">패지키명</option>
									<option value="AF">부산</option>
									<option value="BS">경주</option>
									<option value="KH">울릉도</option>
									<option value="DK">제주</option>

								</select> <select class="select2 form-control select2-hidden-accessible"
									data-select2-placeholder="Select country"
									data-select2-id="select2-data-1-gy14" tabindex="-1"
									aria-hidden="true">
									<option data-select2-id="select2-data-3-ibs9">지역</option>
									<option value="AF">부산</option>
									<option value="BS">경주</option>
									<option value="KH">울릉도</option>
									<option value="DK">제주</option>

								</select><span
									class="select2 select2-container select2-container--bootstrap-5"
									dir="ltr" data-select2-id="select2-data-2-46y9"
									style="width: 391px;"><span class="selection"><span
										class="select2-selection select2-selection--single"
										role="combobox" aria-haspopup="true" aria-expanded="false"
										tabindex="0" aria-disabled="false"
										aria-labelledby="select2-vp8l-container"
										aria-controls="select2-vp8l-container"><span
											class="select2-selection__rendered"
											id="select2-vp8l-container" role="textbox"
											aria-readonly="true" title="Select country"><span
												class="select2-selection__placeholder">원하시는 패키지를
													선택해주세요</span></span><span class="select2-selection__arrow"
											role="presentation"><b role="presentation"></b></span></span></span><span
									class="dropdown-wrapper" aria-hidden="true"></span></span>

							</div>
							<div class="mb-3">
								<label class="form-label">Date</label> <select
									class="select2 form-control select2-hidden-accessible"
									data-select2-placeholder="Select country"
									data-select2-id="select2-data-1-gy14" tabindex="-1"
									aria-hidden="true">
									<option data-select2-id="select2-data-3-ibs9">날짜</option>
									<option value="AF">2022.09</option>
									<option value="BS">2022.09</option>
									<option value="KH">2022.09</option>
									<option value="DK">2022.09</option>

								</select> <select class="select2 form-control select2-hidden-accessible"
									data-select2-placeholder="Select country"
									data-select2-id="select2-data-1-gy14" tabindex="-1"
									aria-hidden="true">
									<option data-select2-id="select2-data-3-ibs9"></option>
									<option value="AF">2022.09</option>
									<option value="BS">2022.09</option>
									<option value="KH">2022.09</option>
									<option value="DK">2022.09</option>

								</select>

							<!-- Person 인원수 -->
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Person</label> <select
											class="select2 form-control select2-hidden-accessible"
											data-select2-placeholder="Select city"
											data-select2-id="select2-data-7-809c" tabindex="-1"
											aria-hidden="true">
											<option data-select2-id="select2-data-9-k35n">인원수</option>
											<option value="AF">1명</option>
											<option value="BS">2명</option>
											<option value="KH">3명</option>
											<option value="DK">4명</option>
											<option value="TL">5명</option>
											<option value="GM">6명</option>
										</select><span
											class="select2 select2-container select2-container--bootstrap-5"
											dir="ltr" data-select2-id="select2-data-8-3peu"
											style="width: 391px;"><span class="selection"><span
												class="select2-selection select2-selection--single"
												role="combobox" aria-haspopup="true" aria-expanded="false"
												tabindex="0" aria-disabled="false"
												aria-labelledby="select2-jdfi-container"
												aria-controls="select2-jdfi-container"><span
													class="select2-selection__rendered"
													id="select2-jdfi-container" role="textbox"
													aria-readonly="true" title="Select city"><span
														class="select2-selection__placeholder">최소 1명 이상 선택
															가능합니다</span></span><span class="select2-selection__arrow"
													role="presentation"><b role="presentation"></b></span></span></span><span
											class="dropdown-wrapper" aria-hidden="true"></span></span>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">ZIP code</label> <input type="text"
											class="form-control">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Pay 결제란 -->
				<div class="col-lg-4">
					<!-- Status -->
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="h6">pay</h3>
							<select class="form-select">
								<option value="draft" selected="">Card</option>
								<option value="active">Deposit</option>
								<option value="active">KaKaoPay</option>
							</select>
						</div>
					</div>
					
					<!-- tems(약관동의) -->
					<div class="card mb-4">
						<div class="card-body">
							<h2 class="h6">Terms</h2>
							<ul class="list-group list-group-flush mx-n2">
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">여행자 보험 가입 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch">
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">개인정보 이용 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch"
											checked="">
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">여행 약관 확인 및 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--결제부분-->
					<div class="card mb-4" style="text-align=center">
						<div class="card-body" style="text-align=center">
							<h2 class="h6">Total price</h2>
							<ul class="list-group list-group-flush mx-n2" text-align="center">
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h3 class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif"> product 			
										</h3><h5  style="font-family:Poppin, Arial, sans-serif ">부산패키지여행</h5>
										<small>2022.09.22~2022.09.24</small>
									</div>
								
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h3 class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif">  Total people 			
										</h3><h5 style="font-family:Poppin, Arial, sans-serif" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2명</h5>
										<small>인원을 다시 한번 확인해주세요!</small>
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h3 class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif"> Total price 			
										</h3><h3 style="font-family:Poppin, Arial, sans-serif" > 400,000원 </h3>										
									</div>
									
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<style type="text/css">
body {
	background: #eee;
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
</style>

	<script type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>