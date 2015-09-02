<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty Management</title>
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
	<h1>All Faculties</h1>
	<c:forEach var="person" items="${persons}">
    Name: ${person.username} 
    Full Name: ${person.fullname} 
    Permanent Address: ${person.permanentaddress} 
    Present Address: ${person.presentaddress} 
    Date of Birth: ${person.dob} 
    Mobile Number: ${person.mob}
    <a href="deleteFaculty?id=${person.id}">Remove</a>
		<br />
	</c:forEach>

	<h1>Add New</h1>
	<form method="post" action="addFaculty">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" /><br></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" /><br></td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td><input type="text" name="fullname" /><br></td>
			</tr>
			<tr>
				<td>Permanent Address</td>
				<td><input type="text" name="permanentaddress" /><br></td>
			</tr>
			<tr>
				<td>Present Address</td>
				<td><input type="text" name="presentaddress" /><br></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="text" name="dob" /><br></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mob" /><br></td>
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