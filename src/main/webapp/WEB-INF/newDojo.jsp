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

<title>Dojo | Create</title>
</head>
<body>
	<div class="container">
		<h1>Create a Dojo!</h1>
		<div class="container">
			<form:form action="/dojo/create" method="POST" modelAttribute="dojo">
				<div>
					<form:label path="name">Name</form:label>
					<form:input path="name"/>
					<form:errors path="name"/>
				</div>
				<button class="btn btn-primary">Create Dojo</button>
			</form:form>
		</div>
		<p class="btn btn-primary"><a class="text-light text-decoration-none" href="/">Home</a></p>
	</div>
</body>
</html>