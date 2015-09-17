<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=1000px, initial-scale=1">
<title>Faculty Page</title>

 

<link href="<c:url value="/resources/themes/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/themes/css/bootstrap-theme.min.css"/>" rel="stylesheet" type="text/css">

<link href="<c:url value="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/resources/themes/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.js"></script>
<style>
.modal-content{
width: 400px;
}
.modal-body {
    width: 1500px;
    /* must be half of the width, minus scrollbar on the left (30px) */
   
</style>
</head>
<body>
<sec:authorize access="hasRole('ROLE_FACULTY')">
	<!-- For login user -->
	<img src="resources/images/faculty.jpeg" width="1300" height="180">
	<p align="right">
		<a href="javascript:formSubmit()"> Logout</a>
	</p>
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
	<script type="text/javascript">
	 $(document).ready(function () {
         
         $('#datepicker').datepicker({
             format: "yyyy-mm-dd"
         });  
     
     });
    </script>
	<script type="text/javascript">
	$(document).ready(function() {
    $('#example').DataTable();
} );
	</script>

	<div class="container">
 
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#faculties">Faculties</a></li>
    <li><a data-toggle="tab" href="#students">Students</a></li>
   
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>My Home</h3>
     
      <p align="right">
      <button type="button" class="btn btn-default btn-sm" data-toggle="modal" 
      data-target="#myModal">Edit</button>
      <div class="modal fade" id="myModal" role="form" method="POST">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">My Profile Edit</h4>
        </div>
        <div class="modal-body">
        
       <form:form id="myModal" role="form" method="post"
	modelAttribute="faculty" action="faculty/facultyEdit"
	class="validate">
	<div class="row">
		
		
		<div class="col-md-3">
        <div class="text-center">
          <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          
          <form:input type="file" path="facultyPhoto" placeholder="Faculty ID" ></form:input>
       
       
       
      </div>
      <br>
		<table>
                <tr>
					<td>Faculty ID</td>
					<td><form:input path="facultyID" placeholder="Faculty ID" data-validate="required"
					data-message-required="Faculty ID is Required"></form:input><br></td>
				</tr>
				<tr>
					<td>Name of the faculty</td>
					<td><form:input path="facultyName" placeholder="Faculty Name" data-validate="required"
					data-message-required="Faculty Name is Required" /><br></td>
				</tr>
				<tr>
					<td>Place</td>
					<td><form:input path="place" placeholder="Place" data-validate="required"
					data-message-required="Place is Required" /><br><td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>
					
					<form:input id="datepicker" path="dateOfBirth" placeholder="Date of Birth" data-validate="required"
					data-message-required="Date of Birth is Required" /><br></td>
				</tr>
				<tr>
					<td>Years of experience</td>
					<td><form:input path="yearsOfExperience" placeholder="Years of experience" data-validate="required"
					data-message-required="Years of experience is Required" /><br></td>
				</tr>
				<tr>
					<td>Specialization</td>
					<td><form:input  path="specialisation" placeholder="Specialization" data-validate="required"
					data-message-required="Specialization is Required" /><br></td>
				</tr>
				<tr>
					<td>Educational qualification</td>
					<td><form:input  path="educationalQualification" placeholder="Educational qualification" data-validate="required"
					data-message-required="Educational qualification is Required" /><br></td>
				</tr>
				<tr>
				<tr>
					<td>Contact Number</td>
					<td><form:input  path="contactNumber" placeholder="Contact Number" data-validate="required"
					data-message-required="Contact Number is Required" /><br></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:input  path="address" placeholder="Address" data-validate="required"
					data-message-required="Address is Required"  /><br></td>
				</tr>
				<tr>
					<td colspan="2">
						<p align="center">
							<button class="facultybutton" type="submit">Save</button>
						</p>
					</td>
				</tr>
			</table>
		
			
		</div>
		</div>
		
		
        </form:form>
        
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
      
      
      
      <div class="container">
   
            <table class="table"> 
	
				<tr>
					<th>Faculty ID</th>
					<td>${faculty.facultyID}<br></td>
				</tr>
				<tr>
					<th>Name of the faculty</th>
					<td>${faculty.facultyName}<br></td>
				</tr>
				<tr>
					<th>Place</th>
					<td>${faculty.place}<br><td>
				</tr>
				<tr>
					<th>Date of Birth</th>
					<td>${faculty.dateOfBirth}<br></td>
				</tr>
				<tr>
					<th>Years of experience</th>
					<td>${faculty.yearsOfExperience}<br></td>
				</tr>
				<tr>
					<th>Specialization</th>
					<td>${faculty.specialisation}<br></td>
				</tr>
				<tr>
					<th>Educational qualification</th>
					<td>${faculty.educationalQualification}<br></td>
				</tr>
				<tr>
				<tr>
					<th>Contact Number</th>
					<td>${faculty.contactNumber}<br></td>
				</tr>
				<tr>
					<th>Address</th>
					<td>${faculty.address}<br></td>
				</tr>
			
			</table>
         
        </div>
    </div>
    <div id="faculties" class="tab-pane fade">
      <h3>Faculty List</h3>
      <br>
      <br>
      <div class="container">
  <table  id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
 
    <thead>
      <tr>
         <th>Faculty ID</th>
				<th>Faculty Name</th>
				<th>Place</th>
				<th>Date of Birth</th>
				<th>Years of experience</th>
				<th>Specialization</th>
				<th>Educational Qualification</th>
				<th>Contact Number</th>
				<th>Address</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach var="person" items="${persons}">
				<tr>
					<td>${person.facultyID}</td>
					<td>${person.facultyName}</td>
					<td>${person.place}</td>
					<td>${person.dateOfBirth}</td>
					<td>${person.yearsOfExperience}</td>
					<td>${person.specialisation}</td>
					<td>${person.educationalQualification}</td>
					<td>${person.contactNumber}</td>
					<td>${person.address}</td>
					
				</tr>
			</c:forEach>
    </tbody>
  </table>
</div>
     </div>    
    <div id="students" class="tab-pane fade">
      <h3>Student List</h3>
ccc
    </div>
   
  </div>

	</div>
	
	
	</sec:authorize>

</body>
</html>