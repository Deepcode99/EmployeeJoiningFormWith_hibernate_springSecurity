<!DOCTYPE html>
<html>
<style>
table, th, td {
  border:1px solid black;
  border-collapse: collapse;
  
}

tr {
color:blue;

}
th{
padding:0.5rem;
}
</style>


<body>

<h3  style="color:red; text-align:center; justify-content: center;">EmployeeFullDetails</h3>

<table style="width:90%; margin: 1%;" >
  <tr>
    <th>EmployeeCode</th>
    <th>${employeeFullDetails.employeeCode}</th> 

  </tr>
  <tr>
    <td>Name</td>
    <td>${employeeFullDetails.name }</td>
  </tr>
   <tr>
    <td>FatherName</td>
    <td>${employeeFullDetails.fatherName}</td>
  </tr>
   <tr>
    <td>BloodGroup</td>
    <td>${employeeFullDetails.bloodGroup}</td>
  </tr>
   <tr>
    <td>PhoneNumber</td>
    <td>${employeeFullDetails.phoneNumber}</td>
  </tr>
   <tr>
    <td>EmailId</td>
    <td>${employeeFullDetails.emailId}</td>
  </tr>
   <tr>
    <td>Country</td>
    <td>${employeeFullDetails.country}</td>
  </tr>
   <tr>
    <td>Designation</td>
    <td>${employeeFullDetails.designation}</td>
  </tr>
  
   <tr>
    <td>Gender</td>
    <td>${employeeFullDetails.gender}</td>
  </tr>
   <tr>
    <td>DateOfBirth</td>
    <td>${employeeFullDetails.dateOfBirth}</td>
  </tr>
</table>

</body>
</html>
