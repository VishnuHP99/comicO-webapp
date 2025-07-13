<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookLine : Recent Books</title>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
<%@include file="all_components/allCss.jsp"%>
</head>

<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<div class="container-fluid">
		<div class="row p-3">

			<%
			String ch = request.getParameter("ch");
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getBookBySearch(ch);
			for (BookDtls b : list2) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho mt-3">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 120px" class="img-thumbnail">
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


		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>