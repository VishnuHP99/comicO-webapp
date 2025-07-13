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

	<div class="container-fluid">
		<div class="row p-3">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllOldBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumbnail">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row">
							> <a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm mt-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm mt-1"><%=b.getPrice()%></a>
						</div>

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