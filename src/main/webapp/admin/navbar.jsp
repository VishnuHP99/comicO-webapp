<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<div class="container-fluid"
	style="height: 10px; background-color: #fff"></div>


<div class="container-fluid p-3 bg-white">
	<div class="row">
		<div class="col-md-3">
			<h3>ComicO</h3>
		</div>
		

		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a  class="btn btn-success text-white">${userobj.name}</a>
				<a data-bs-toggle="modal" data-bs-target="#exampleModal"
					class="btn btn-danger">Logout</a>
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success">Login</a>
				<a href="../register.jsp" class="btn btn-primary">Register</a>

			</c:if>

		</div>

	</div>
</div>

<!-- Logout modal  -->



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


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<!-- <a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button> -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto d-flex justify-content-center gap-4">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"><i
						class="fa-solid fa-house"></i> Home</a></li>

			</ul>
			<form class="form-inline my-2 my-lg-0" role="search">

				
				<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
					<i class="fa-solid fa-address-book"></i> Contact Us
				</button>
			</form>
		</div>
	</div>
</nav>