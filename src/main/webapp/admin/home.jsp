<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
	background-color: violet;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp" />
	
	</c:if>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-plus fa-3x text-danger"></i><br>
							<h4>Add Books</h4>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<!--  ================================ -->

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book fa-3x text-success"></i>
							<h4>All Books</h4>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<!--  ================================ -->

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-bag-shopping fa-3x text-warning"></i>
							<h4>Orders</h4>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<!--  ================================ -->

			<div class="col-md-3">
				<a data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-danger"></i>
							<h4>Logout</h4>
							-----------------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel"></h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do You Want to Logout</h4>
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<a href="../logout" type="button" class="btn btn-danger">Logout</a>

					</div>

				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- End Logout Modal -->
</body>
</html>