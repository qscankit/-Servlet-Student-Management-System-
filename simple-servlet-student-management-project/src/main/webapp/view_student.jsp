<%@page import="com.ty.student_management_project.dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.student_management_project.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Students</title>
<style>

        body{
            background-image:url("rocks2-450x340.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            
        }
        .back{	
            display: flex; 
            position: relative;
            top: 10px;
            justify-content: center;
            border: 2px solid white;
            color: white;
            font-size: 25px
           
        }
        h1{
            border-bottom: 2px solid black;
        }

    </style>
</head>
<body>
	<h1 style="color: white; font-size: 30px;text-align: center;">Student Display Table</h1>
	
	<% StudentService studentService = new StudentService();
		 List<Student> students = studentService.dispalyStudent();
	%>
	
	<table border="2" style="color: aqua">
		<tr class="col_head">
			<th>Roll No.</th>
			<th>Name</th>
			<th>Email</th>
			<th>Contact No.</th>
			<th>D.O.B</th>
			<th>Course</th>
			<th>Fee</th>
			<th>Paid</th>
			<th>Due</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>PinCode</th>
			<th>Country</th>
			<th>Delete</th>
		</tr>
		
		<% for(Student student1:students){ %>
		<tr>
			<td><%=student1.getRoll() %></td>
			<td><%=student1.getName() %> </td>
			<td><%=student1.getEmail()%></td>
			<td><%=student1.getContact() %></td>
			<td><%=student1.getDob() %></td>
			<td><%=student1.getCourse() %></td>
			<td><%=student1.getFee() %></td>
			<td><%=student1.getPaid() %></td>
			<td><%=student1.getDue() %></td>
			<td><%=student1.getAddress() %></td>
			<td><%=student1.getCity() %></td>
			<td><%=student1.getState() %></td>
			<td><%=student1.getPincode() %></td>
			<td><%=student1.getCountry() %></td>
			<td><button><a href="delete_student?roll=<%=student1.getRoll()%> ">Delete</a></button></td>
		</tr>	
		<%} %>
	</table>
	
	<a class="back" href="accountant_section.jsp">Back</a>
</body>
</html>