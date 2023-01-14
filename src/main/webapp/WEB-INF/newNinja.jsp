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

<title>Ninja | Create</title>
</head>
<body>
	<div class="container">
		<h1>Create a Ninja!</h1>
		<div class="container">
			<form:form action="/ninja/create" method="POST" modelAttribute="ninja">
				<!-- Code needs to go here to iterate through all the dojos and input them into a selector -->
				<div>
					<form:label path="dojo">Dojo</form:label>
					<form:select path="dojo">
						<c:forEach var="oneDojo" items="${allDojos}">
							<form:option value="${oneDojo.id}">
								<c:out value="${oneDojo.name}"/>
							</form:option>
						</c:forEach>
					</form:select>
				</div>
				<div>
					<form:label path="firstName">First name</form:label>
					<form:input path="firstName"/>
					<form:errors path="firstName"/>
				</div>
				<div>
					<form:label path="lastName">Last Name</form:label>
					<form:input path="lastName"/>
					<form:errors path="lastName"/>
				</div>
				<div>
					<form:label path="age">Age</form:label>
					<form:input path="age" type="number" min="18"/>
					<form:errors path="age"/>
				</div>
				<button class="btn btn-primary">Create Ninja</button>
			</form:form>
		</div>
		<p class="btn btn-primary"><a class="text-light text-decoration-none" href="/">Home</a></p>
	</div>
</body>
</html>