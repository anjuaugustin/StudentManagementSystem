<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>
<body>
  <h1>All Students</h1>
<c:forEach var="person" items="${persons}">
    studentId: ${person.studentID} Name: ${person.name} Aggregate: ${person.aggregate} Subject: ${person.stream} password: ${person.password} <a href="deletePerson?id=${person.id}">Remove</a></a><br/>
  </c:forEach> 
   
  <h1>Add New</h1>
  <form method="post" action="addPerson">
   Name: <input type="text" name="name"/><br>	 
   Aggregate: <input type="text" name="Aggregate"/><br>
   Subject: <input type="text" name="stream"/>
   Password: <input type="text" name="password"/>
   StudentID: <input type="text" name="studentID"/>
  <button>Add</button>
  </form>
 
</body>
</html>