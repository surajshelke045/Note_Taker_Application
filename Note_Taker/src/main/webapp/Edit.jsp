<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit </title>
   <%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container-fluid p-0 m-0">
    
    <%@include file="navbar.jsp" %>
    <br>
    <div class="container">
    
    <h1>This is Edit page</h1>
    
    <%
    
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();
    Note note=s.get(Note.class, noteId);
     %>
    
    <form action="UpdateServlet" method="post">
    
      <input type="hidden" name="noteId" value="<%= note.getId() %>" />
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter Title here"
					name="title"
					value="<%= note.getTitle() %>"
					> 
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here.."
					class="form-control"
					style="height: 300px;"
					name="content"
					required
					><%= note.getContent() %></textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-info">Update</button>
			</div>
			
		</form>
		
</div>
    

</body>
</html>