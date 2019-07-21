<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login Form</title>

</head>
<body>
	<fieldset style="background: #3b5998; font-family: Klavika; ">
		<h1 style="margin-left: 50px;" ><font color="white">Welcome to MVC Application</font></h1>	
	</fieldset>
	
	<div  style="margin-top: 70px;"></div>
	
	<fieldset style="width: 600px; margin: auto; top-align: 80px; background: white;">
	<form:form action="submitDB" name="submitForm" method="POST" onsubmit="return validateform()" >
		<div align="left" style="margin-left: 20px;">
			<h3>${msg}</h3>
			<hr/>
		</div>
		<div style="margin-top: 20px; margin-left: 40px; margin-bottom: 40px">
			<table>
				<tr>
					<td><label for="name"> User Name: </label> </td>
					<td><input type="text" name="userName" /></td>
				</tr>
				<tr>
					<td><label for="name"> Password: </label></td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><font color="white"><input type="submit" name="submitDB" value="Log In" style="font-family: Klavika; color: white;"/></font></td>
				</tr>
			</table>
			<div style="color: red">${error}</div>
		</div>
	</form:form>
	</fieldset>
</body>

	<script>  
		function validateform(){
			var name=document.submitForm.userName.value;  
			var password=document.submitForm.password.value;  
		  
			if (name==null || name==""){
			  alert("User Name can't be blank.");  
			  return false;  
			}else if(password.length<4){
			  alert("Password must be at least 4 characters long.");
			  return false;
			}
		}
	</script>

	<style>
		body {
  			background: #E6E7EF;
		}		
		label {
			color: #51525B; 
			font-size: 18px;
		}
		input[type="text"] 
		{
    		width: 150px;
    		display: block;
    		margin-left: 10px;
    		margin-bottom: 2px;
		}
		input[type="password"] 
		{
    		width: 150px;
    		display: block;
    		margin-left: 10px;
    		margin-bottom: 2px;
		}
		input[type="submit"] 
		{
  			width: 160px;
    		font-size: 16px;
    		line-height: 30px;
    		margin-top: 16px;
    		margin-left: 8px;
    		background: #3b5998;
		}
		.button{
			font-color: white;
		}
	</style>  
</html>