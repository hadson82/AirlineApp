<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>World Adventures Airlines</title>
<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/theme.css">
</head>
<body>

	<div class="container">
	
		<div class="title">Add passenger</div>
		
		<fieldset>
		
			<legend>Passenger details</legend>
		
			<form action = "AddPassenger" method="post">
			
			<div class="inputField">
			
				<label for="first-name" class="inputLabel">First name: </label> 
				<input name="first-name" type="text">
			
			</div>
			
			<div class="inputField">
			
				<label for="last-name" class="inputLabel">Last name: </label> 
				<input name="last-name" type="text">
			
			</div>
			
			<div class="inputField">
			
				<label for="dob" class="inputLabel">Date of birth: </label> 
				<input name="dob" type="text">
			
			</div>
			
			<div class="inputField">
			
				<label for="first-name" class="inputLabel">Gender: </label> 
				<select name="gender" type="text">
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
			
			</div>
			
			</fieldset>
			
			<div class="inputField" id="submitField">
				<input id="submitBtn" type="submit" value="Add new passenger"></input>
			</div>
			
			</form>
			
		
	</div>
</body>
</html>