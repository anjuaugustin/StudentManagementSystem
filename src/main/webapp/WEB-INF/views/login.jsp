<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Log in Page</title>
<link href="<c:url value="/resources/themes/login/css/login.css"/>"
	rel="stylesheet" type="text/css">

</head>
<body >
	<div class="loginheading" align="center"><h2>Student Management System</h2></div>
	<br>
	<br>
	<div class="login">
		<div class="heading">
			<h2>Log in</h2>
			<c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
			<c:if test="${not empty sessionexpired}">
				<div class="msg">${sessionexpired}</div>
			</c:if>
			
			<form action="<c:url value='/j_spring_security_check' />"
				method='POST'>

				<div class="input-group input-group-lg">
					<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
						type="text" class="form-control" placeholder="Username or email"
						name='j_username'>
				</div>

				<div class="input-group input-group-lg">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" class="form-control" placeholder="Password"
						name='j_password'>
				</div>
				<div  align="left">
				<input type="checkbox" name="_spring_security_remember_me"  />
				<span class="input-group-addon">Remember Me</span>
				</div>

				<button type="submit" class="float" name="submit" value="submit">Login</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</body>
</html>