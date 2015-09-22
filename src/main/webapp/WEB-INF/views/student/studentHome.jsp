<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=1000px, initial-scale=1">
<title>	Student Page</title>



<link href="<c:url value="/resources/themes/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resources/themes/css/bootstrap-theme.min.css"/>"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/home.css" />">

<link
	href="<c:url value="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker.css"/>"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/themes/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.js"></script>
<style>

#circle
{border-radius:50% 50% 50% 50%;  
width:100px;
height:100px;
}
.modal-content {
	width: 400px;
}

.modal-body {
	width: 1500px;
}

/* must be half of the width, minus scrollbar on the left (30px) */
</style>

</head>
<body>
	<sec:authorize access="hasRole('ROLE_STUDENT')">
		<!-- For login user -->
		<div class="col-lg-12">
			<div class="card hovercard">
				<div class="card-background">
					<img class="card-bkimg" alt=""
						src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSflVF2rPe4eWEKuanlWy8Dwn94Z3ch_CKdrO6NpjtfsDpMB-MwSQ">
				</div>
				<div class="useravatar">
					<img alt=""
						src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSflVF2rPe4eWEKuanlWy8Dwn94Z3ch_CKdrO6NpjtfsDpMB-MwSQ">
				</div>
				<div class="card-info">
					<span class="card-title">Student Page</span>
				</div>
			</div>
			</div>
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
				$(document).ready(function() {

					$('#datepicker').datepicker({
						format : "yyyy-mm-dd"
					});

				});
			</script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#example').DataTable();
				});
			</script>
			

			<div class="container">

				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
					<li><a data-toggle="tab" href="#faculties">student search</a></li>
					<li><a data-toggle="tab" href="#students">reports</a></li>
					<li><a data-toggle="tab" href="#activities">activities</a></li>

				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<p align="right">
							<button type="button" class="btn btn-default btn-sm" id="editbtn"
								data-toggle="modal" data-target="#myModal">Edit</button>
						<div class="modal fade" id="myModal" role="form" method="POST">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Profile Edit</h4>
									</div>
									<div class="modal-body">
										<form:form id="addUser" role="form" method="post"
											modelAttribute="student" 
											action="${pageContext.request.contextPath}/student/update"
											class="validate">
											<div class="row">
												<div class="col-md-3">
													<div class="text-center">
													
														<table>
														
															<tr>
																<td>username</td>
																<td><form:input path="username"
																		placeholder="username" data-validate="required"
																		data-message-required="username is Required"></form:input><br></td>
															</tr>
															
																						<tr>
																<td>Student ID</td>
																<td><form:input path="studentID"
																		placeholder="Student ID" data-validate="required"
																		data-message-required="Student ID is Required"></form:input><br></td>
															</tr>
															
															
															<tr>
																<td>Class</td>
																<td><form:input path="Classroom"
																		placeholder="class" data-validate="required"
																		data-message-required="Class is Required" /><br>
																<td>
															</tr>
															<tr>
																<td>Date of Birth</td>
																<td><form:input id="datepicker" path="dateOfBirth"
																		placeholder="Date of Birth" data-validate="required"
																		data-message-required="Date of Birth is Required" /><br></td>
															</tr>
															<tr>
																<td>Gender</td>
																<td><form:input path="gender" placeholder="gender"
																		data-validate="required"
																		data-message-required="gender is Required" /><br></td>
															</tr>
															<tr>
																<td>Roll No</td>
																<td><form:input path="rollNo" placeholder="Roll No"
																		data-validate="required"
																		data-message-required="Roll No is Required" /><br></td>
															</tr>
															<tr>
																<td>fathers Name</td>
																<td><form:input path="fathersName"
																		placeholder="fathersName" data-validate="required"
																		data-message-required="fathersName is Required" /><br></td>
															</tr>
															<tr>
															<tr>
																<td>Contact Number</td>
																<td><form:input path="mobileNumber"
																		placeholder="Contact Number" data-validate="required"
																		data-message-required="Contact Number is Required" /><br></td>
															</tr>
															<tr>
																<td>Address</td>
																<td><form:input path="permanentAddress"
																		placeholder="Address" data-validate="required"
																		data-message-required="Address is Required" /><br></td>
															</tr>
															<tr>
																<td>fathers Job</td>
																<td><form:input path="fathersJob"
																		placeholder="fathersJob" data-validate="required"
																		data-message-required="fathersJob is Required" /><br></td>
															</tr>
															<tr>
																<td>Email</td>
																<td><form:input path="email" placeholder="email"
																		data-validate="required"
																		data-message-required="email adddress is Required" /><br></td>
															</tr>


															<tr>
																<td colspan="2">
																	<p align="center">
																		<button class="facultybutton" type="submitButton">update</button>
																	</p>
																</td>
															</tr>
														</table>



													</div>
												</div>
											</div>

										</form:form>
									
									</div>
								
						</div>
						</div>
						</div>
						<div class="modal fade" id="myphoto" role="form" method="POST">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Profile Edit</h4>
									</div>
									<div class="modal-body">	
									<form:form id="addphoto" role="form" method="post"
											modelAttribute="student" 
											action="${pageContext.request.contextPath}/student/update"
											class="validate">
											<div class="row">
												<div class="col-md-3">
													<div class="text-center">
													<img
													src="${pageContext.request.contextPath}/student/image?id=${student.id}" id="circle"
													/>
														<h6>Upload a different photo</h6>
															<tr>
																<td>profile picture</td>
																<td><form:input path="images" type ="file" 
																		placeholder="username" data-validate="required"
																		data-message-required="username is Required"></form:input><br></td>
															</tr>
															<tr>
																<td colspan="2">
																	<p align="center">
																		<button class="facultybutton" type="submitButton">update</button>
																	</p>
																</td>
														</tr>
							</div>
							</div>
							</div>
							</form:form>
							</div>
							</div>
							</div>
							</div>
							
			
					<div class="panel-body" id="studentmanagement">
						<h1>
							Your profile 
							<c:out value="" />
							
						</h1>
					
					<div class="container">
						<div class="row">
							<div
								class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
								<div class="panel panel-info">
									<div class="panel-heading">
										<h3 class="panel-title">
											<c:out value="${student.username}" />
										</h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-md-3 col-lg-3 " align="right">
												<img
													src="${pageContext.request.contextPath}/student/image?id=${student.id}" id="circle"
													height="100" width="100" />
													<p align="right">
							<button type="button" class="btn btn-default btn-sm" id="editbtn"
								data-toggle="modal" data-target="#myphoto">photo edit</button>
											</div>
											<div class=" col-md-9 col-lg-9 ">
												<table class="table table-user-information" >
													<tbody>
														
														<tr>
															<td>Father's Name:</td>
															<td><c:out value="${student.fathersName}" /></td>
														</tr>
														<tr>
															<td>Father's Job:</td>
															<td><c:out value="${student.fathersJob}" /></td>
														</tr>
														<tr>
															<td>Class</td>
															<td><c:out value="${student.classroom}" /></td>
														</tr>

														<tr>
															<td>Gender</td>
															<td><c:out value="${student.gender}" /></td>
														</tr>
														<tr>
															<td>Roll No.</td>
															<td><c:out value="${student.rollNo}" /></td>
														</tr>
														<tr>
															<td>Email</td>
															<td><c:out value="${student.email}" /></td>
														</tr>
														<tr>
															<td>Contact</td>
															<td><c:out value="${student.mobileNumber}" /></td>
														</tr>
														<tr>
															<td>Peramanent Address.</td>
															<td><c:out value="${student.permanentAddress}" /></td>
														</tr>
														<tr>
															<td>Date Of Birth.</td>
															<td><c:out value="${student.dateOfBirth}" /></td>
														</tr>
													</tbody>
												</table>

											</div>
										</div>

									</div>
								</div>
							</div>
					
						</div>
						</div>
					</div>
					</div>
	
							<div id="faculties" class="tab-pane fade">
								<h3>Student details</h3>
								<div class="container">
									<table id="example" class="table table-striped table-bordered"
										cellspacing="0" width="100%">

										<thead>
				<tr>
			<th>Student Name</th>
			<th>StudentId</th>
			<th>Father's Name</th>
			<th>Father's Occupation</th>
			<th>Class</th>
			<th>Roll Number</th>
			<th>Gender</th>
			<th>Email</th>
			<th>Permanent Address</th>
			<th>Date of Birth</th>
		
				</tr>
			</thead>
			<tbody>
			<c:forEach var="students" items="${students}">
				
					<tr>
						<td>${students.username}</td>
						<td>${students.studentID}</td>
						<td>${students.fathersName}</td>
						<td>${students.fathersJob}</td>
						<td>${students.classroom}</td>
						<td>${students.rollNo}</td>
						<td>${students.gender}</td>
						<td>${students.email}</td>
						<td>${students.permanentAddress}</td>
						<td>${students.dateOfBirth}</td>
						
			
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
<script>
var successMessage = "The User has been added";
$('#submitButton').on('click', function() {
	if ($('#addUse').valid()) {
		$('#submitButton').attr("disabled",true);
		$("#addUser").ajaxSubmit({
			target : ".modal-body",
			success : function() {	
				showSuccessNotification(successMessage,"Success")
				$('#myModal').modal('hide');
			}
		});			            
    }
});
			
$('#editbtn').on('click',function() {
	successMessage = "The User has been updated";
	$('#submitButton').text('update');
	showDialog('#myModal','student/update');
	$('#submitButton').attr('disabled',false);
});
</script>
	</sec:authorize>

</body>
</html>