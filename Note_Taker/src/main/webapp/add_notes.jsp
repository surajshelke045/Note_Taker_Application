<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes Here</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid m-0 p-0">

		<%@ include file="navbar.jsp"%>
		</div>
		<br>
		<h1 class="text-center">Add Your Notes here</h1>
		
		<div class="container">
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter Title here"
					name="title"
					required
					> 
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here.."
					class="form-control"
					style="height: 300px;"
					name="content"
					required
					></textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>

	</div>
	


</body>
</html>