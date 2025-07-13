<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookLine : Cart</title>
<%@ include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_components/navbar.jsp"%>
	<c:if test="${ empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>


	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />

	</c:if>

	<c:if test="${ not empty failedMsg }">
		<div class="alert alert-danger text-center" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />

	</c:if>


	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="text-center text-success">

					<div class="card mt-4">
						<div class="card-body">
							<h3 class="text-center text-success">Your Selected Items</h3>
							<table class="table mt-2">
								<thead class="table-info">
									<tr>
										<th scope="col">Book Name</th>
										<th scope="col">Author</th>
										<th scope="col">Price</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
									<%
									User u = (User) session.getAttribute("userobj");

									CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
									List<Cart> cart = dao.getBookByUser(u.getId());
									Double totalPrice = 0.00;
									for (Cart c : cart) {
										totalPrice = c.getTotalPrice();
									%>
									<tr>
										<th scope="row"><%=c.getBookName()%></th>
										<td><%=c.getAuthor()%></td>
										<td><%=c.getPrice()%></td>
										<td><a
											href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid()%>"
											class="btn btn-danger btn-sm">Remove</a></td>
									</tr>
									<%
									}
									%>

									<tr class="table-danger">
										<td><h3>Total Price</h3></td>
										<td></td>
										<td><h3><%=totalPrice%></h3></td>
										<td></td>
									</tr>




								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-primary">Your Details For Order</h3>
						<form action="order" method="post">
						
						<input type="hidden" value="${userobj.id }" name="id" required="required">
							<div class="row" >
								<div class="col-md-6">
									<label for="inputName" class="form-label">Name</label> <input
										type="text" class="form-control" id="inputName" name="username"
										value="${userobj.name }" required="required">
								</div>
								<div class="col-md-6">
									<label for="inputEmail" class="form-label">Email</label> <input
										type="email" class="form-control" id="inputEmail" name="email"
										value="${userobj.email }" required="required" >
								</div>
							</div>

							<div class="row mt-3">
								<div class="col-md-6">
									<label for="inputPhone" class="form-label">Phone Number</label>
									<input type="number" class="form-control" id="inputPhone" name="phno"
										value="${userobj.phno }" required="required">
								</div>
								<div class="col-md-6">
									<label for="inputAddress" class="form-label">Address</label> <input
										type="text" class="form-control" id="inputAddress" name="address" required="required">
								</div>
							</div>

							<div class="row mt-3">
								<div class="col-md-6">
									<label for="inputLandmark" class="form-label">Landmark</label>
									<input type="text" class="form-control" id="inputLandmark" name="landmark" required="required">
								</div>
								<div class="col-md-6">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" class="form-control" id="inputCity" name="city" required="required">
								</div>
							</div>

							<div class="row mt-3">
								<div class="col-md-6">
									<label for="inputState" class="form-label">State</label> <input
										type="text" class="form-control" id="inputState" name="state" required="required">
								</div>
								<div class="col-md-6">
									<label for="inputPincode" class="form-label">Pin Code</label> <input
										type="text" class="form-control" id="inputPincode" name="pincode" required="required">
								</div>
							</div>

							<div class="form-group">
								<label>Payment Mode</label> <select class="form-control" name="payment">
									<option value="noselect">---Select---</option>
									<option value="COD">Cash On Delivery</option>
								</select>
							</div>

							<div class="text-center mt-3">
								<button class="btn btn-warning">Order Now</button>
								<a href="index.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>


						</form>
					</div>
				</div>
			</div>


		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>

</html>