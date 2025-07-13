<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ComicO : Order Success</title>
<%@ include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_components/navbar.jsp"%>

	

	<div class="container text-center mt-3">
		<i class="fas fa-check-circle fa-5x text-success"></i>
		<h1>Thank You</h1>
		<h2>Your order Successfully Placed</h2>
		<h5>Your Order will be Delivered to your Address Within 7 Days</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a> 
		<a href="order.jsp"
			class="btn btn-danger mt-3">View Order</a>
	</div>

</body>
</html>