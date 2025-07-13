<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ComicO : Manage Old Books</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">

	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center ">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container p-5">
		<table class="table">
			<thead>
				<tr class="table-warning">
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				User u = (User) session.getAttribute("userobj");
				String email = u.getEmail();

				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><td><a
						href="delete_old_book?email=<%=email%>&id=<%=b.getBookId()%>"
						class="btn btn-danger btn-sm">Delete</a></td>


					<td><%=b.getPrice()%></td>
					<!-- Debugging -->
				</tr>


				<%
				}
				%>



			</tbody>
		</table>

	</div>

</body>
</html>