<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.feedback.entity.Message"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Feedback Form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/style.css">

</head>

<body>
   <div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">

				<h1 class="text-center mt-5 font-weight-bold">Feedback</h1>
				<hr class="bg-white">
				<h6 class="text-center">Please write your feedback below:</h6>
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

				<h3 class="mt-4">How do you rate your overall experience?</h3>

				<form action="savefeedback">
					<label class="radio-inline"><input type="radio"
						name="experiance" value="bad">Bad</label> <label
						class="radio-inline"><input type="radio" name="experiance"
						value="Average">Average</label> <label class="radio-inline"><input
						type="radio" name="experiance" value="Good">Good</label>
			</div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<label class="col-md-4">Full Name*<br> <input
				type="text" id="text" required="" name="name"
				placeholder="Abdul Rafay"></label> <label class="col-md-4">Email*<br>
				<input type="text" id="text" required="" name="email"
				placeholder="theprovider@gmail.com"></label>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<label class="col-md-4">Age*<br> <input type="number"
				id="text" required="" name="age" placeholder="25"></label> <label
				class="col-md-4">Phone*<br> <input type="number"
				id="text" required="" name="phone" placeholder="+92123456789"></label>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<label class="col-md-8">Message*<br> <textarea
					id="message" required="" name="msg"
					placeholder="Write yor message here" cols="48" rows="5"></textarea></label>
		</div>

		<div class="row">
			<button class="btn btn-danger"
				style="width: 53.5%; position: absolute; margin-left: 15%;">Submit</button>
	   </div>
	   </form>
	  </div>
      
</body>
</html>
