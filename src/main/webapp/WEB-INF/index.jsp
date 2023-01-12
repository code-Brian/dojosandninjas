<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/app.js"></script>

<title>Dojos and Ninjas</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to Dojos and Ninjas!</h1>
		<div class="card-group">
			<div class="card">
				<div class="card-header">
					<h2>Create a new Dojo</h2>
				</div>
				<div class="card-body">
					<p class="btn btn-success"><a class="text-light text-decoration-none" href="/dojo/create">Create Dojo</a></p>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<h2>Add a new Ninja</h2>
				</div>
				<div class="card-body">
					<p class="btn btn-success"><a class="text-light text-decoration-none" href="/ninja/create">Create Ninja</a></p>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<h2>View All Dojos</h2>
				</div>
				<div class="card-body">
					<p class="btn btn-success"><a class="text-light text-decoration-none" href="/dojo/all">View Dojos</a></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>