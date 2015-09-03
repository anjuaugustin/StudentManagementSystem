<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty Management</title>
</head>
<style>
.facultydisplaytable {
	margin: 0px;
	padding: 0px;
	width: 100%;
	box-shadow: 10px 10px 5px #888888;
	border: 1px solid #3f7f00;
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

.facultydisplaytable table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}

.facultydisplaytable tr:last-child td:last-child {
	-moz-border-radius-bottomright: 0px;
	-webkit-border-bottom-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

.facultydisplaytable table tr:first-child td:first-child {
	-moz-border-radius-topleft: 0px;
	-webkit-border-top-left-radius: 0px;
	border-top-left-radius: 0px;
}

.facultydisplaytable table tr:first-child td:last-child {
	-moz-border-radius-topright: 0px;
	-webkit-border-top-right-radius: 0px;
	border-top-right-radius: 0px;
}

.facultydisplaytable tr:last-child td:first-child {
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
}

.facultydisplaytable tr:hover td {
	
}

.facultydisplaytable tr:nth-child(odd) {
	background-color: #d4ffaa;
}

.facultydisplaytable tr:nth-child(even) {
	background-color: #ffffff;
}

.facultydisplaytable td {
	vertical-align: middle;
	border: 1px solid #3f7f00;
	border-width: 0px 1px 1px 0px;
	text-align: left;
	padding: 7px;
	font-size: 10px;
	font-family: Arial;
	font-weight: normal;
	color: #000000;
}

.facultydisplaytable tr:last-child td {
	border-width: 0px 1px 0px 0px;
}

.facultydisplaytable tr td:last-child {
	border-width: 0px 0px 1px 0px;
}

.facultydisplaytable tr:last-child td:last-child {
	border-width: 0px 0px 0px 0px;
}

.facultydisplaytable tr:first-child td {
	background: -o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5fbf00
		), color-stop(1, #3f7f00));
	background: -moz-linear-gradient(center top, #5fbf00 5%, #3f7f00 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00",
		endColorstr="#3f7f00");
	background: -o-linear-gradient(top, #5fbf00, 3f7f00);
	background-color: #5fbf00;
	border: 0px solid #3f7f00;
	text-align: center;
	border-width: 0px 0px 1px 1px;
	font-size: 14px;
	font-family: Arial;
	font-weight: bold;
	color: #ffffff;
}

.facultydisplaytable tr:first-child:hover td {
	background: -o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5fbf00
		), color-stop(1, #3f7f00));
	background: -moz-linear-gradient(center top, #5fbf00 5%, #3f7f00 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00",
		endColorstr="#3f7f00");
	background: -o-linear-gradient(top, #5fbf00, 3f7f00);
	background-color: #5fbf00;
}

.facultydisplaytable tr:first-child td:first-child {
	border-width: 0px 0px 1px 0px;
}

.facultydisplaytable tr:first-child td:last-child {
	border-width: 0px 0px 1px 1px;
}

.facultyaddtable {
	margin: 0px;
	padding: 0px;
	width: 100%;
	box-shadow: 10px 10px 5px #888888;
	border: 1px solid #3f7f00;
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

.facultyaddtable table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}

.facultyaddtable tr:last-child td:last-child {
	-moz-border-radius-bottomright: 0px;
	-webkit-border-bottom-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

.facultyaddtable table tr:first-child td:first-child {
	-moz-border-radius-topleft: 0px;
	-webkit-border-top-left-radius: 0px;
	border-top-left-radius: 0px;
}

.facultyaddtable table tr:first-child td:last-child {
	-moz-border-radius-topright: 0px;
	-webkit-border-top-right-radius: 0px;
	border-top-right-radius: 0px;
}

.facultyaddtable tr:last-child td:first-child {
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
}

.facultyaddtable tr:hover td {
	
}

.facultyaddtable tr:nth-child(odd) {
	background-color: #d4ffaa;
}

.facultyaddtable tr:nth-child(even) {
	background-color: #ffffff;
}

.facultyaddtable td {
	vertical-align: middle;
	border: 1px solid #3f7f00;
	border-width: 0px 1px 1px 0px;
	text-align: left;
	padding: 7px;
	font-size: 10px;
	font-family: Arial;
	font-weight: normal;
	color: #000000;
}

.facultyaddtable tr:last-child td {
	border-width: 0px 1px 0px 0px;
}

.facultyaddtable tr td:last-child {
	border-width: 0px 0px 1px 0px;
}

.facultyaddtable tr:last-child td:last-child {
	border-width: 0px 0px 0px 0px;
}

.facultyaddtable tr:first-child td {
	background: -o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5fbf00
		), color-stop(1, #3f7f00));
	background: -moz-linear-gradient(center top, #5fbf00 5%, #3f7f00 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00",
		endColorstr="#3f7f00");
	background: -o-linear-gradient(top, #5fbf00, 3f7f00);
	background-color: #5fbf00;
	border: 0px solid #3f7f00;
	text-align: center;
	border-width: 0px 0px 1px 1px;
	font-size: 14px;
	font-family: Arial;
	font-weight: bold;
	color: #ffffff;
}

.facultyaddtable tr:first-child:hover td {
	background: -o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5fbf00
		), color-stop(1, #3f7f00));
	background: -moz-linear-gradient(center top, #5fbf00 5%, #3f7f00 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00",
		endColorstr="#3f7f00");
	background: -o-linear-gradient(top, #5fbf00, 3f7f00);
	background-color: #5fbf00;
}

.facultyaddtable tr:first-child td:first-child {
	border-width: 0px 0px 1px 0px;
}

.facultyaddtable tr:first-child td:last-child {
	border-width: 0px 0px 1px 1px;
}

.facultybutton {
	background: #86d934;
	background-image: -webkit-linear-gradient(top, #86d934, #20d456);
	background-image: -moz-linear-gradient(top, #86d934, #20d456);
	background-image: -ms-linear-gradient(top, #86d934, #20d456);
	background-image: -o-linear-gradient(top, #86d934, #20d456);
	background-image: linear-gradient(to bottom, #86d934, #20d456);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	text-shadow: 3px 3px 5px #0a030a;
	-webkit-box-shadow: 0px 1px 3px #666666;
	-moz-box-shadow: 0px 1px 3px #666666;
	box-shadow: 0px 1px 3px #666666;
	font-family: Courier New;
	color: #ffffff;
	font-size: 10px;
	padding: 6px 40px 6px 40px;
	border: solid #89cc8d 2px;
	text-decoration: none;
}

.facultybutton:hover {
	background: #3cb0fd;
	background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
	background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
	text-decoration: none;
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
		<div>
			<span style="text-align:left">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
				 ${pageContext.request.userPrincipal.name}
	</c:if>
			</span>
			<span style="float:right">
				<a href="javascript:formSubmit()"> Logout</a>
			</span>
		</div>
	</c:if>
	<p align="left">
		<a href="../admin">Home</a>

	</p>
	<h1>All Faculties</h1>
	<div class="facultydisplaytable">
		<table>
			<tr>
				<td>Name</td>
				<td>Full Name</td>
				<td>Permanent Address</td>
				<td>Present Address</td>
				<td>Date of Birth</td>
				<td>Mobile Number</td>
				<td>Delete</td>
			</tr>
			<c:forEach var="person" items="${persons}">
				<tr>
					<td>${person.username}</td>
					<td>${person.fullname}</td>
					<td>${person.permanentaddress}</td>
					<td>${person.presentaddress}</td>
					<td>${person.dob}</td>
					<td>${person.mob}</td>
					<td><a href="deleteFaculty?id=${person.id}">Remove</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br>
	<h1>Add New</h1>
	<form method="post" action="addFaculty">
		<div class="facultyaddtable">
			<table>
				<tr>
					<td colspan="2">Enter the Details of the Student</td>
				</tr>
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
					<td colspan="2">
						<p align="center">
							<button class="facultybutton">Add</button>
						</p>
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>