<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME!!</title>
<h1 align='center'>Welcome to Document Management System</h1>
 <script src="WEB-INF/resources/js/js.js"></script>
 
        <style type="text/css">
            
        @import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

*{margin:0;padding:0;}

body{
  background:#567;
  font-family:'Open Sans',sans-serif;
}

.button{
  width:100px;
  background:#3399cc;
  display:block;
  margin:0 auto;
  margin-top:1%;
  padding:10px;
  text-align:center;
  text-decoration:none;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}

.button:hover{
  background:#2288bb;
}

#login{
  width:400px;
  margin:0 auto;
  margin-top:8px;
  margin-bottom:2%;
  transition:opacity 1s;
  -webkit-transition:opacity 1s;
}

#triangle{
  width:0;
  border-top:12x solid transparent;
  border-right:12px solid transparent;
  border-bottom:12px solid #3399cc;
  border-left:12px solid transparent;
  margin:0 auto;
}
#error{
    text-decoration:#D41313;
}
#login h1{
  background:#3399cc;
  padding:20px 0;
  font-size:140%;
  font-weight:300;
  text-align:center;
  color:#fff;
}

form{
  background:#f0f0f0;
  padding:6% 4%;
}

input[type="email"],input[type="password"]{
  width:92%;
  background:#fff;
  margin-bottom:4%;
  border:1px solid #ccc;
  padding:4%;
  font-family:'Open Sans',sans-serif;
  font-size:95%;
  color:#555;
}

input[type="submit"]{
  width:100%;
  background:#3399cc;
  border:0;
  padding:4%;
  font-family:'Open Sans',sans-serif;
  font-size:100%;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}

input[type="submit"]:hover{
  background:#2288bb;
}
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
$('#submit').click(function(){
var username=$('#email').val();
var password=$('#password').val();

if(username ==="")
{//alert("User Name should not be blank..");
$('#dis').slideDown().html("<span>Username should not be blank</span>");
return false;
}
if(password ==="")
{
    //  alert("Password should not be blank");
$('#dis').slideDown().html('<span id="error">Password should not be blank</span>');
return false;
}
else if(password.length<8)
{
  $('#dis').slideDown().html('<span id="error">Password should be at least 8 characters</span>');
return false;  
}
});
});
</script>
</head>
<body>
    <div id="login">
  <div id="triangle"></div>
  <h1>Sign in</h1>
	<form method="post" action="/document-management-system/login">
		<table>
			
			<tr> <label id="dis"></label><br>
				<td>User Id</td>
				<td><input type="email" placeholder='Email' name="userId" id='email'/></td>
			</tr>
                       
			<tr>  <label id="dis"></label><br>
				<td>Password</td>
				<td><input type="password" placeholder='Password' name="Password" id='password' /></td>
			</tr>
			<tr>
                            <td align="centre"><input type="submit" value="Login" id='submit' /></td>
			</tr>
                        
                            <tr><td><a href="register">click</a></td></tr>
		</table>
	</form>
    </div>
</body>
</html>