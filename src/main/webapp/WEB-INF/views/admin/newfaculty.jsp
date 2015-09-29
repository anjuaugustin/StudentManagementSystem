<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SMS | Student Management System</title>

<!-- Bootstrap core CSS -->

<link href="<c:url value="/resources/admin/css/bootstrap.min.css"/>"
	rel="stylesheet">

<link
	href="<c:url value="/resources/admin/fonts/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/admin/css/animate.min.css"/>"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="<c:url value="/resources/admin/css/custom.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/admin/css/icheck/flat/green.css"/>"
	rel="stylesheet" />



<!-- <script src="<c:url value="/resources/admin/js/jquery.min.js"/>"></script> -->
<!-- <script src="<c:url value="/resources/admin/js/notify.min.js"/>"></script> -->
<!-- <script -->
<!-- 	src="<c:url value="/resources/admin/js/jquery.form-validator.min.js"/>"></script> -->
</head>


<body class="nav-md">

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
<!-- 	<script type="text/javascript">
		$(document).ready(function() {
			$("#form").submit(function() {

				alert("Successfully Entered to Database");
			});

		});
	</script> -->

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="homepage" class="site_title"><i class="fa fa-paw"></i>
							<span>SMS Admin</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu prile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="<c:url value="/resources/admin/images/sajay.jpg"/>"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Sajay Sunny</h2>
						</div>
					</div>
					<!-- /menu prile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="homepage"><i class="fa fa-home"></i> Home
										<span></span></a></li>
								<li><a><i class="fa fa-edit"></i> Forms <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="newstudent">Add New Student</a></li>
										<li><a href="newfaculty">Add New Faculty</a></li>

									</ul></li>
								<li><a><i class="fa fa-table"></i> Tables <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="studentlist">Student List</a></li>
										<li><a href="facultylist">Faculty List</a></li>
									</ul></li>

							</ul>
						</div>


					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="${logoutUrl}"> <input type="hidden"
							name="${_csrf.parameterName}" value="${_csrf.token}" /> <span
							class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img
									src="<c:url value="/resources/admin/images/sajay.jpg"/>" alt="">Sajay
									<span class=" fa fa-angle-down"></span>
							</a>
								<ul
									class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="${logoutUrl}"> <input type="hidden"
											name="${_csrf.parameterName}" value="${_csrf.token}" /> <i
											class="fa fa-sign-out pull-right"></i> Log Out
									</a></li>
								</ul></li>


						</ul>
					</nav>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">

							<div class="x_title">
								<h2>Faculty Details</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<form class="form-horizontal form-label-left" method="post"
									action="newfaculty" id="form">



									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											id="facultyid">Faculty ID<span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input id="facultyID" class="form-control col-md-7 col-xs-12"
												name="facultyID" type="text" required="required"> <span
												class="fa fa-user form-control-feedback right"
												aria-hidden="true"></span>
										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Faculty
											Name <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input id="facultyName"
												class="form-control col-md-7 col-xs-12" name="facultyName"
												type="text" data-validation="length alphanumeric"
												data-validation-length="3-12"
												data-validation-error-msg="Faculty name has to be an alphanumeric value (3-12 chars)"
												required="required"> <span
												class="fa fa-user form-control-feedback right"
												aria-hidden="true"></span>
										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Date
											of Birth<span>*</span>
										</label>
										<div class="col-md-6 col-sm-9 col-xs-12">
											<input type="text" class="form-control"
												data-inputmask="'mask': '99/99/9999'" name="dateOfBirth"
												required="required"> <span
												class="glyphicon glyphicon-calendar form-control-feedback right"
												aria-hidden="true"></span>

										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Place<span>*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input id="place" type="text" name="place"
												class="optional form-control col-md-7 col-xs-12"> <span
												class="fa fa-user form-control-feedback right"
												aria-hidden="true"></span>
										</div>
									</div>

									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Years
											of Experience <span>*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input type="number" id="yearsOfExperience"
												name="yearsOfExperience"
												class="form-control col-md-7 col-xs-12" required="required">
										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Specialization
											<span>*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input type="text" id="specialisation" name="specialisation"
												class="form-control col-md-7 col-xs-12">
										</div>
									</div>


									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Educational
											Qualification <span>*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input type="text" id="educationalQualification"
												name="educationalQualification"
												class="form-control col-md-7 col-xs-12"> <span
												class="glyphicon glyphicon-education form-control-feedback right"
												aria-hidden="true"></span>

										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Contact
											Number<span>*</span>
										</label>
										<div class="col-md-6 col-sm-9 col-xs-12">
											<input type="text" class="form-control"
												data-inputmask="'mask' : '(999) 999-9999'"
												name="contactNumber" required="required"> <span
												class="glyphicon glyphicon-phone form-control-feedback right"
												aria-hidden="true"></span>

										</div>
									</div>
									<div class="item form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Permanent
											Address <span>*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<textarea id="address" name="address"
												class="form-control col-md-7 col-xs-12"></textarea>
										</div>
									</div>

									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-6 col-md-offset-3">

											<button type="submit" class="btn btn-success" id="btn">Submit</button>
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>
							</div>
						</div>
					</div>
				</div>


				<!-- footer content -->
				<footer>
					<div class="">
						<p class="pull-right">
							<span class="lead"> <i class="fa fa-paw"></i> Student
								Management System
							</span>
						</p>
					</div>
					<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->
			</div>
			<!-- /page content -->

		</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

<!-- 	<script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script> -->



<!-- 	<script src="<c:url value="/resources/admin/js/nicescroll/jquery.nicescroll.min.js"/>"></script> -->



<!-- 	<script src="<c:url value="/resources/admin/js/custom.js"/>"></script> -->

	<!-- icheck -->
<!-- 	<script src="<c:url value="/resources/admin/js/icheck/icheck.min.js"/>"></script> -->

	<!-- form validation -->
<!-- 	<script type="text/javascript" src="<c:url value="/resources/admin/js/parsley/parsley.min.js"/>"></script> -->




	<!-- input mask -->
<!-- 	<script src="<c:url value="/resources/admin/js/input_mask/jquery.inputmask.js"/>"></script> -->

	<!-- input_mask -->
<!-- 	<script> 
	$(document).ready(function() {
			$(":input").inputmask();
	});
	</script> -->
	<!-- /input mask -->
	
	<!-- /footer content -->





</body>

</html>
