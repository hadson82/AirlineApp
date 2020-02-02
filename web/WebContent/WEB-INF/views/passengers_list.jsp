<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "java.util.*,
    com.airline.models.*"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/jpaStyles.css"/>
<title>List of Passengers</title>
</head>
<body>
	<h1>List of Flights</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date of birth</th>
			<th>Gender</th>
		</tr>
		
		<%
		
			List<Passenger> pList = (List<Passenger>)request.getAttribute("passengers_list");
		
			for(Integer i= 0; i<pList.size(); i++){
		%>
				<tr>
					<td><%=pList.get(i).getId() %></td>
					<td><%=pList.get(i).getFirstName() %></td>
					<td><%=pList.get(i).getLastName() %></td>
					<td><%=pList.get(i).getDob() %></td>
					<td><%=pList.get(i).getGender() %></td>
					
				</tr>
				
				<tr>
				
					<td colspan="5">No flights tickets yet.</td>
				
				</tr>
						
					<%
							} // for
					%>
	</table>
</body>
</html>