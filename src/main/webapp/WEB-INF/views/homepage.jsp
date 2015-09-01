<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<h1>USER PAGE</h1><br>
		<p align="right"><a href="javascript:formSubmit()"> Logout</a></p>
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
			<h2>
				User : ${pageContext.request.userPrincipal.name} 
			</h2>
		</c:if>


	</sec:authorize>
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
		<div align="right"><a	href="javascript:formSubmit()"> Logout</a></div>
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name}
		</h2>
		<a href="admin/studentmanagement">Student Management</a>
	</c:if>
	</sec:authorize>
</body>
</html>