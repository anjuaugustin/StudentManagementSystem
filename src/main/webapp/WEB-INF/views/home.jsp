<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>
<body>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<p align="right">
			<a href="javascript:formSubmit()"> Logout</a>
		</p>
	</c:if>
	<p align="left">
		<a href="../admin">Home</a>
	
	</p>
	<h1>All Students</h1>
	<c:forEach var="person" items="${persons}">
    studentId: ${person.studentID} 
    Name: ${person.name} 
    Aggregate: ${person.aggregate} 
    Subject: ${person.stream} 
    password: ${person.password} 
    <a href="deletePerson?id=${person.id}">Remove</a>
		<br />
	</c:forEach>

	<h1>Add New</h1>
	<form method="post" action="addPerson">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" /><br></td>
			</tr>
			<tr>
				<td>StudentID</td>
				<td><input type="text" name="studentID" /><br></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" /><br></td>
			</tr>
			<tr>
				<td>Subject</td>
				<td><input type="text" name="stream" /><br></td>
			</tr>
			<tr>
				<td>Aggregate</td>
				<td><input type="text" name="Aggregate" /><br></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button>Add</button>
				</td>
			</tr>
		</table>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>