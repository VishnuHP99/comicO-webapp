<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ComicO : Address</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="card">
					<div class="card-body p-3">
						<h3 class="text-center text-primary">Add Address</h3>
						<form action="">
							<div class="row mt-2">
								<div class="col-md-6">
									<label for="inputAddress" class="form-label">Address</label> <input
										type="text" class="form-control" id="inputAddress">
								</div>
								<div class="col-md-6">
									<label for="inputLandmark" class="form-label">Landmark</label>
									<input type="text" class="form-control" id="inputLandmark">
								</div>
							</div>

							<div class="row mt-2">
								<div class="col-md-4">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" class="form-control" id="inputCity">
								</div>
								<div class="col-md-4">
									<label for="inputState" class="form-label">State</label> <input
										type="text" class="form-control" id="inputState">
								</div>
								<div class="col-md-4">
									<label for="inputPinCode" class="form-label">Pin Code</label> <input
										type="number" class="form-control" id="inputPinCode">
								</div>
							</div>

							<div class="text-center mt-3">
								<button class="btn btn-warning text-success">Add
									Address</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>