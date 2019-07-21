<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to MVC Application</title>
</head>
<body>
	<fieldset style="background: #3b5998; font-family: Klavika; ">
		<h1 style="margin-left: 50px;" ><font color="white">Welcome <i>${name}</i> ${type}</font></h1>	
	</fieldset>
	<center>
		<h2>Successfully Login to MVC Application</h2>
	</center>
	
	<a href="/LoginMVC/loginWS"> Login through webservice </a>
	
</body>
</html>