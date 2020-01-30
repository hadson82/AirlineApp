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

	  <%
	    if(request.getAttribute("errors") !=null){
	    %>
		<fieldset id="error-field-set">
			<legend align="center">Errors</legend>
				<ul>
					<%if (request.getAttribute("firstName_errors") !=null){ %>
					<li class="error">First name error</li>
					<%
	    				}
					%>
					
					<%if (request.getAttribute("lastName_errors") !=null){ %>
					<li class="error">Last name error</li>
					<%
	    				}
					%>
					
					<%if (request.getAttribute("date_format_error") !=null) {%>
					<li class="error">Date of birth invalid</li>
					<%
	    				}
					%>
				</ul>
		</fieldset>
	  <%
	    }
	  %>
		
		<fieldset>
		
			<legend align="center">Passenger details</legend>
		
			<form action = "AddPassenger" method="post">
			
			<div class="inputField">
			
				<label for="first-name" class="inputLabel">First name: </label> 
				<input name="first-name" type="text" value="<%= request.getAttribute("first_name") %>">
			
			</div>
			
			<div class="inputField">
			
				<label for="last-name" class="inputLabel">Last name: </label> 
				<input name="last-name" type="text" value="<%= request.getAttribute("last_name") %>">
			
			</div>
			
			<div class="inputField">
			
				<label for="dob" class="inputLabel">Date of birth: </label> 
				<input name="dob" type="text"  value="<%= request.getAttribute("dob") %>">
			
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
