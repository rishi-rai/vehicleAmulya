<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Update Vehicle Here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.14.1/moment.min.js"></script>
<style >

  h4 {
  text-align: center;
  font-family: sans-serif;
}
      * {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  background-image: url(https://images.pexels.com/photos/1037995/pexels-photo-1037995.jpeg?cs=srgb&dl=art-background-blank-1037995.jpg&fm=jpg?dl&fit=crop&crop=entropy&w=1366&h=768);
  font-family: Montserrat, sans-serif;
}


div.container {
  text-align: center;
  margin: 100px auto 0;
}

#button1 {
  display: inline-block;
  background-color: #1984c3;
  color: #fff;
  font-size: .7em;
  font-family:  sans-serif;
  padding: 1em 5em;
  text-decoration: none;
  text-transform: uppercase;
  border-radius: 0.2em;
  border-bottom: 0.25em solid #0f5177;
  -moz-transition: 0.1s;
  -webkit-transition: 0.1s;
  transition: 0.1s;
  box-shadow: 0 2px 3px #ccc;
  position: relative;
}

a:hover {
  background-color: #1e9feb;
  border-bottom-width: 0;
  margin-top: 0.2em;

}
.flex-navbar > ul.items li.item a {
  text-decoration: none;
  color: #140700;
}

.flex-navbar > ul.items li.item a:hover {
  color: red;
}
table {
  max-width: 960px;
  margin: 10px auto;
}

caption {
  font-size: 1.6em;
  font-weight: 400;
  padding: 10px 0;
}

thead th {
  font-weight: 400;
  background: #8a97a0;
  color: #FFF;
}

tr {
  background: #f4f7f8;
  border-bottom: 1px solid #FFF;
  margin-bottom: 5px;
}

tr:nth-child(even) {
  background: #e8eeef;
}

th, td {
  text-align: left;
  padding: 20px;
  font-weight: 300;
}

tfoot tr {
  background: none;
}

tfoot td {
  padding: 10px 2px;
  font-size: 0.8em;
  font-style: italic;
  color: #8a97a0;
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid" >
    <div class="navbar-header">
      <a class="navbar-brand" href="home99.html">Vehicle Reservation System</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="logout.html"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<p>Today's Date</p>
<script>var m = moment().format("DD/MM/YYYY");
document.write(m);
/* var t = document.getElementById('superman').value; */
document.write(t);</script>

<div class="container">
<a href="addVehicles.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Add Vehicle</a>
</div>
<br>
<table class="table table-sm" border="1" >
<thead>
<tr>
<td> <center> <span style="color:gray">Vehicle Number</span>
</td>
<td> <center> <span style="color:gray">Branch</span>
</td>
<td> <center> <span style="color:gray">Insurance Expiry</span>
</td>
<td> <center> <span style="color:gray">Last Service</span>
</td>
<td> <center> <span style="color:gray">Service Due</span>
</td>
<td> <center> <span style="color:gray">Vehicle Type</span>
</td>
<td> <center> <span style="color:gray">Update Here</span>
</td>
</tr>
</thead>
  <tbody>
<c:forEach var="vehicle"  items="${vehicle}">
<tr>
<td> <center> <span style="color:gray">${vehicle.vehicleNumber}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.branch}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.insuranceExpiry}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.lastService}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.serviceDue}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.vehicleType}</span>
</td>
</td>
<%-- <c:set property="${vehicle.vehicleNumber}" var="vehNumber" ></c:set> --%>
<%-- <fmt:parseNumber var="vehNumber" value="${vehicle.vehicleNumber}" integerOnly="true"/>
<fmt:parseNumber var="vehNumber" integerOnly="true" type="number" value="${vehicle.vehicleNumber}" /> --%> 
<td> <center> <span style="color:gray"><a id="button1" href="updateVehicle.html?id=${vehicle.vehicleNumber}">Update</a></span>
</td>
</tr>
</c:forEach>

</tbody>
</table>
</body>
</html>