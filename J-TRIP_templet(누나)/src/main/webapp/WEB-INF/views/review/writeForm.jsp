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
				<h2 class="h5 mb-3 mb-lg-0"
					style="font-family: Poppin, Arial, sans-serif">
					<a href="../../pages/admin/customers.html" class="text-muted"><i
						class="bi bi-arrow-left-square me-2"></i></a> Review
				</h2>
				<div class="hstack gap-3">
					<button class="btn btn-light btn-sm btn-icon-text">
						<i class="bi bi-x"></i> <span class="text">Cancel</span>
					</button>
					<button class="btn btn-primary btn-sm btn-icon-text">
						<i class="bi bi-save"></i> <span class="text">Save</span>
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
								<div class="card-body">
									<div class="mb-3">
										<label class="form-label">Title</label> <input type="text"
											class="form-control" placeholder="제목을 입력해주세요">

									</div>
									
									<div class="col-lg-6" style="">
										<div class="mb-3" style="float: left; margin-right: 50px; margin-left: -20px; padding-right:-70px">
											<label class="form-label">ID</label> <input type="text"
												class="form-control" width=330px>
										</div>
									</div>
									<div class="col-lg-6" style="float: right; margin-right: 10px; padding-right:-70px; width:270px;" >
										<div class="mb-3">
											<label class="form-label">Date</label> <input type="text"
												class="form-control" style="width:270px">
										</div>




									</div>


								</div>
							</div>
						</div>
						<!-- content -->
						<div class="card mb-4">
							<div class="card-body">
								<div class="mb-3" style="margin-top: -60px">
									<label class="form-label">Content</label>									
									<textarea rows="text"  class="form-control" rows="50" placeholder="자유롭게 후기를 남겨주세요!"></textarea>
								</div>
								<!-- 점수 -->
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Score</label> <select
												class="select2 form-control select2-hidden-accessible"
												data-select2-placeholder="Select country"
												data-select2-id="select2-data-1-gy14" tabindex="-1"
												aria-hidden="true" style="width: 630px">
												<option data-select2-id="select2-data-3-ibs9"></option>												
												<option value="AF">★★★★★</option>
												<option value="BS">★★★★</option>
												<option value="KH">★★★</option>
												<option value="DK">★★</option>
												<option value="DK">★</option>
												
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
															class="select2-selection__placeholder">별점을 남겨주세요</span></span><span class="select2-selection__arrow"
														role="presentation"><b role="presentation"></b></span></span></span><span
												class="dropdown-wrapper" aria-hidden="true"></span></span>
										</div>
									</div>

								</div>
	
							</div>
						</div>
					</div>

					<!-- Avatar -->
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="h6">Img</h3>
							<input class="form-control" type="file">
						</div>
					</div>

					<!-- Notification settings -->

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

	<script type="text/javascript">
		<script src="https://code.jquery.com/jquery-1.10.2.min.js">
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	</script>
</body>
</html>