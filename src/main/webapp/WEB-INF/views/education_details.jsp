

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Education Details</title>
<link href="../static/css/navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body
	style="background-image: url('../static/images/form.jpg'); background-clip: context-box;">
	
		<%@ include file="navbar.jsp" %>
	<div class="shadow p-3 mb-5 bg-white rounded">
		<div class="container"
			style="border-width: 5px; border-style: outset; margin-top: 40px; margin-bottom: 40px; box-shadow: 1px 10px 11px 10px #888888;">
			<h1 class="text-center " style="text-shadow: 5px 7px 20px black;">
				<b>Qualification Details</b>
			</h1>
			<hr>
			
			<form:form action="saveEducation" method="post" modelAttribute="details">
			
				<h4 style="text-shadow: 1px 2px 60px black;">
				<b>Add Education</b>
			</h4>
			<hr>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label>Qualification</label><select class="form-control"
						name="education">
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
					
					<div class="col-md-3">
						<div class="form-group">
						<label>Others (if qualification not matched)</label> <input type="text" name="other"
								class="form-control" >
					</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label>Specialization</label> <input type="text" name="specialization"
								class="form-control" >
						</div>
					</div>
					
					
					
					
					<div class="col-md-3">
						<div class="form-group">
							<label>Board</label> <input type="text" name="board"
								class="form-control" >
						</div>
					</div>
					</div>
					<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label>School Name</label> <input type="text" name="schoolname"
								class="form-control" >
						</div>
					</div>
					
					
					<div class="col-md-3">
						<div class="form-group">
							<label>Percentage</label> <input type="number" name="percentage"
								class="form-control" >
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="form-group">
							<label>Passing Year</label> <input type="date" name="passingyear"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label>Upload Document</label> <input type="file" name="eduFilePath"
								class="form-control" >
						</div>
					</div>
				
				</div>	
					
					
				<!-- 	<div class="col-md-6">
						<div class="form-group">
							 <label>Marks</label> 
							 <input type="tel" name="percentage" class="form-control">	
							 <div>
							  <label class="radio-inline">
						      	<input type="radio" name="optradio" checked>
						      	<input  type="tel" name="percentage" placeholder="Percentage" disabled="disabled"
								class="form-control" >
						    </label>
						    <label class="radio-inline">
						      	<input type="radio" name="optradio">
						      	<input  type="tel" name="grade" placeholder="Grade" disabled="disabled"
								class="form-control" >
								</label>
								</div>
						</div>
					</div>
					
					
					<hr>
					<h4 style="text-shadow: 1px 2px 60px black;">
				<b>Intermediate</b>
			</h4>
				<hr>	
					
					
				 <div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Specialization</label> <input type="text" name="specialization"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>School Name</label> <input type="text" name="collegeName"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Board</label> <input type="text" name="board"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Passing Year</label> <input type="month" name="passingYear"
								class="form-control" >
						</div>
					</div>
						<div class="col-md-6">
						<label>Marks</label>
						<input type="tel" name="percentage" class="form-control">						
						</div>
						
						<div class="col-md-6">
						<div class="form-group">
							<label>Upload Document</label> <input type="file" name="eduFilePath"
								class="form-control" >
						</div>
					</div>
				</div>
					
					<hr>
					<h4 style="text-shadow: 1px 2px 60px black;">
				<b>Qualification</b>
			</h4>
				<hr>	
				<div id="container">
					<input type="hidden" name="count" id="count"  value="1">
				<div class="form-group">
					<label>Qualification</label> <select class="form-control"
						name="education">
						<option value="" selected>Select Your Qualification</option>
						<option value="diploma">Diploma</option>
						<option value="graduation">Graduation</option>
						<option value="postGraduation">Post Graduation</option>
						<option value="phd">PhD</option>
					</select>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Degree</label> <input type="text" name="degree"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Specialization</label> <input type="text" name="specialization"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>College Name</label> <input type="text" name="collegeName"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>University</label> <input type="text" name="board"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Joining Year</label> <input type="month" name="joiningYear"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Passing Year</label> <input type="month" name="passingYear"
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							 <label>Marks</label> 
							 <input type="text" name="percentage" 
								class="form-control" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Upload Document</label> <input type="file" name="eduFilePath"
								class="form-control" >
						</div>
					</div>
					</div>
	</div>
	
	 -->
	<!--  <div class="cointainer" style="text-align: right;">
	 <input type="button" value="Add Education" class="add_form"
					style="background-color: #6ba5b5; color: white; border: hidden; width: 100px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px;">
</div> -->
 <hr>
	
	
	
	
			<input type="submit" name="action" id="action" value="Save" 
					style="background-color: #6ba5b5; color: white; border: hidden; width: 100px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px;">
				<button type="reset"
					style="background-color: #6ba5b5; color: white; border: hidden; width: 100px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px;">Reset</button>
				<!-- <input type="submit" name="action" id="action" value="Save&Continue"
					style="float: right; background-color: #6ba5b5; color: white; border: hidden; width: 150px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px;"> -->
				<br>
				<br>
					
			</form:form>
		</div>
	</div>
<script>
$(document).ready(function() {
    var counter = 1;
   
    $(".add_form").click(function() {
    	 var html = '';
            counter++;

            html += '<div id="container" >';
            html += '<input type="hidden" name="count" id="count"  value="1'+counter+'">';
            html += '<hr>';
            html += '<div class="form-group">';
            html += '<label>Qualification</label>';
            html += '<select class="form-control" name="education">';
            html += '<option value="" selected>Select Your Qualification</option>';
            html += '<option value="diploma">Diploma</option>';
            html += '<option value="graduation">Graduation</option>';
            html += '<option value="postGraduation">Post Graduation</option>';
            html += '<option value="phd">PhD</option>';
            html += '</select>';
            html += '</div >';
            html += '<div class="row">';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Degree</label>';
            html += '<input type="text" name="rollNo" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Specialization</label>';
            html += '<input type="text" name="specialization" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>College Name</label>';
            html += '<input type="text" name="collegeName" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Board</label>';
            html += '<input type="text" name="board" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Joining Year</label>';
            html += '<input type="month" name="joiningYear" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Passing Year</label>';
            html += '<input type="month" name="passingYear" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Marks</label>';
            html += '<input type="text" name="percentage" class="form-control">';
            html += '</div >';
            html += '</div >';
            html += '<div class="col-md-6">';
            html += '<div class="form-group">';
            html += '<label>Upload Document</label>';
            html += '<input type="file" name="eduFilePath" class="form-control" >';
            html += '</div >';
            html += '</div >';
            html += '</div >';
            html += '<button id="remove" type="button" style="background-color: #6ba5b5; color: white; border: hidden; width: 100px; height: 35px; box-shadow: 8px 8px 8px 3px grey; border-radius: 9px;">Remove</button>';
            html += '<br >';
            html += '<br >';
            html += '</div >';
            $("#container").append(html); //add input box
           /* 	$('#count').val(counter); */
    });
    $(document).on('click', '#remove', function () {
        $(this).closest('#container').remove();
        counter--;
    });
   });

</script>	
<script type="text/javascript">
/* $(document).ready(function(){
	$('.radio-inline').click(function(){
		if('optradio'==clicked)
		document.getElementById("percentage").disabled = false; 
	}
	
	
} */

/* $(document).ready(function(){
	var rowId=1;
	$('.add_form').click(function(){
		$('#container').change(function(){
			rowId++;
			$('#count'.val(rowId));
		}); 		count++; 
	});
}); */


</script>
</body>
</html>

