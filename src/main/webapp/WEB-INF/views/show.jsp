<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
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
</style>
<body><!-- table table-bordered table-striped -->

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
			  <h4 style="text-align: center" >Search Employee</h4>
			
  <input class="form-control" id="myInput" type="text" placeholder="Search..">

				<h3 class="text-center mb-3" style="color: red;">EmployeeList</h3>
				<table class="styled-table" border="3" 
					align="center" width="100%">
					<thead ><!-- class="thead-dark" -->
						<tr>
							<th>Name</th>
							<th>EmployeeCode</th>
							<th>Father's Name</th>
							<th>EmailId</th>
							<th>PhoneNumber</th>
							<th>Edit</th>
							<th>ViewDetails</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody id="myTable">


						<c:if test="${list!= null }"></c:if>
						<c:forEach items="${list}" var="empDetails">
							<tr>
								<td><b><c:out value="${empDetails.name}"></c:out></b></td>
								<td><b><c:out value="${empDetails.employeeCode}"></c:out></b></td>
								<td><b><c:out value="${empDetails.fatherName}"></c:out></b></td>
								<td><b><c:out value="${empDetails.emailId}"></c:out></b></td>
								<td><b><c:out value="${empDetails.phoneNumber}"></c:out></b></td>

								<td><a href="update?empCode=${empDetails.employeeCode}"><i
										class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
								</td>
								<td><a href="viewalldetails/${empDetails.employeeCode}"><span style='font-size: 20px;'>&#129488;</span></a></td>

								<!-- Button trigger modal -->

								<td><a href="${pageContext.request.contextPath}/admin/delete_employee/${empDetails.employeeCode}"><i class="fas fa-trash text-danger" style="font-size:20px;"></i></a></td>
							</tr>

						</c:forEach>

					</tbody>

				</table>

				<%-- <!-- Modal -->
				<div class="modal fade" id="data">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Delete
									Employee</h5>

								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>


							<div class="modal-body">Are you sure to delete</div>
							<form
								action="${pageContext.request.contextPath}/admin/delete_employee"
								method="post" id="delete-data">
								<input name="id" value="${empDetails.employeeCode}">


								<div class="modal-footer">

									<button type="submit" class="btn btn-primary">Yes</button>
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">No</button>
								</div>
							</form>
						</div>
					</div>
				</div> --%>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

 	<script>	
 	$(document).ready(function(){
 		  $("#myInput").on("keyup", function() {
 		    var value = $(this).val().toLowerCase();
 		    $("#myTable tr").filter(function() {
 		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 		    });
 		  });
 		});
	
	</script> 
</body>
</html>







