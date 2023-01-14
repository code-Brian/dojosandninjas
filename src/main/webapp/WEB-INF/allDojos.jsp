<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/app.js"></script>

<title>Dojo | findAll</title>
</head>
<body>
	<div class="container">
		<h1>All Dojos</h1>
		<table class="table">
			<thead>
				<tr>
					<td>Name</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dojo" items="${allDojos}">
					<tr>
						<td><a href="${dojo.id}/view"><c:out value="${dojo.name}"/></a></td>
						<td>
							<form action="/dojo/${dojo.id}" method="POST">
								<input type="hidden" name="_method" value="DELETE"/>
								<button class="btn btn-danger">Delete</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p class="btn btn-primary"><a class="text-decoration-none text-light" href="/">Home</a></p>
	</div>
</body>
</html>