<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-center">All Notes</h1>
		<br>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");

				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="container">
				<div class="card mt-3">
					<img class="card-img-top m-3 mx-auto" style="max-width: 80px;" src="img/notepad.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<p class="card-text text-primary"><b><%=note.getAddedDate() %></b></p>
						<div class="container text-center mt-2">
						<a href="Edit.jsp?note_id=<%= note.getId() %>" class="btn btn-warning ml-2">Update</a>&nbsp;&nbsp;
						<a href="DeleteServlet?note_id=<%= note.getId()%>" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>
				</div>
 
				<%
				}

				s.close();
				%>

			</div>

		</div>


	</div>

</body>
</html>