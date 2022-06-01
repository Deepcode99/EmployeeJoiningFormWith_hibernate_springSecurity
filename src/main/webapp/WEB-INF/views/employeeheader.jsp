<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
<title>EmployeePage</title>

<style>
.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 15px;
  font-size: 20px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 8px 10px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}






.nav{
size: inherit;
}
.btn {
	padding: .55rem 1.5rem .45rem;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Navbar brand -->
			<a class="navbar-brand" href="${pageContext.request.contextPath}/user/home">EmployeeDashboard</a>

			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars text-light"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Left links -->
				<ul class="navbar-nav me-auto d-flex flex-row mt-3 mt-lg-0">
					<li class="nav-item text-center mx-2 mx-lg-1"><a
						class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/user/home">
							<div>
								<i class="fas fa-home fa-lg mb-1"></i>
							</div> Home
					</a></li>
					<li class="nav-item text-center mx-2 mx-lg-1"><a
						class="nav-link text-white" href="${pageContext.request.contextPath}/user/about">
							<div>
								<i class="far fa-envelope fa-lg mb-1 text-white"></i> 
							</div> About
					</a></li>
					<li class="nav-item text-center mx-2 mx-lg-1"><a
						class="nav-link text-white"  href="${pageContext.request.contextPath}/user/help">
							<div>
								<i class="fa fa-thumbs-up fa-lg mb-1 text-white"></i> 
							</div>Help
					</a></li>
					<li class="nav-item dropdown text-center mx-2 mx-lg-1"><a
						class="nav-link dropdown-toggle text-white" href="${pageContext.request.contextPath}/user/fillyourdetails" id="navbarDropdown"
						role="button" data-mdb-toggle="dropdown" aria-expanded="false">
							<div class="dropdown">
								<i class="far fa-envelope fa-lg mb-1 text-white"></i> 
						</div>Fill Your Details</a> 
							<!-- Dropdown menu -->
							<div class="dropdown">
						<ul class="dropdown-menu dropdown-menu-dark"
							aria-labelledby="navbarDropdown">
							 <div class="dropdown-content">
							<li><a class="dropdown-item text-white" href="personal_details">Personal Details</a></li>
							<li><a class="dropdown-item text-white" href="address_details">Address Details</a></li>
							<li><a class="dropdown-item text-white" href="education_details">Education Details</a></li>
							<li><a class="dropdown-item text-white" href="prior_details">Prior Details</a></li>
							<li><a class="dropdown-item text-white" href="family_details">Family Details</a></li>
                            </div>
						</ul>
						</div>
						</li>
						<div class="dropdown">
  <button class="dropbtn">FillDetails</button>
  <div class="dropdown-content">
    <a href="#">Personal Details</a>
    <a href="#">Address Details</a>
    <a href="#">Education Details</a>
    <a href="#">Prior Details</a>
    <a href="#">Family Details</a>
    
  </div>
</div>
						
						
				</ul>
				<!-- Left links -->

				<!-- Right links -->
				<ul class="navbar-nav ms-auto d-flex flex-row mt-3 mt-lg-0">
					<!-- <li class="nav-item text-center mx-2 mx-lg-1"><a
						class="nav-link" href="#!">
							<div>
								<i class="fas fa-bell fa-lg mb-1 text-white"></i> 
							</div>Messag
					</a></li> -->
					<li class="nav-item text-center mx-2 mx-lg-1"><a
						class="nav-link" href="${pageContext.request.contextPath}/user/logout">
							<div>
								<i class="fas  fa-sign-out fa-lg mb-1 text-white"></i> 
							</div>Logout
					</a></li>
				</ul>
				<!-- Right links -->

				 <!-- Search form -->
				<!--<form class="d-flex input-group w-auto ms-lg-3 my-3 my-lg-0">
					<input type="search" class="form-control" placeholder="Search"
						aria-label="Search" />
					<button class="btn btn-primary" type="button"
						data-mdb-ripple-color="dark">Search</button>
				</form> -->
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	
	
	
	
	
	
	 <img src="../static/images/employeedeshboard1.jpg" style="size: 100%;">
	
	
</body>
</html> --%>