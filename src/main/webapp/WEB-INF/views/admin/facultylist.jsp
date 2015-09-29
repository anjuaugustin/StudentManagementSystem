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

<!-- Custom styling plus plugins -->
<link href="<c:url value="/resources/admin/css/custom.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/admin/js/jquery.min.js"/>"></script>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
</head>


<body class="nav-md">
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

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
						</a> <a href="../login" data-toggle="tooltip" data-placement="top"
							title="Lock"> <span class="glyphicon glyphicon-eye-close"
							aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="javascript:formSubmit()"> <span
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
									<li><a href="javascript:formSubmit()"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
								<h2>Faculty List</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a href="#"><i class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Settings 1</a></li>
											<li><a href="#">Settings 2</a></li>
										</ul></li>
									<li><a href="#"><i class="fa fa-close"></i></a></li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<table id="example"
									class="table table-striped responsive-utilities jambo_table">
									<thead>
										<tr class="headings">
											<th></th>
											<th>Name</th>
											<th>Faculty ID</th>
											<th>DOB</th>
											<th>Place</th>
											<th>Experience</th>
											<th>Specialisation</th>
											<th>Educational Qualification</th>
											<th>Contact</th>
											<th>Address</th>
											<th class=" no-link last"><span class="nobr">Action</span>
											</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="person" items="${persons}">
											<tr class="even pointer">
												<td class="a-center "></td>
												<td class=" ">${person.facultyName}</td>
												<td class=" ">${person.facultyID}</td>
												<td class=" ">${person.dateOfBirth}</td>
												<td class=" ">${person.place}</td>
												<td class=" ">${person.yearsOfExperience}</td>
												<td class=" ">${person.specialisation}</td>
												<td class=" ">${person.educationalQualification}</td>
												<td class=" ">${person.contactNumber}</td>
												<td class=" ">${person.address}</td>
												<td><a href="deleteFaculty?id=${person.id}">Remove</a>
													<a href="updateFaculty?id=${person.id}">Update</a>
												</td>
											</tr>

										</c:forEach>
									</tbody>

								</table>
							</div>
						</div>
					</div>

					<br /> <br /> <br />

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

	<script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script>



	<script
		src="<c:url value="/resources/admin/js/nicescroll/jquery.nicescroll.min.js"/>"></script>



	<script src="<c:url value="/resources/admin/js/custom.js"/>"></script>
	<!-- Datatables -->
	<script
		src="<c:url value="/resources/admin/js/datatables/js/jquery.dataTables.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/datatables/tools/js/dataTables.tableTools.js"/>"></script>
	<script>
		var asInitVals = new Array();
		$(document).ready(
				function() {
					var oTable = $('#example').dataTable({
						"oLanguage" : {
							"sSearch" : "Search all columns:"
						},
						"aoColumnDefs" : [ {
							'bSortable' : false,
							'aTargets' : [ 0 ]
						} //disables sorting for column one
						],
						'iDisplayLength' : 12,
						"sPaginationType" : "full_numbers",
						"dom" : 'T<"clear">lfrtip',
						"tableTools" : {
							"sSwfPath" : ""
						}
					});
					$("tfoot input").keyup(
							function() {
								/* Filter on the column based on the index of this element's parent <th> */
								oTable.fnFilter(this.value, $("tfoot th")
										.index($(this).parent()));
							});
					$("tfoot input").each(function(i) {
						asInitVals[i] = this.value;
					});
					$("tfoot input").focus(function() {
						if (this.className == "search_init") {
							this.className = "";
							this.value = "";
						}
					});
					$("tfoot input").blur(
							function(i) {
								if (this.value == "") {
									this.className = "search_init";
									this.value = asInitVals[$("tfoot input")
											.index(this)];
								}
							});
				});
	</script>




	<!-- /footer content -->
</body>

</html>
