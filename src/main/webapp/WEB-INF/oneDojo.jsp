<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/app.js"></script>

<title>Dojo | findOne</title>
</head>
<body>
	<div class="container">
		<h1>${dojo.name}</h1>
		<!-- For each meme here after ninjas table is added to Dojo -->
		<h2>Ninjas in the dojo:</h2>
		<table class="table">
			<thead>
				<tr>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Age</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="oneNinja" items="${dojo.ninjas}">
					<tr>
						<td>${oneNinja.firstName}</td>
						<td>${oneNinja.lastName}</td>
						<td>${oneNinja.age}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p class="btn btn-primary"><a class="text-decoration-none text-light"href="/">Home</a></p>
	</div>
</body>
</html>