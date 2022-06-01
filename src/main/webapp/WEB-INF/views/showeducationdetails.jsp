<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Show Education Details</title>
<link href="../static/css/navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome-ie7.min.css"
	 integrity="sha512-YptFyS56nP/xlZllNMs5uwwP0Hjt6RtggRpSxTpwfS9p8Nv1JfzWwatd/9az1SMCOWVZUqPYUEp1zIT85YqYYw=="
	  crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

</head>
<body style="background-image: url('../static/images/form.jpg');  background-clip: context-box;">
	<%@ include file="navbar.jsp" %>	

<style>
h4{
color:blue;
}
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

.styled-table th,
.styled-table td {
    padding: 12px 15px;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

.form-group {
text-align: left;
}

</style>
<body><!-- table table-bordered table-striped -->

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
			
			<div class="cointainer" style="border-width: 5px; border-style: outset; margin-top: 40px; text-align:left;  margin-bottom: 20px;box-shadow: 1px 10px 11px 10px #888888;">
				<h3 style="color: red; margin-top: 25px;">Education Qualification</h3>
		
				<table class="styled-table" border="1" 
					align="center" width="100%">
					<thead ><!-- class="thead-dark" -->
						<tr>
							<th>S.NO.</th>
							<th>EmployeeCode</th>
							<th>Qualification</th>
							<th>Specialization</th>
							<th>Board</th>
							<th>College Name</th>
							<th>Percentage</th>
							<th>passing Year</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="myTable">


						<c:if test="${list!= null }"></c:if>
						<c:forEach items="${list}" var="empDetails">
							<tr>
								<td><b><c:out value=""></c:out></b></td>
								<td><b><c:out value=""></c:out></b></td>
								<td><b><c:out value=""></c:out></b></td>
								<td><b><c:out value=""></c:out></b></td>
								<td><b><c:out value=""></c:out></b></td>
                                <td><b><c:out value=""></c:out></b></td>
								<td><b><c:out value=""></c:out></b></td>
								<td><a href="update?empCode=${empDetails.employeeCode}"><i
										class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
								</td>

								<!-- Button trigger modal -->

								<td><a href="${pageContext.request.contextPath}/user/delete_education/${empDetails.employeeCode}"><i class="fas fa-trash text-danger" style="font-size:20px;"></i></a></td>
							</tr>

						</c:forEach>

					</tbody>

				</table>
				
				 
	<!--  <button type="button"  class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal"
					style="background-color: #6ba5b5; color: white; border: hidden; width: 100px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px; margin: 20px;">Add Education</button>
			 -->
			<div class="cointainer" style="text-align: right;">
			<button type="button"  style="margin: 20px;" class="btn btn-primary" data-toggle="modal"  data-target="#exampleModal">
 Add Education
</button>		
<!-- Modal -->
<div class="modal fade " id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel" style="text-align: left;">Add Education</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <!-- Form defination  -->
      
       <form:form action="${pageContext.request.contextPath}/user/saveEducation?${_csrf.parameterName}=${_csrf.token}" method="post"  model="educationData" modelAttribute="details" enctype="multipart/form-data">
			
			<hr>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Qualification</label><select class="form-control"
						name="qualification">
						<option value="" selected >Select Qualification </option>
						<option value="HighSchool">High School</option>
						<option value="Intermediate">Intermediate</option>
						<option value="BA">Bachelor of Arts</option>
						<option value="BSC">Bachelor of Science</option>
						<option value="BCA">Bachelor of Computer Application</option>
						<option value="BBA">Bachelor of Business Application</option>
						<option value="B.COM">Bachelor of Arts</option>
						<option value="B.TECH">Bachelor of Technology</option>
						<option value="B.PHARMA">Bachelor of Pharmacy</option>
						<option value="MA">Master of Arts</option>
						<option value="MSC">Master of Science</option>
						<option value="MCA">Master of Computer Applicatin</option>
						<option value="MBA">Master of Bussiness Application</option>
						<option value="M.COM">Master of Commerce</option>
						<option value="M.TECH">Master of Technology</option>
						<option value="M.PHARMA">Master of Pharmacy</option>
						<option value="LLB">LLB</option>
						<option value="LLM">LLM</option>
						</select> 
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="form-group">
						<label>Others (if qualification not matched)</label> <input type="text" name="other"
								class="form-control" >
					</div>
					</div>
					</div>
					<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Specialization</label> <input type="text" name="specialization"
								class="form-control" >
						</div>
					</div>
					
					
					
					
					<div class="col-md-6">
						<div class="form-group">
							<label>Board</label> <input type="text" name="board"
								class="form-control" >
						</div>
					</div>
					</div>
					
					<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>college Name</label> <input type="text" name="collegeName"
								class="form-control" >
						</div>
					</div>
					
					
					<div class="col-md-6">
						<div class="form-group">
							<label>Percentage</label> <input type="text" name="percentage"
								class="form-control" >
						</div>
					</div>
					</div>
					<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Passing Year</label> <input type="month" name="passingyear"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Upload Document</label> <input type="file" name="certificateFile"
								class="form-control" >
						</div>
					</div>
				</div>
				 <div class="modal-footer">
        <button type="reset" class="btn btn-primary">Reset</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Add</button>
    
      </div>
				</form:form>
					
			
					
      </div>
        
     
    </div>
  </div>
</div>
				
</div>
</div>
		</div>
	</div>
</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
		
	
		</body>
</html>
	