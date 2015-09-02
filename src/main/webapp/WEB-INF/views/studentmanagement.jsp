<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
</head>
<style>
.studentdisplaytable {
	margin: 0px;
	padding: 0px;
	width: 100%;
	box-shadow: 10px 10px 5px #888888;
	border: 1px solid #000000;
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
	-moz-border-radius-bottomright: 0px;
	-webkit-border-bottom-right-radius: 0px;
	border-bottom-right-radius: 0px;
	-moz-border-radius-topright: 0px;
	-webkit-border-top-right-radius: 0px;
	border-top-right-radius: 0px;
	-moz-border-radius-topleft: 0px;
	-webkit-border-top-left-radius: 0px;
	border-top-left-radius: 0px;
}

.studentdisplaytable table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}

.studentdisplaytable tr:last-child td:last-child {
	-moz-border-radius-bottomright: 0px;
	-webkit-border-bottom-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

.studentdisplaytable table tr:first-child td:first-child {
	-moz-border-radius-topleft: 0px;
	-webkit-border-top-left-radius: 0px;
	border-top-left-radius: 0px;
}

.studentdisplaytable table tr:first-child td:last-child {
	-moz-border-radius-topright: 0px;
	-webkit-border-top-right-radius: 0px;
	border-top-right-radius: 0px;
}

.studentdisplaytable tr:last-child td:first-child {
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
}

.studentdisplaytable tr:hover td {
	
}

.studentdisplaytable tr:nth-child(odd) {
	background-color: #aad4ff;
}

.studentdisplaytable tr:nth-child(even) {
	background-color: #ffffff;
}

.studentdisplaytable td {
	vertical-align: middle;
	border: 1px solid #000000;
	border-width: 0px 1px 1px 0px;
	text-align: left;
	padding: 7px;
	font-size: 10px;
	font-family: Arial;
	font-weight: normal;
	color: #000000;
}

.studentdisplaytable tr:last-child td {
	border-width: 0px 1px 0px 0px;
}

.studentdisplaytable tr td:last-child {
	border-width: 0px 0px 1px 0px;
}

.studentdisplaytable tr:last-child td:last-child {
	border-width: 0px 0px 0px 0px;
}

.studentdisplaytable tr:first-child td {
	background: -o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #005fbf
		), color-stop(1, #003f7f));
	background: -moz-linear-gradient(center top, #005fbf 5%, #003f7f 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf",
		endColorstr="#003f7f");
	background: -o-linear-gradient(top, #005fbf, 003f7f);
	background-color: #005fbf;
	border: 0px solid #000000;
	text-align: center;
	border-width: 0px 0px 1px 1px;
	font-size: 14px;
	font-family: Arial;
	font-weight: bold;
	color: #ffffff;
}

.studentdisplaytable tr:first-child:hover td {
	background: -o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #005fbf
		), color-stop(1, #003f7f));
	background: -moz-linear-gradient(center top, #005fbf 5%, #003f7f 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf",
		endColorstr="#003f7f");
	background: -o-linear-gradient(top, #005fbf, 003f7f);
	background-color: #005fbf;
}

.studentdisplaytable tr:first-child td:first-child {
	border-width: 0px 0px 1px 0px;
}

.studentdisplaytable tr:first-child td:last-child {
	border-width: 0px 0px 1px 1px;
}
</style>
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
	<div class="studentdisplaytable">
		<table>
			<tr>
				<td>studentId</td>
				<td>Name</td>
				<td>Aggregate</td>
				<td>Subject</td>
				<td>Delete</td>
			</tr>
			<c:forEach var="person" items="${persons}">
				<tr>
					<td>${person.studentID}</td>
					<td>${person.name}</td>
					<td>${person.aggregate}</td>
					<td>${person.stream}</td>
					<td><a href="deleteStudent?id=${person.id}">Remove</a></td>
				<tr>
			</c:forEach>
		</table>
	</div>
	<h1>Add New</h1>
	<form method="post" action="addStudent">
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