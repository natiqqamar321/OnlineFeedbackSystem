<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.feedback.entity.Admin"%>
<%
Admin user = (Admin) session.getAttribute("currentuser");
if (user == null) {
	response.sendRedirect("adminLogin.jsp");
}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>welcome Admin</title>
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/welcome.css">

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<h1 style="color: white" class="text-center mt-2">Welcome Admin</h1>
	<div class="container">
		<div class="row">
			<div class="col-10 p-3">
				<h3 style="color: green">Feedbacks of Users with details!</h3>
			</div>

			<div class="col-2 p-3">
				<a href="logout"><button type="button" href="logout"
						class="btn btn-danger">Logout</button></a>
			</div>
		</div>
	</div>

	<div>
		<table class="table table-dark">
			<tr>
				<th>OverAll Experiance</th>
				<th>Name</th>
				<th>Email</th>
				<th>Age</th>
				<th>Phn</th>
				<th>Msg</th>
				<!-- <th>Actions</th> -->
			</tr>
			<c:forEach items="${feedback}" var="e">

				<!-- Fetching employee id -->
				<%-- <c:url var="deleteLink" value="/deleteemployee">
					<c:param name="employeeId" value="${e.id}" />
				</c:url>


				<c:url var="updateLink" value="/editemployee">
					<c:param name="employeeId" value="${e.id}" />
				</c:url> --%>


				<tr>
					<td>${e.experiance}</td>
					<td>${e.name}</td>
					<td>${e.email}</td>
					<td>${e.age}</td>
					<td>${e.phone}</td>
					<td>${e.msg}</td>
					<%-- <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}"
						onclick="if(!(confirm('Are you sure want to delete the record ?'))) return false;">Delete</a></td> --%>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>