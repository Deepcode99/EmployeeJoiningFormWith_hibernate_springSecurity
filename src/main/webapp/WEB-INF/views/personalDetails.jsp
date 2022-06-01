
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Details</title>
<link href="../static/css/navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('../static/images/form.jpg');  background-clip: context-box;">
	<%@ include file="navbar.jsp" %>	
	<%-- ?${_csrf.parameterName}=${_csrf.token} --%>
		<div class="shadow p-3 mb-5 bg-white rounded">
	<div class="container"style="border-width: 5px; border-style: outset; margin-top: 40px; margin-bottom: 20px;box-shadow: 1px 10px 11px 10px #888888;">
		<h1 class="text-center " style="text-shadow: 5px 7px 20px black;"><b>Personal Details</b></h1>
		<hr>
		<form:form action="${pageContext.request.contextPath}/user/save?${_csrf.parameterName}=${_csrf.token}" method="post" modelAttribute="details" model="personalData" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Date Of Joining</label> <input type="date"
							name="joiningDate" class="form-control" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>EmployeeCode</label>
						
						 <input name="employee.employeeCode"
							class="form-control" value="${personalInfo.getEmployeeCode()}" readonly>
							
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Full Name</label> <input name="employeeName" 
							class="form-control" value="${personalInfo.getName()}" readonly>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Father's Name</label> <input  name="fatherName" 
						class="form-control" value="${personalInfo.getFatherName()}" readonly/>
						<form:errors path="fatherName"/>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group" >
						<label>Email</label > <input  name="email" value="${personalInfo.getEmailId()}"
							class="form-control" readonly>
							 
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Date of Birth</label> <input name="dateBirth" value="${personalInfo.getDateOfBirth()}"
							class="form-control" readonly>
					</div>
				</div>
				<div class="col-md-6">
					
					<div class="form-group">
						<label>contact No</label> <input  name="number" value="${personalInfo.getPhoneNumber()}"
							class="form-control" placeholder="12345-45678"
							pattern="[0-9]{10}" readonly > 
							
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Blood Group</label> <input name="bloodGroup" value="${personalInfo.getBloodGroup()}"
							class="form-control" readonly>
					</div>
				</div>
				
				
				<div class="col-md-6" >
					<div class="form-group" >
						<label >Designation</label> <input class="form-control form-control-lg" name="designation" id="form3Example1m" value="${personalInfo.getDesignation()}" readonly> 
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Department</label> <input name="department" value="${personalInfo.getDepartment()}"
							class="form-control" readonly>
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="form-group">
						<label>Gender</label><input class="form-control form-control-lg"  id="form3Example1m" name="gender" value="${personalInfo.getGender()}" readonly> 			
					</div>
					
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Mother's Name</label> <input type="text" name="motherName"
							class="form-control" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Marital Status</label> <select class="form-control"
							name="maritalStatus" required >
							<option value="" selected>select your marital status</option>
							<option value="married">Married</option>
							<option value="single">Single</option>
							<option value="widowed">Widowed</option>
							<option value="divorced">Divorced</option>
						</select>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
						<label>Country</label> <input type="text" name="country"
							class="form-control" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Religion</label> <input type="text" name="religion"
							class="form-control" required>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
						<label>Emergency Contact No</label> <input type="tel"
							name="emgNumber" class="form-control" placeholder="12345-45678"
							pattern="[0-9]{10}" required >
					</div>
				</div>
				<div class="col-md-6">
						<div class="form-group">
							<label>Aadhaar Card Number</label> <input type="tel"
								name="aadhaarNo" class="form-control"
								placeholder="1234-3456-5678" pattern="[0-9]{4}[0-9]{4}[0-9]{4}"
							required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="col-md-4 " for="aadharFile">Upload AadharCard</label> <input type="file" name="aadharFile"
								id="aadharFile"  class="form-control" required> 
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>PAN Card Number</label> <input type="tel" name="panNo"
								class="form-control" placeholder="ABC-TY-1234-D"
								pattern="[A-Z]{3}[A-Z]{2}[0-9]{4}[A-Z]{1}" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="col-md-4" for="panFile">Upload PanCard</label> <input type="file"
								id="panFile" name="panFile" class="form-control" required >
						</div>
					</div>
					<div class="col-md-6">
					<div class="form-group">
						<label>Disability (Details if yes)</label>
						<textarea class="form-control" rows="2" name="disability"></textarea>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Hobbies</label>
						<textarea class="form-control" rows="2" name="hobbies"></textarea>
					</div>
				</div>
					</div>
			<input type="submit"  name="action" id="action" style="background-color:#6ba5b5; color:white; border:hidden;width: 100px;height: 35px;box-shadow: 8px 8px 8px 3px grey;border-radius: 9px;">
			<button type="reset" style="background-color:#6ba5b5; color:white; border:hidden;width: 100px;height: 35px;box-shadow: 8px 8px 8px 3px grey;border-radius: 9px;">Reset</button>
 			<input type="submit" name="action" id="action" value="Save&Continue" style="float: right;background-color:#6ba5b5; color:white; border:hidden;width: 150px;height: 35px;box-shadow: 8px 8px 8px 3px grey;border-radius: 9px;"> 
			<br> <br>
			</form:form>
		</div>
			</div>
</body>
</html>
