<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to ComicO</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/comicblast.jpg");
	height: 68vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: 100%;
	/* Ensures the image stretches both horizontally and vertically */
	background-position: center; /* Keeps the image centered */
	display: flex; /* Enables flexbox */
	justify-content: center; /* Centers text horizontally */
	align-items: flex-end; /* Moves text to bottom */
	text-align: center; /* Ensures text alignment */
	padding-bottom: 20px; /* Adds margin from bottom */
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #b5bab6;">
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_components/navbar.jsp"%>
	
	
	
	<div class="container-fluid back-img">
		<h1 class="text-danger" style="font-family: cursive;">Welcome to
			ComicO</h1>
	</div>


	<!-- Start Recent Book  -->
	<div class="container ">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getRecentBooks();
			for (BookDtls b : list2) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumbnail">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row">

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm mt-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm mt-1"><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						Categories :
						<%=b.getBookCategory()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add To Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm">Add To Cart</a>

							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm mt-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm mt-1"><%=b.getPrice()%></a>
						</div>

						<%
						}
						%>


					</div>

				</div>

			</div>


			<%
			}
			%>


			<!-- ------------------------------------------------------------- -->



			<!-- ------------------------------------------------------------- -->




			<!-- ------------------------------------------------------------- -->






		</div>
		<div class="text-center mt-3">
			<a href="all_recent_book.jsp"
				class="btn btn-danger btn-sm text-white">View All</a>
		</div>

	</div>

	<!-- End Recent Book -->

	<hr>

	<!-- Start New Book  -->
	<div class="container ">
		<h3 class="text-center">New Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumbnail">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add To Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm">Add To Cart</a>

							<%
							}
							%>


							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm mt-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm mt-1"><%=b.getPrice()%></a>
						</div>

					</div>

				</div>
			</div>

			<%
			}
			%>




			<!-- ------------------------------------------------------------- -->


			<!-- ------------------------------------------------------------- -->




			<!-- ------------------------------------------------------------- -->






		</div>
		<div class="text-center mt-3">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>

	</div>

	<!-- End New Book -->

	<hr>
	<!-- Start Old Book  -->
	<div class="container ">
		<h3 class="text-center">Old Book</h3>
		<div class="row">


			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBooks();
			for (BookDtls b : list3) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumbnail">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p><%=b.getBookCategory()%></p>

						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm mt-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm mt-1"><%=b.getPrice()%></a>
						</div>


					</div>

				</div>

			</div>


			<%
			}
			%>
			<!-- ------------------------------------------------------------- -->



			<!-- ------------------------------------------------------------- -->




			<!-- ------------------------------------------------------------- -->






		</div>
		<div class="text-center mt-3">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>

	</div>

	<!-- End Old Book -->
	<hr>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>