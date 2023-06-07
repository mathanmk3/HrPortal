<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body {
    	background-color: #615f5f;
    
}

*[role="form"] {
    max-width: 630px;
    padding: 55px;
    margin: auto;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}



</style>

</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<body style="background-color:#615f5f;">
<div class="container">
            <form class="form-horizontal" role="form">
                <h2>Registration</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">UserName</label>
                    <div class="col-sm-9">
                        <input type="text" id="UserName" placeholder="UserName" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" id="Password" placeholder="Password" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="FirstName" class="col-sm-3 control-label">FirstName* </label>
                    <div class="col-sm-9">
                        <input type="text" id="FirstName" placeholder="FirstName" class="form-control" name= "FirstName">
                    </div>
                </div>
                <div class="form-group">
                    <label for="LastName" class="col-sm-3 control-label">LastName*</label>
                    <div class="col-sm-9">
                        <input type="text" id="LastName" placeholder="LastName" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="FullName" class="col-sm-3 control-label">FullName*</label>
                    <div class="col-sm-9">
                        <input type="text" id="FullName" placeholder="FullName" class="form-control">
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="age" class="col-sm-3 control-label">age*</label>
                    <div class="col-sm-9">
                        <input type="number" id="age" placeholder="age" class="form-control">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="age" class="col-sm-3 control-label">gender*</label>
                    <div class="col-sm-9">
                        <input type="text" id="gender" placeholder="gender" class="form-control">
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="age" class="col-sm-3 control-label">Address*</label>
                    <div class="col-sm-9">
                        <input type="text" id="Address" placeholder="Address" class="form-control">
                    </div>
                </div>
                
                
               <!--  <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth*</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Phone number </label>
                    <div class="col-sm-9">
                        <input type="phoneNumber" id="phoneNumber" placeholder="Phone number" class="form-control">
                        <span class="help-block">Your phone number won't be disclosed anywhere </span>
                    </div>
                </div>
                <div class="form-group">
                        <label for="Height" class="col-sm-3 control-label">Height* </label>
                    <div class="col-sm-9">
                        <input type="number" id="height" placeholder="Please write your height in centimetres" class="form-control">
                    </div>
                </div>
                 <div class="form-group">
                        <label for="weight" class="col-sm-3 control-label">Weight* </label>
                    <div class="col-sm-9">
                        <input type="number" id="weight" placeholder="Please write your weight in kilograms" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleRadio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="maleRadio" value="Male">Male
                                </label>
                            </div>
                        </div>
                    </div>
                </div>  --><!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block" onclick="register()">Register</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->
  </body>
</html>


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script>

function register(){
	console.log("Refister")
	const userName = document.getElementById("UserName").value;
	const password = document.getElementById("Password").value;
	const firstName = document.getElementById("FirstName").value;
	const LastName = document.getElementById("LastName").value;
	const age = document.getElementById("age").value;
	const gender = document.getElementById("gender").value;
	const address = document.getElementById("Address").value;
	
	if (userName ==''||password ==''||firstName==''||LastName==''||age==''||gender==''){
		console.log("emptyt")
	}
	
	var dataObj = {
	    	"userName":userName,
	    	"password":password,
	    	"firstName":firstName,
	    	"lastName":LastName,
	    	"age":age,
	    	"gender":gender,
	    	"address":address
	    	
	    }
	console.log(dataObj)
	$.ajax({
	    type: "POST",
	    url: "register",
        contentType: "application/json",
	    data:JSON.stringify(dataObj),
	    success: function(obj){
	       console.log(obj)
	    }
	});
}
</script>