<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ComicO : Settings</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	cursor: pointer;
	color: black;
	cursor: pointer;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>


	<%@include file="all_components/navbar.jsp"%>
	<div class="container">

		
			<h3 class="text-center">
				Hello, <span class="text-danger">${userobj.name}</span>
			</h3>

		


		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-primary"></i>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-primary"></i>
							<h3>Manage Old Book</h3>
						</div>
					</div>
				</a>
			</div>

			<!-- ;;;;;;;;;;;;;;;;;; -->
			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-regular fa-address-card fa-3x text-primary"></i>
							<h3>Edit Profile</h3>
						</div>
					</div>
				</a>
			</div>
			<!-- ;;;;;;;;;;;;;;;;;; -->
			<div class="col-md-4 mt-3">
				<a href="user_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-map-pin fa-3x text-warning"></i>
							<h3>Your Address</h3>
							<p>Edit Address</p>
						</div>
					</div>
				</a>
			</div>

			<!-- ;;;;;;;;;;;;;;;;;; -->
			<div class="col-md-4 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open text-danger fa-3x"></i>
							<h3>My Orders</h3>
							<p>Track Your Orders</p>
						</div>
					</div>
				</a>
			</div>

			<!-- ;;;;;;;;;;;;;;;;;; -->
			<div class="col-md-4 mt-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-phone fa-3x text-success"></i>
							<h3>Help Center</h3>
							<p>24/7 Service</p>
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>
	<hr>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>