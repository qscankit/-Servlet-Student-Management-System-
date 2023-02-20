<%@page import="com.ty.student_management_project.dto.Accountant"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.student_management_project.service.AccountantService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: black;font-size: 30px;text-align:  center;">Accountant Display Table</h1>
	<% AccountantService accountantService = new AccountantService();
	   List<Accountant> accountants = accountantService.displayAccountant();
	%>
	
	<table border="2">
		<tr class="colhead">
			<th>Name</th>
			<th>Email</th>
			<th>Contact No.</th>
			<th>Password</th>
		</tr>
		
		<%for(Accountant accountant:accountants){ %>
			<tr>
				<td><%=accountant.getName() %></td>
				<td><%=accountant.getEmail() %></td>
				<td><%=accountant.getContact() %></td>
				<td><%=accountant.getPassword() %></td>
			</tr>
		<%} %>
	</table>
	<a href="admin_section.jsp">Back</a>
</body>
</html>