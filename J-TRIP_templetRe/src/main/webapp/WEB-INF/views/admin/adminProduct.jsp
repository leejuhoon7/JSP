<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>상품 등록/수정/삭제</title>

<style type="text/css">
body {
	margin-top: 20px;
	background: #eee;
}

.ui-w-40 {
	width: 40px !important;
	height: auto;
}

.card {
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}

.ui-product-color {
	display: inline-block;
	overflow: hidden;
	margin: .144em;
	width: .875rem;
	height: .875rem;
	border-radius: 10rem;
	-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	vertical-align: middle;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="margin-top: 80px">
	<div class="container px-3 my-5 clearfix" style="margin-top: 100px">
		<!-- Shopping cart table -->
		<div class="card">
			<div class="card-body">
				<div class="card-header py-3">
					<nav class="navbar navbar-expand-lg bg-light">
						<div class="container-fluid">
							<a class="navbar-brand" href="#">Admin</a>
							<button class="navbar-toggler" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="adminProduct.do">Product</a></li>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="">Member</a></li>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="">미정</a></li>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="">미정</a></li>

								</ul>

							</div>
						</div>
					</nav>

				</div>
				<div class="table-responsive">
					<table class="table table-bordered m-0">
						<thead>
							<tr>
								<!-- Set columns width -->
								<th class="text-center py-3 px-4" style="min-width: 400px;">Product
									No &amp; Details</th>
								<th class="text-right py-3 px-4" style="width: 100px;">Product
									Name</th>
								<th class="text-center py-3 px-4" style="width: 120px;">Product
									Content</th>
								<th class="text-right py-3 px-4" style="width: 100px;">price</th>
								<th class="text-right py-3 px-4" style="width: 200px;">Edit
									&amp; Delete</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td class="p-4">
									<div class="media align-items-center">
										<input class="form-check-input" type="checkbox" role="switch"
											checked=""> <img
											src="https://bootdey.com/img/Content/avatar/avatar1.png"
											class="d-block ui-w-40 ui-bordered mr-4" alt="">
										<div class="media-body">
											<a href="#" class="d-block text-dark">Product 1</a> <small>
												<span class="text-muted">Color:</span> <span
												class="ui-product-color ui-product-color-sm align-text-bottom"
												style="background: #e81e2c;"></span> &nbsp; <span
												class="text-muted">Size: </span> EU 37 &nbsp; <span
												class="text-muted">Ships from: </span> China
											</small>
										</div>
									</div>
								</td>
								<td class="text-right font-weight-semibold align-middle p-4">$57.55</td>
								<td class="align-middle p-4"><input type="text"
									class="form-control text-center" value="2"></td>
								<td class="text-right font-weight-semibold align-middle p-4">$115.1</td>

								<td style="padding-left: 40px">

									<div class="hstack gap-3" style="float: center">
										<button class="btn btn-light btn-sm btn-icon-text"
											style="float: center">
											<i class="bi bi-x"></i> <span class="text"> 수정</span>
										</button>
										<button class="btn btn-primary btn-sm btn-icon-text">
											<i class="bi bi-save"></i> <span class="text"> 삭제</span>
										</button>
									</div>
								</td>

							</tr>




							<tr>
								<td class="p-4">
									<div class="media align-items-center">
										<input class="form-check-input" type="checkbox" role="switch"
											checked=""> <img
											src="https://bootdey.com/img/Content/avatar/avatar6.png"
											class="d-block ui-w-40 ui-bordered mr-4" alt="">
										<div class="media-body">
											<a href="#" class="d-block text-dark">Product 2</a> <small>
												<span class="text-muted">Color:</span> <span
												class="ui-product-color ui-product-color-sm align-text-bottom"
												style="background: #000;"></span> &nbsp; <span
												class="text-muted">Storage: </span> 32GB &nbsp; <span
												class="text-muted">Warranty: </span> Standard - 1 year
												&nbsp; <span class="text-muted">Ships from: </span> China <span
												class="text-muted">Ships from: </span> China <span
												class="text-muted">Ships from: </span> China

											</small>
										</div>
									</div>
								</td>
								<td class="text-right font-weight-semibold align-middle p-4">$1049.00</td>
								<td class="align-middle p-4"><input type="text"
									class="form-control text-center" value="1"></td>
								<td class="text-right font-weight-semibold align-middle p-4">$1049.00</td>
								<td style="padding-left: 40px">

									<div class="hstack gap-3" style="float: center">
										<button class="btn btn-light btn-sm btn-icon-text"
											style="float: center">
											<i class="bi bi-x"></i> <span class="text"> 수정</span>
										</button>
										<button class="btn btn-primary btn-sm btn-icon-text">
											<i class="bi bi-save"></i> <span class="text"> 삭제</span>
										</button>
									</div>
								</td>
							</tr>

							<tr>
								<td class="p-4">
									<div class="media align-items-center">
										<input class="form-check-input" type="checkbox" role="switch"
											checked=""> <img
											src="https://bootdey.com/img/Content/avatar/avatar2.png"
											class="d-block ui-w-40 ui-bordered mr-4" alt="">
										<div class="media-body">
											<a href="#" class="d-block text-dark">Product 3</a> <small>
												<span class="text-muted">Ships from: </span> Germany
											</small>
										</div>
									</div>
								</td>
								<td class="text-right font-weight-semibold align-middle p-4">$20.55</td>
								<td class="align-middle p-4"><input type="text"
									class="form-control text-center" value="1"></td>
								<td class="text-right font-weight-semibold align-middle p-4">$20.55</td>
								<td style="padding-left: 40px">

									<div class="hstack gap-3" style="float: center">
										<button class="btn btn-light btn-sm btn-icon-text"
											style="float: center">
											<i class="bi bi-x"></i> <span class="text"> 수정</span>
										</button>
										<button class="btn btn-primary btn-sm btn-icon-text">
											<i class="bi bi-save"></i> <span class="text"> 삭제</span>
										</button>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
				<br> <br>

				<div id ="btn" style=" margin-left: 500px">
					<button type="button" class="btn btn-lg btn-primary mt-2"
						onclick="location.href='adminProductInsert.do'">등록</button>
						</div>
						
				<div class="float-right" style="margin-top: 20px;"></div>
				<br>

			</div>
		</div>
	</div>



	<script type="text/javascript">
		
	</script>
</body>
</html>