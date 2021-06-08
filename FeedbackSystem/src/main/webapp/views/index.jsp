<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Home page</title>

<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,400;1,400&display=swap"
	rel="stylesheet">
<!-- Style sheet -->
<link rel="stylesheet" type="text/css" href="/css/home.css">
</head>
<body>
     <h1 class="text-center" style="color: green">${msg}</h1>
     <br>
	<img src="/image/index.jpg" width="100" height="100">
	<div class="heading">
		<h1 class="text-white">
			WELCOME TO <BR> THE FEEDBACK SYSTEM
		</h1>
		<a href="feedback"><button type="button"
				class="btn btn-success text-dark mt-3 mr-4">USER FEEDBACK</button></a> <a
			href="admin"><button type="button" href="admin"
				class="btn btn-danger mt-3">ADMIN</button></a>

	</div>





	<!-- Links -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>