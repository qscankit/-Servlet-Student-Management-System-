<!DOCTYPE html>

<%@page import="com.ty.student_management_project.dto.Student"%>
<%@page import="com.ty.student_management_project.service.StudentService"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Due Student</title>
    <style>
        .sec1{
            background-color: grey;
            padding: 40px;
            border: 10px double black;
        }
        h1{
            display: flex;
            justify-content: center;
            text-decoration: underline;
            font-size: 30px;
            color: black;
            margin-bottom: 60px;
        }
        .field1{
            position: relative;
            bottom: 40px;
        }
        legend{
            font-size: 20px;
            text-align: center;
            font-weight: bold;
            color: rgb(3, 3, 97);
            margin-bottom: 10px;
        }
       
        .block{
            display: flex;
        
            position: relative;
            left: 90px;
            top: -20px;   
        }

       
        a{  
            display: inline-block;
            position: relative;
            width: 100px;
            border: 1px solid black;
            left: 300px;
            color: black;
            text-decoration: none;
            text-align: center;
            background-color: aliceblue;
            padding: 7px;
        }
        

    </style>
</head>
<body>

	<form action="student_due.jsp">
		
		
		<% 
		StudentService studentService = new StudentService();
		int roll = Integer.parseInt(request.getParameter("roll"));
		Student student = studentService.getByAll(roll);
		double duefees=student.getFee()-student.getPaid();
		%>
	</form>
    <header>
    
    <section class="sec1">
		<%if(student!=null){ %>
		<%if(student.getRoll()==roll){ %>
        <h1>Due Student</h1>
        <form action="#">
            <fieldset style="border: 3px dashed black;" class="field1">
                <legend >Personal Details</legend>
                <label for="name">Name :</label><input class="block" id="name" type="text" name="name" readonly="readonly"  value=<%= student.getName()%>><br><br>
                <label for="email">Email :</label><input class="block" id="email" type="text" name="email" readonly="readonly"  value=<%= student.getEmail()%>><br><br>
                <label for="roll">Roll No :</label><input class="block"  id="roll" type="number" name="roll" readonly="readonly"  value=<%=student.getRoll()%>><br><br>
                <label for="course">Course :</label><input class="block" id="course" type="text" name="course" readonly="readonly"  value=<%=student.getCourse()%>><br><br>
                <label for="fee">Fee  :</label><input class="block" id="fee" type="number" name="fee" readonly="readonly"  value=<%=student.getFee()%>><br><br>
                <label for="paid">Paid :</label><input class="block" id="paid" type="number" name="paid" readonly="readonly"  value=<%=student.getPaid()%>><br><br>
                <label for="due">Due :</label><input class="block" id="due" type="number" name="due" readonly="readonly"  value=<%=duefees%>><br><br>
            </fieldset>
                <a href="student_due.jsp">Back</a>

         
        </form>
		<%} %>
		<%} %>
		<%if(student==null){ %>
		<h1 style='color:black'>Invalid Roll No...</h1>

                <a href="student_due.jsp">Back</a>
                <% }%>
               
    </section>
    </header>
</body>
</html>