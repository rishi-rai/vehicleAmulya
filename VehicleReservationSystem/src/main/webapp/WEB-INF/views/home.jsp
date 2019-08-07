<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Welcome To Homepage</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>var today = new Date(); var cdate;var kdate</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>jQuery(document).ready(function($) {
    $(".clickable-row").dblclick(function() {
        window.location = $(this).data("href");
    });
}); </script>
 
  
  
  
      <style>
      h4 {
  text-align: left;
  font-family:verdana;
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

.navbar-header{
margin-left:0;
}
input[type="text"]
{
    background: transparent;
    border:3px solid #FEC8C6;
    border-radius: 25px;
    
}
input[list]
{
    background: transparent;
    border:3px solid #FEC8C6;
    border-radius: 25px;
    
}
.button1{border-radius: 12px;}
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
.navbar{
border-radius: 0px;
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
      <li><a href="update.html"><span class="glyphicon glyphicon-level-up"></span> Update</a></li>
      <li><a href="logout.html"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  


<h2  style="font-family:verdana;" aling="left" >Welcome To Homepage ${user.firstName}</h2>
<!-- <a href="logout.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Logout</a>
<a href="update.html">Update</a> -->
<br>
<br>
<br>
<p>
<form action="search.html" method="post">
<input list="criteria" name="criteria" placeholder="Search by" >
  <datalist id="criteria">
    <option value="Vehicle Number">Vehicle Number</option>
    <option value="Branch">Branch</option>
    <option value="Insurance Expiry">Insurance Expiry</option>
    <option value="Service Due">Service Due</option>
    <option value="Last Service">Last Service</option>
    <option value="Vehicle Type">Vehicle Type</option>
  </datalist>
  <input type="text" name="Value">
  <button id="button1" class="btn waves-effect waves-light" type="submit">Search</button>
</form>
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
</tr>
</thead>
  <tbody>
<c:forEach var="vehicles" items="${vehicles}"  >
<a href="update.html"><tr class='clickable-row' data-href='update.html'>
<div id="color_change">
<td> <center> <span style="color:gray"><p id="b">${vehicles.vehicleNumber}</span>
</td>
<td> <center> <span style="color:gray"><p id="c">${vehicles.branch}</span>
</td>
<td> <center> <span style="color:gray"><p id="a">${vehicles.insuranceExpiry}<div></span></center>
</td>
<td> <center> <span style="color:gray"><p id="d">${vehicles.lastService}</span>
</td>
<td> <center> <span style="color:gray"><p id="e">${vehicles.serviceDue}</span>
</td>
<td> <center> <span style="color:gray"><p id="f">${vehicles.vehicleType}</span></center>
</div>		
<script>cdate= document.getElementById("a").innerHTML;
/* document.write(cdate); 
 */
 
 
 kdate= cdate.replace(/-/g,"/"); 
 pdate = new Date(kdate);
/* document.write(pdate);*/
 var ddiff= ((today.getTime()-pdate.getTime())/(1000 * 3600 * 24)); 
	if(ddiff>=15)
		{
		document.getElementById("a").style.color = "#ff0000";
		document.getElementById("b").style.color = "#ff0000";
		document.getElementById("c").style.color = "#ff0000";
		document.getElementById("d").style.color = "#ff0000";
		document.getElementById("e").style.color = "#ff0000";
		document.getElementById("f").style.color = "#ff0000";
		}
 
</script>
</td>
</td>
</tr></a>
</c:forEach>


</tbody>
</table>

<script>
/* document.write(today) */;
</script>
</body>
</html>