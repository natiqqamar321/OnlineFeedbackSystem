<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.feedback.entity.Message"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Login page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/stylead.css">
</head>
<body>
	<div class="main" style="">
		<div class="title">Admin Login</div>
		<%
		Message m = (Message) session.getAttribute("msg");
		if (m != null) {
		%>
		<div class="alert <%=m.getCssClass()%>" role="alert">
			<%=m.getContent()%>
		</div>
		<%
		session.removeAttribute("msg");
		}
		%>
		<form action="submit" method="post">
			<div class="credentials">
				<div class="username">
					<span class="glyphicon glyphicon-user"></span> <input type="text"
						name="username" placeholder="Username" required="">
				</div>
				<div class="password">
					<span class="glyphicon glyphicon-lock"></span> <input
						type="password" name="password" placeholder="Password" required="">
				</div>
			</div>
			<button class="submit">Submit</button>
		</form>
		<div class="link">
			<a href="#">Forget Password? </a> &nbsp <a href="/"> Back to Home </a>
		</div>
	</div>

</body>
</html>