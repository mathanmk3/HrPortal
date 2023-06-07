<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>

#loginBtn {
  background-color: #eb0c0c;
  color: white;
  padding: 10px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 5%;
}

#userName{

  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

#password{

  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

h1 {
	padding: 30px;
}

body {
  background-color: #615f5f;
}

</style>

</head>


<body>
<form action="login" method="post">

<h1 style="text-align: center;">Hr Managment Portal</h1>

<div style="text-align: center;">
<tr>
<td >UserName</td><br>
<td><input id="userName" type="text" name="username" placeholder="Enter UserName"/></td>
</tr>
<br>
<tr>
<td>Password</td><br>
<td><input id="password" type="password" name="password" placeholder="Enter Password" /></td>
</tr>
<br>
<input id=loginBtn type="submit" value="Login" />
New User ?<a href="register"> Register </a>

</form>

<c:if test="${not empty error}">
    <div style="text-align: center;">
    	<b>InValid User and password</b>
    </div>
</c:if>
</div>

</body>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>




</html>