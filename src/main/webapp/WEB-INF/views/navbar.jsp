<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<title>nav_bar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="static/css/navbar.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container-fulid-center">
		<nav>
			<!-- <input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label> <label class="logox">Adjecti Solution</label>
			 -->
			 <ul  class="nav navbar-nav" style="padding: 20px; ">
				<li class="nav-item"><a class="nav-link" id="home" href="${pageContext.request.contextPath}/user/home">Home</a></li>
				<li class="nav-item"><a class="nav-link" id="personal" href="${pageContext.request.contextPath}/user/personal_navbar">Personal
						Details</a></li>
				<li class="nav-item"><a class="nav-link" id="address" href="address_navbar">Address
						Details</a></li>
				<li class="nav-item"><a class="nav-link" id="education" href="${pageContext.request.contextPath}/user/show_education_details">Education
						Details</a></li>
				<li class="nav-item"><a class="nav-link" id="experience" href="experience_navbar">Prior Experience</a></li>
				<li class="nav-item"><a class="nav-link" id="family" href="family_navbar">Family Details</a></li>		
      </ul>			
		<ul class="nav navbar-nav navbar-right " style="margin:18px;">
        <li><a href="${pageContext.request.contextPath}/user/logout"><span class="glyphicon glyphicon-log-out"></span><b>  Logout  </b></a></li> 
      </ul>
			
		</nav>
	</div>
</body>
</html>