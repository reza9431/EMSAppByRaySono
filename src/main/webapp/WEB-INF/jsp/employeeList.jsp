<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS-RaySono</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 90%;
}

td, th {
  border: 2px solid #dddddd;
  text-align: left;
  padding: 8px;
}
</style>
</head>
<body style="background:royalblue;   border: bisque ;">


<div style="margin-top:50px; margin-left:850px; height:50px; color: gold"><h1>Ray Sono</h1></div>

<div style="margin-top:50px; margin-left:90px; height:50px;"><h2>Employee List</h2></div>

	<table style="margin-top: 0px;margin-left: 90px;  background: deepskyblue  ">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gender</th>
			<th>User Name</th>
			<th>Email Id</th>
			<th>Blood Group</th>
			<th>Age</th>
			<th>Mobile No.</th>
			<th>Emp Id</th>
			<th>Edit Record</th>
			<th>Delete Record</th>
		</tr>




		<c:forEach items="${empList}" var="emp">



			<tr>
				<td>${emp.firstName}</td>
				<td>${emp.lastName}</td>
				<td>${emp.gender}</td>
				<td>${emp.userName}</td>
				<td>${emp.emailId}</td>
				<td>${emp.bloodGp}</td>
				<td>${emp.age}</td>
				<td>${emp.mobileNo}</td>
				<td>${emp.empId}</td>
				
				<td>
					<a href="/edit?id=${emp.id}" >Edit</a>
				</td>
				<td>
					<form action="/delete?id=${emp.id}" method="post">
						<input type="submit" value="Delete" style="background:none;border:0px;cursor: pointer;"/>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
<br/>
<!-- Click on this <strong><a href="/registration">Link</a></strong> to Back to the Registration page. -->
<br/>
<table style="margin-left: 70px; ">
<tr>
<button  style="margin-left: 120px"  tabindex="-1" ><a href="/registration" >   Register Page   </a></button>
</tr>
</table>
</body>
</html>