
 <!DOCTYPE html>
<html lang="en">
<head>
  <title>header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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

 
  <style> 

 .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   height:8%;
   background-color:#0557fc;
   color: white;
   text-align: center;
   
}
 .text{
 font-size: 25px;}
 
  .navbar-nav > .active > a{
                color: red;
                
            }
     
     .navbar-nav a {
     
     color:white;
     
     }       
  .navbar-brand
    {
      width: 50%;
      height: 10px;
      font-size: x-large;
      padding: 0.09rem;
      
    } 
   </style>
 
 </head>
<body> 
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary fs-5" style="background-color: aqua;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01" >
      <a class="navbar-brand" href="#">Adjecti Solution</a>
   <div class="collapse navbar-collapse" id="myNavbar">
      
      <ul  class="nav navbar-nav">
       <li ><a href="${pageContext.request.contextPath}/admin/home"><b>Home</b></a></li>
       <li ><a href="${pageContext.request.contextPath}/admin/employeeRegistration"><b>EmployeeRegistration</b></a></li>
        <li><a href="${pageContext.request.contextPath}/admin/viewemp"><b>ShowEmployeeList</b></a></li>
         <li><a href="${pageContext.request.contextPath}/admin/viewempPage"><b>SearchByCode</b></a></li>
         
         
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/admin/logout"><span class="glyphicon glyphicon-log-out"></span><b>  Logout  </b></a></li> 
      </ul>
     </div>
    </div>

    
  </div>
  
</nav>
</body>
</html>
