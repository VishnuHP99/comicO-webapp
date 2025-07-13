<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookLine : Login</title>
<%@ include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_components/navbar.jsp"%>

	<div class="container ">
		<div class="row mt-4 ">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login</h3>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg }</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>




						<form action="login" method="post">
							<div class="form-group mt-3">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="email">

							</div>
							<div class="form-group mt-2">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Password" required="required"
									name="password">
							</div>

							<div class="text-center mt-4">
								<button type="submit" class="btn btn-primary">Login</button>
								<br> <a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>

				</div>

			</div>
		</div>
	</div>













	<div class="mt-5">
    <%@ include file="all_components/footer.jsp"%>
</div>
</body>
</html>