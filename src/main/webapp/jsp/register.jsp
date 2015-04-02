<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
          <h1><span style="font-family: verdana,arial; color: #700000; font-size: 1.00em; font-weight:bold;"><font color="#700000"> 
            <p align="center">Online Documentation System</p></font></span></h1></head>
	<div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 550px; background-color: #FFFFFF; border: 5px solid #0361A8; border-radius: 10px; box-shadow: 0px 0px 8px #700000; margin: 50px auto auto;">
	<div style="background: #cc3399; border-radius: 5px 10px 0px 0px; padding: 25px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">Enter your login and password</span></div>
        <div style=" padding : 2px"></div>
	<style type="text/css" scoped>
	td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; width:90%; }
	input[type="button"], input[type="reset"], input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	table.center { margin-left:auto; margin-right:auto; }
	.error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js">
</script>
        <script type="text/javascript">
$(document).ready(function(){
$('#submit').click(function(){
var username1=$('#first_name').val();
var username2=$('#last_name').val();
var user_id=$('#email').val();
var password=$('#password').val();
var reenter=$('#repassword').val();
if(username1==="")
{
$('#first_name').slideDown().html("<span>First name should not be blank</span>");
return false;
}
if(username2 ==="")
{
$('#last_name').slideDown().html("<span>Last name should not be blank</span>");
return false;
}
if(user_id==="")
{
$('#email').slideDown().html("<span>user id should not be blank</span>");
return false;
}
if(user_id.length<8)
{$('#email').slideDown().html('<span id="error">Password should be at least 8 characters</span>');
return false; }
if(password===""||user_id===password)
{
$('#password').slideDown().html('<span id="error">Password should not be blank</span>');
return false;
}
if(reenter==="")
{
$('#repassword').slideDown().html("<span>Please Re-enter password!</span>");
return false;
}
});
});
</script>
    </head>
    <body>
       <form method="post" action="/document-management-system/register">
           <div>	<table class='center'>
    <label id="first_name"></label><br>
<tr><td>First name:</td><td><input type="text" name="firstname" id="first_name"></td></tr>
 <label id="last_name"></label><br>
<tr><td>last name:</td><td><input type="text" name="lastname" id="last_name"></td></tr>
 <label id="email"></label><br>
<tr><td>User Id</td>
    <td><input type="text" name="userId" id="email"/></td></tr>
<label id="password"></label><br>
<tr><td>Password:</td><td><input type="password" name="password" id="password"></td></tr>
<label id="repassword"></label><br>
  <tr><td>re-enter Password:</td><td><input type="password" name="reenter" id="repassword"></td></tr> 
<tr><td>&nbsp;<input type="submit" value="Register" id="submit"/></td></tr>

</table>
</form>
            </div>
	</form>
    </body>
</html>
