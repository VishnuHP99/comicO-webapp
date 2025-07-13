<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<div class="container-fluid"
	style="height: 10px; background-color: #4d524e"></div>


<div class="container-fluid p-3 bg-white">
	<div class="row">
		<div class="col-md-3">
			<h3>ComicO</h3>
		</div>
		<div class="col-md-6">
			<form class="d-flex" role="search" action="search.jsp" method="post">
				<input class="form-control me-2" type="search" placeholder="Search"
					name="ch" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj }">
			<div class="col-md-3">

				<a href="checkout.jsp"><i
					class="fa-solid fa-cart-shopping fa-2x "></i> </a> <a href="login.jsp"
					class="btn btn-success text-white">${userobj.name}</a> <a
					href="logout" class="btn btn-danger">Logout</a>
			</div>

		</c:if>

		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success text-white">Login</a> <a
					href="register.jsp" class="btn btn-primary">Register</a>
			</div>

		</c:if>



	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<div class="collapse navbar-collapse d-flex justify-content-between"
			id="navbarSupportedContent">


			<ul class="navbar-nav mx-auto d-flex  gap-5">
				<li class="nav-item"><a class="nav-link active"
					href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="all_recent_book.jsp"><i class="fa-solid fa-book"></i>
						Recent Book</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="all_new_book.jsp"><i class="fa-solid fa-book"></i> New
						Book</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="all_old_book.jsp"><i class="fa-solid fa-book"></i> Old
						Book</a></li>
			</ul>


			<div class="d-flex gap-3">
				<a href="setting.jsp" class="btn btn-light">Settings</a> <a href="helpline.jsp"
					class="btn btn-light"><i class="fa-solid fa-address-book"></i>
					Contact Us</a>
			</div>
		</div>
	</div>
</nav>
