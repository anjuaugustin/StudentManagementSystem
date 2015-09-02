<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<h1>ADMIN PAGE</h1>
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
			<div align="right">
				<a href="javascript:formSubmit()"> Logout</a>
			</div>
			<h2>Welcome : ${pageContext.request.userPrincipal.name}</h2>
			<a href="admin/studentmanagement">Student Management</a><br>
			<a href="admin/facultymanagement">Faculty Management</a><br>
		</c:if>
	</sec:authorize>
</body>
</html>