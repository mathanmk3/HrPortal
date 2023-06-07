<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="headerfooter.jsp" />

<jsp:include page="menu.jsp" />


<jsp:include page="footer.jsp" />
<style>
#userTable {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 50%;
}

#userTable td, #userTable th {
	border: 1px solid #ddd;
	padding: 8px;
}

#userTable tr:nth-child(even) {
	background-color: #f2f2f2;
}

#userTable tr:hover {
	background-color: #ddd;
}

#userTable th {
	padding-top: 6px;
	padding-bottom: 6px;
	text-align: left;
	background-color: #04AA6D;
	color: white;
}


</style>

<body>
<div class="col py-3">
	<table id="userTable">
		<tr>
			<th style="display: none">userID</th>
			<th>FirstName</th>
			<th>Last Name</th>
			<th>age</th>
			<th>gender</th>
			<th>Address</th>
			<th>Edit</th>
			<th>Delete</th>
			
			
			<c:forEach var="info" items="${userInfo}">
				<tr>
					<td style="display: none" id=userId>${info.userId}</td>
					<td id=firstName>${info.firstName}</td>
					<td id=lasttName>${info.lasttName}</td>
					<td id=age>${info.age}</td>
					<td id=gender>${info.gender}</td>
					<td id=address>${info.address}</td>
					<td id=edit><a href="edituser?id=${info.userId}"> <button type="button" class="btn btn-info">Edit</button> </a></td>
					<td id=delete><a href="deleteuser?id=${info.userId}"> <button type="button" class="btn btn-secondary">Delete</button> </a></td>
				</tr>
			</c:forEach>
	</table>
</div>
</body>

</html>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<script>

function getUser(){
	console.log("tbale")
	  alert("Table is loaded");
	
	var tableheader =" <tr> <th>Company</th> <th>Contact</th> <th>Country</th> </tr>"


}

/* $( document ).ready(function() {

	
	var tableContent = getUserTable();
	
	var tableheader =" <tr> <th>FirstName</th> <th>Last Name </th> <th>age</th> <th>gender</th> <th>Address</th> </tr>"
		console.log(tableheader)
		document.getElementById("userTable").innerHTML=tableheader
		

});

function getUserTable(){
	

	
} */


</script>