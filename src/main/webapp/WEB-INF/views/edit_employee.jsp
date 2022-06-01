<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 

</head>
<body>
<%@ include file="header.jsp" %>
<form class="container" action="employee_form" method="post">
	<section class="h-60 bg-dark">
		<div class="container py-5 h-60">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card card-registration my-4">
						<div class="row g-0">
							<div class="col-xl-5 d-none d-lg-block">
								<img
									src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
									alt="Sample photo" class="img-fluid"
									style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
							</div>
							<div class="col-xl-6">
								<div class="card-body p-md-5 text-black ">
									<h3 class="mb-5 text-uppercase">Employee Registration form</h3>

									<div class="row">
										<div class="col-md-6 mb-4">
											<div class="form-outline">
												<label class="form-label" for="form3Example1m">Full
													name</label> <input type="text" id="form3Example1m"
													class="form-control form-control-lg" name="name"/>
											</div>
										</div>



										<div class="col-md-6 mb-4">
											<div class="form-outline">
												<label class="form-label" for="form3Example1m">Employee
													Code</label> <input type="text" id="form3Example1m"
													class="form-control form-control-lg" name="employeeCode" />

											</div>
										</div>
					
									</div>

									<div class="row">

										<div class="col-md-6 mb-4">
											<div class="form-outline">
												<label class="form-label" for="form3Example1n1">Father's
													name</label> <input type="text" id="form3Example1n1"
													class="form-control form-control-lg" name="fatherName" />

											</div>
										</div>

										<div class="col-md-6 mb-4">
											<div class="form-outline">
												<label class="form-label" for="form3Example1m">Blood
													Group:</label> <select class="form-control form-control-lg"
													id="form3Example1m" name="bloodGroup">
													<optgroup label="Select one">
														<option value="A+">A+</option>
														<option value="A-">A-</option>
														<option value="B+">B+</option>
														<option value="B-">B-</option>
														<option value="AB+">AB+</option>
														<option value="O-">O-</option>
														<option value="O+">O+</option>
													</optgroup>
												</select>


											</div>
										</div>
										<!-- phone number -->
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<label for="phone">Phone number:</label> <input type="tel"
														placeholder="+91 0000-0000-00" name="phoneNumber"
														 id="form3Example1m"
														class="form-control form-control-lg ">
												</div>
											</div>

											<!-- Email id -->
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<label for="email">Email Id:</label> <input type="email" name="emailId"
														id="form3Example1m" class="form-control form-control-lg"
														placeholder="a@gmail.com">
												</div>
											</div>
										</div>
										<!-- end phone number -->

										<!-- country -->
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<label class="form-label" for="form3Example1m">Country:</label>
													<select class="form-control form-control-lg" name="country"
														id="form3Example1m">
														<option>Select a country</option>
														<option>India</option>
														<option>USA</option>
														<option>UK</option>
														<option>China</option>
														<option>Ukrain</option>
														<option>Japan</option>
													</select>
												</div>
											</div>

											<div class="col-md-6 mb-4">
													<div class="form-outline">
														<label class="form-label" for="form3Example8">Address:</label>
														<input type="text" id="form3Example8" name="address"
															class="form-control form-control-lg" />

													</div>
												</div>
											</div>
											<!-- end point with state -->

										
											<!--  Designation  -->
											<div class="row">
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<label class="form-label" for="form3Example1m">Designation:</label>
														<select class="form-control form-control-lg" name="designation"
															id="form3Example1m">
															<option>Select One</option>
															<option>Java Trannie</option>
															<option>Associate Software Engineer</option>
															<option>FullStack developer</option>
															<option>Frountend developer</option>
															<option>Backend developer</option>
														</select>
													</div>
												</div>
												<div class="col-md-6 mb-4">
													<div class="form-outline">
														<label class="form-label" for="form3Example1m">Department:</label>
														<select class="form-control form-control-lg" name="department"
															id="form3Example1m">
															<option>Select One</option>
															<option>IT</option>
															<option>Manufacturing</option>
															<option>Inventory Control</option>
															<option>HR Department</option>
														</select>
													</div>
												</div>
											</div>
											<!--  end point with Department  -->



											<!--  Gender  -->
											<div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

												<h6 class="mb-0 me-4">Gender:</h6>

												<div class="form-check form-check-inline mb-0 me-4">
													<input class="form-check-input" type="radio"
														name="gender" id="femaleGender"
														value="option1" /> <label class="form-check-label"
														for="femaleGender">Female</label>
												</div>

												<div class="form-check form-check-inline mb-0 me-4">
													<input class="form-check-input" type="radio"
														name="gender" id="maleGender" value="option2" />
													<label class="form-check-label" for="maleGender">Male</label>
												</div>

												<div class="form-check form-check-inline mb-0">
													<input class="form-check-input" type="radio"
														name="gender" id="otherGender" value="option3" />
													<label class="form-check-label" for="otherGender">Other</label>
												</div>

											</div>




											<div class="form-outline mb-4">
												<input type="text" id="form3Example9" name="dateOfBirth"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form3Example9">DOB</label>
											</div>

											<div class="d-flex justify-content-end pt-3">
												<button type="reset" class="btn btn-light btn-lg">Reset all</button>
												<button type="submit" class="btn btn-warning btn-lg ms-2">Submit
													form</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	</form>
</body>
</html>