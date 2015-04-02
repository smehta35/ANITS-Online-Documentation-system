<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME!</title>

<style type="text/css">
    #tfheader{
		background-color:#c3dfef;
		text-align:center;
	}
	#tfnewsearch{
		float:right;
		padding:20px;
	
	text-align:right
	}
	#tftextinput{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3; border-right:0px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:220px;
    float:left;
    padding:7px;	      
}
	#tfbutton {
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #0076a3; border-right:0px;
		background: #0095cd;
		background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
		background: -moz-linear-gradient(top,  #00adee,  #0078a5);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
	#tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
		background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	}
	/* Fixes submit button height problem in Firefox */
	#tfbutton::-moz-focus-inner {
	  border: 0;
	}
	#tfclear{
		clear:both;
	}
	#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#auto-style1 {
	text-align: center;
	color: #C74444;
}
#auto-style3 {
	border-left: 1px solid #0076a3;
	border-top: 1px solid #0076a3;
	border-bottom: 1px solid #0076a3;
	padding: 5px 15px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	border-top-left-radius: 5px 5px;
	border-bottom-left-radius: 5px 5px;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: 0px;
	margin-left: 0;
	margin-right: 0;
	margin-top: 0;
}
</style>
</head>
<body
	<!-- HTML for SEARCH BAR -->
	<div id="tfheader">
	<h1 style="color:#9999FF">ONLINE DOCUMENTATION SYSTEM</h1>
	<div align="right">
	
	<a href="login">logout</a>
	</div>
	
		<form id="tfnewsearch" method="get" action="http://www.google.com">
			<input type="text" class="auto-style3" name="q" size="21" maxlength="120"/ placeholder="search"/>
		<input type="submit" value="search" id="tfbutton"/>
		</form>
	<div class="tfclear"></div>
	</div>
	<!--css needed-->
	
	<!--	<table align="left" bgcolor="#CCCCFF">
		<col span="2"/>-->
		<div id="nav">		
		
		
			<form method="post" action="home.jsp">
				<button name="Abutton1" id="tfbutton">home</button>
			</form>
			
		

		<input name="File1" type="file"/>
		<form method="post" action="home.jsp">
				<button name="Abutton2" id="tfbutton">new</button>
			</form>
			
		

	
	<form method="post" action="home.jsp">
				<button name="Abutton3" id="tfbutton">view</button>
			</form>
		

		</div>
		<div id="section">
		
			<p>
		<textarea name="TextArea1" cols="100" rows="100"></textarea></p>
</div>
		
		
</body>

</html>
