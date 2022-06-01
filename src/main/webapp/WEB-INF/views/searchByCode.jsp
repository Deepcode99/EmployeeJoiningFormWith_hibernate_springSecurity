 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ include file ="header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<title>SearchEmployee</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>

</head>
 <body>
	<div class="container" >
		<h4>Enter Employee Code</h4>
		<form:form action="${pageContext.request.contextPath}/admin/view_employee" method="post">
			<div class="form-group">
				<label for="id">Enter EmployeeCode:</label> <input type="text"
					class="form-control" id="id" placeholder="Enter ExamCode" name="empcode">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" value="checked"
					name="remember"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Search
				Employee</button>

		</form:form>
	</div>
</body>
<body>
    	  
		<table border="1" cellspacing="0" align="center" width="90%" style="margin-top:30px">
			<thead>
				<tr>
			    <th>Name</th>
				<th>EmployeeCode</th>
				<th>Father's Name</th>
				<th>EmailId</th>
				<th>PhoneNumber</th>
				<th>ViewAllDetails</th>
				</tr>
			</thead>
               <c:if test="${empinfo!= null }"></c:if>
			
			<tr>
				<td><c:out value="${empinfo.name}"></c:out></td>
				<td><c:out value="${empinfo.employeeCode}"></c:out></a></td>
				<td><c:out value="${empinfo.fatherName}"></c:out></td>
				<td><c:out value="${empinfo.emailId}"></c:out></td>
				<td><c:out value="${empinfo.phoneNumber}"></c:out></td>
				<td><a href="viewalldetails/${empinfo.employeeCode}"><span style='font-size:30px;'>&#129488;</span></a>	
						
						</td>	
				
			</tr>
			</tbody>
			
			
	</table>
	
</body> 






